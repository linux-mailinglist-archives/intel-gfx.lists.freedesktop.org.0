Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF94C3370B
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 01:07:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAEB010E688;
	Wed,  5 Nov 2025 00:07:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 10055242dc62 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B30910E685;
 Wed,  5 Nov 2025 00:07:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8657335566426738374=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/gt=3A_Rename_MC?=
 =?utf-8?q?FG=5FMCR=5FSELECTOR_to_STEER=5FSEMAPHORE?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nitin Gote" <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 05 Nov 2025 00:07:22 -0000
Message-ID: <176230124240.17802.16388666605605829514@10055242dc62>
X-Patchwork-Hint: ignore
References: <20251104111840.2110000-1-nitin.r.gote@intel.com>
In-Reply-To: <20251104111840.2110000-1-nitin.r.gote@intel.com>
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

--===============8657335566426738374==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Rename MCFG_MCR_SELECTOR to STEER_SEMAPHORE
URL   : https://patchwork.freedesktop.org/series/156997/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17481_full -> Patchwork_156997v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_156997v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_156997v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_156997v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html

  
Known issues
------------

  Here are the changes found in Patchwork_156997v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-rkl:          NOTRUN -> [SKIP][3] ([i915#14544] / [i915#8411]) +1 other test skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-tglu-1:       NOTRUN -> [SKIP][4] ([i915#11078])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@fbdev@read:
    - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#14544] / [i915#2582])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@fbdev@read.html

  * igt@gem_busy@close-race:
    - shard-tglu-1:       NOTRUN -> [ABORT][6] ([i915#15193])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@gem_busy@close-race.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          NOTRUN -> [SKIP][7] ([i915#9323])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [PASS][8] -> [INCOMPLETE][9] ([i915#13356])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-dg2-6/igt@gem_ccs@suspend-resume.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-1/igt@gem_ccs@suspend-resume.html
    - shard-tglu-1:       NOTRUN -> [SKIP][10] ([i915#9323]) +1 other test skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][11] -> [INCOMPLETE][12] ([i915#12392] / [i915#13356])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][13] ([i915#8562])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-8/igt@gem_create@create-ext-set-pat.html

  * igt@gem_exec_balancer@parallel:
    - shard-tglu:         NOTRUN -> [SKIP][14] ([i915#4525])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#4525])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_balancer@sliced:
    - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#4812])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_capture@capture-invisible:
    - shard-glk10:        NOTRUN -> [SKIP][17] ([i915#6334]) +1 other test skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-glk10/igt@gem_exec_capture@capture-invisible.html

  * igt@gem_exec_reloc@basic-cpu-active:
    - shard-mtlp:         NOTRUN -> [SKIP][18] ([i915#3281]) +3 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@gem_exec_reloc@basic-cpu-active.html

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#3281]) +2 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@gem_exec_reloc@basic-cpu-gtt.html

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#3281]) +6 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-cpu-active.html

  * igt@gem_exec_reloc@basic-gtt-wc-active:
    - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#14544] / [i915#3281]) +1 other test skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-active.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-dg2:          [PASS][22] -> [DMESG-WARN][23] ([i915#14446])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-dg2-5/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-4/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][24] ([i915#4613])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#4613]) +3 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][26] ([i915#4613]) +3 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@random:
    - shard-mtlp:         NOTRUN -> [SKIP][27] ([i915#4613])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@gem_lmem_swapping@random.html

  * igt@gem_mmap_gtt@basic-small-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][28] ([i915#4077]) +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@gem_mmap_gtt@basic-small-copy.html

  * igt@gem_mmap_gtt@coherency:
    - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#4077]) +2 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@gem_mmap_gtt@coherency.html

  * igt@gem_mmap_offset@clear@smem0:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][30] ([i915#12964]) +6 other tests dmesg-warn
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_mmap_offset@clear@smem0.html

  * igt@gem_mmap_wc@write-gtt-read-wc:
    - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#4083])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-8/igt@gem_mmap_wc@write-gtt-read-wc.html

  * igt@gem_mmap_wc@write-wc-read-gtt:
    - shard-rkl:          [PASS][32] -> [DMESG-WARN][33] ([i915#12964]) +6 other tests dmesg-warn
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@gem_mmap_wc@write-wc-read-gtt.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-2/igt@gem_mmap_wc@write-wc-read-gtt.html

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#3282])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@gem_partial_pwrite_pread@write-uncached.html

  * igt@gem_pread@exhaustion:
    - shard-glk:          NOTRUN -> [WARN][35] ([i915#2658])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-glk5/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-random:
    - shard-mtlp:         NOTRUN -> [SKIP][36] ([i915#3282])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@gem_pwrite@basic-random.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-rkl:          NOTRUN -> [TIMEOUT][37] ([i915#12964])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-rkl:          NOTRUN -> [TIMEOUT][38] ([i915#12917] / [i915#12964]) +1 other test timeout
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-rkl:          [PASS][39] -> [TIMEOUT][40] ([i915#12917] / [i915#12964])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@gem_pxp@protected-raw-src-copy-not-readible.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#4270])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-8/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_readwrite@beyond-eob:
    - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#3282]) +3 other tests skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@gem_readwrite@beyond-eob.html

  * igt@gem_readwrite@read-bad-handle:
    - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#14544] / [i915#3282])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_readwrite@read-bad-handle.html

  * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][44] ([i915#8428])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html

  * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#5190] / [i915#8428]) +2 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html

  * igt@gem_tiled_pread_basic:
    - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#4079])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@gem_tiled_pread_basic.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#3297])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][48] ([i915#3297])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-10/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@relocations:
    - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#3281] / [i915#3297])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@gem_userptr_blits@relocations.html

  * igt@gem_workarounds@suspend-resume:
    - shard-glk:          NOTRUN -> [INCOMPLETE][50] ([i915#13356] / [i915#14586])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-glk6/igt@gem_workarounds@suspend-resume.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-rkl:          [PASS][51] -> [INCOMPLETE][52] ([i915#13356])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@gem_workarounds@suspend-resume-context.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-3/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-rkl:          NOTRUN -> [SKIP][53] +10 other tests skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@gen7_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#2527]) +1 other test skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-tglu-1:       NOTRUN -> [SKIP][55] ([i915#2527] / [i915#2856]) +2 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@gen9_exec_parse@bb-secure.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#14544] / [i915#2527]) +1 other test skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglu:         NOTRUN -> [SKIP][57] ([i915#2527] / [i915#2856]) +2 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_drm_fdinfo@busy-check-all@vecs0:
    - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#11527]) +7 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-8/igt@i915_drm_fdinfo@busy-check-all@vecs0.html

  * igt@i915_drm_fdinfo@most-busy-check-all@vecs0:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#14073]) +7 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@i915_drm_fdinfo@most-busy-check-all@vecs0.html

  * igt@i915_module_load@reload-no-display:
    - shard-snb:          [PASS][60] -> [DMESG-WARN][61] ([i915#14545])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-snb1/igt@i915_module_load@reload-no-display.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-snb7/igt@i915_module_load@reload-no-display.html

  * igt@i915_module_load@resize-bar:
    - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#6412])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@i915_module_load@resize-bar.html
    - shard-tglu-1:       NOTRUN -> [SKIP][63] ([i915#6412])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-tglu:         NOTRUN -> [SKIP][64] ([i915#8399])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-tglu-1:       NOTRUN -> [SKIP][65] ([i915#8399])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-dg2:          [PASS][66] -> [ABORT][67] ([i915#15131])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-tglu:         [PASS][68] -> [WARN][69] ([i915#13790] / [i915#2681]) +1 other test warn
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-fence.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rps@thresholds:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#11681])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@i915_pm_rps@thresholds.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [PASS][71] -> [SKIP][72] ([i915#7984])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-mtlp-6/igt@i915_power@sanity.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-mtlp-2/igt@i915_power@sanity.html

  * igt@i915_query@hwconfig_table:
    - shard-tglu:         NOTRUN -> [SKIP][73] ([i915#6245])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@i915_query@hwconfig_table.html

  * igt@i915_selftest@live@workarounds:
    - shard-dg2:          [PASS][74] -> [DMESG-FAIL][75] ([i915#12061]) +1 other test dmesg-fail
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-dg2-7/igt@i915_selftest@live@workarounds.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-7/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][76] ([i915#4817] / [i915#7443])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-10/igt@i915_suspend@basic-s3-without-i915.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-rkl:          [PASS][77] -> [ABORT][78] ([i915#15131])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@i915_suspend@fence-restore-untiled.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-4/igt@i915_suspend@fence-restore-untiled.html

  * igt@i915_suspend@forcewake:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][79] ([i915#4817])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-glk10/igt@i915_suspend@forcewake.html

  * igt@i915_suspend@sysfs-reader:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][80] ([i915#4817])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#4212])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_async_flips@async-flip-suspend-resume:
    - shard-dg1:          [PASS][82] -> [DMESG-WARN][83] ([i915#4423]) +2 other tests dmesg-warn
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-dg1-13/igt@kms_async_flips@async-flip-suspend-resume.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg1-12/igt@kms_async_flips@async-flip-suspend-resume.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-glk10:        NOTRUN -> [SKIP][84] ([i915#1769])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-glk10/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition:
    - shard-dg2:          [PASS][85] -> [FAIL][86] ([i915#5956])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-dg2-4/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [FAIL][87] ([i915#5956])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
    - shard-tglu-1:       NOTRUN -> [SKIP][88] ([i915#5286]) +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#5286]) +3 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][90] ([i915#5286]) +4 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [PASS][91] -> [FAIL][92] ([i915#5138])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#3638]) +2 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-mtlp:         NOTRUN -> [SKIP][94] +3 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#4538] / [i915#5190])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#14544]) +26 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#14098] / [i915#6095]) +42 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][99] ([i915#6095]) +19 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_ccs@crc-primary-basic-y-tiled-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][100] ([i915#12805])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-10/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#6095]) +119 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg1-18/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-4.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#6095]) +11 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-4/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][103] ([i915#12313]) +1 other test skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#12313]) +1 other test skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#10307] / [i915#6095]) +105 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][106] ([i915#6095]) +49 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#6095]) +4 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-c-edp-1.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#6095]) +47 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-2/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition:
    - shard-tglu-1:       NOTRUN -> [SKIP][109] ([i915#3742])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#11151] / [i915#7828]) +1 other test skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html

  * igt@kms_chamelium_edid@dp-mode-timings:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#11151] / [i915#7828]) +5 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_chamelium_edid@dp-mode-timings.html

  * igt@kms_chamelium_edid@hdmi-mode-timings:
    - shard-tglu:         NOTRUN -> [SKIP][112] ([i915#11151] / [i915#7828]) +6 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_chamelium_edid@hdmi-mode-timings.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#11151] / [i915#14544] / [i915#7828]) +2 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][114] ([i915#11151] / [i915#7828]) +3 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_color@ctm-max:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#12655] / [i915#14544])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_color@ctm-max.html

  * igt@kms_color@deep-color:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#12655] / [i915#3555])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-7/igt@kms_color@deep-color.html

  * igt@kms_color@gamma:
    - shard-rkl:          [PASS][117] -> [SKIP][118] ([i915#12655] / [i915#14544])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@kms_color@gamma.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_color@gamma.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-tglu:         NOTRUN -> [SKIP][119] ([i915#3116] / [i915#3299])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-10/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#3116])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#7118] / [i915#9424])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_content_protection@legacy.html
    - shard-tglu-1:       NOTRUN -> [SKIP][122] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#13049]) +4 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-10/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42:
    - shard-tglu-1:       NOTRUN -> [FAIL][124] ([i915#13566]) +1 other test fail
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-128x42.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][125] ([i915#13566])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#3555]) +2 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#13049])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][128] ([i915#13049])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#3555] / [i915#8814])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-tglu:         NOTRUN -> [SKIP][130] ([i915#3555]) +1 other test skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_edge_walk@128x128-top-edge:
    - shard-rkl:          [PASS][131] -> [SKIP][132] ([i915#14544]) +43 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@kms_cursor_edge_walk@128x128-top-edge.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_cursor_edge_walk@128x128-top-edge.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][133] ([i915#9809])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk10:        NOTRUN -> [SKIP][134] +98 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-glk10/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#13046] / [i915#5354]) +1 other test skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#4103])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#4103] / [i915#4213])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - shard-rkl:          [PASS][138] -> [SKIP][139] ([i915#11190] / [i915#14544]) +1 other test skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#4103])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-tglu-1:       NOTRUN -> [SKIP][141] ([i915#1769] / [i915#3555] / [i915#3804])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][142] ([i915#3804])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#3804])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#11190] / [i915#14544])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-tglu:         NOTRUN -> [SKIP][145] ([i915#3840])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-10/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#3555] / [i915#3840])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#3840] / [i915#9053])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-rkl:          [PASS][148] -> [SKIP][149] ([i915#14544] / [i915#14561])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@kms_fbcon_fbt@fbc-suspend.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_fbcon_fbt@psr:
    - shard-tglu-1:       NOTRUN -> [SKIP][150] ([i915#3469])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#3955]) +1 other test skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-tglu:         NOTRUN -> [SKIP][152] ([i915#2065] / [i915#4854])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@psr1:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#658])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_feature_discovery@psr1.html
    - shard-tglu-1:       NOTRUN -> [SKIP][154] ([i915#658])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_feature_discovery@psr1.html

  * igt@kms_feature_discovery@psr2:
    - shard-tglu:         NOTRUN -> [SKIP][155] ([i915#658])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-tglu-1:       NOTRUN -> [SKIP][156] ([i915#3637] / [i915#9934]) +5 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#9934]) +6 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][158] ([i915#3637] / [i915#9934]) +2 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#14544] / [i915#9934])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#14544] / [i915#3637]) +1 other test skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          NOTRUN -> [FAIL][161] ([i915#13027]) +1 other test fail
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-glk5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-panning:
    - shard-rkl:          [PASS][162] -> [SKIP][163] ([i915#14544] / [i915#3637]) +5 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@kms_flip@flip-vs-panning.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_flip@flip-vs-panning.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][164] ([i915#12745] / [i915#4839])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-glk10/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][165] ([i915#12745])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-glk10/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#2587] / [i915#2672]) +2 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#14544] / [i915#3555]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#2672] / [i915#3555] / [i915#8813]) +2 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#2672]) +4 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][170] ([i915#2672] / [i915#3555])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][171] ([i915#2587] / [i915#2672])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][172] ([i915#2672] / [i915#3555]) +2 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling:
    - shard-rkl:          [PASS][173] -> [SKIP][174] ([i915#14544] / [i915#3555]) +1 other test skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#2672] / [i915#3555]) +2 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][176] ([i915#2672] / [i915#8813])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          [PASS][177] -> [SKIP][178] ([i915#14544] / [i915#1849] / [i915#5354]) +5 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][179] ([i915#1825]) +2 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#8708]) +3 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][181] ([i915#5439])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#15102]) +2 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#15102])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#15102] / [i915#3458]) +3 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][185] ([i915#8708])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff:
    - shard-tglu-1:       NOTRUN -> [SKIP][186] +27 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglu:         NOTRUN -> [SKIP][187] +42 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#14544] / [i915#1849] / [i915#5354]) +19 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#9766])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
    - shard-glk:          NOTRUN -> [SKIP][190] +90 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-glk6/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#15102] / [i915#3023]) +13 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][192] ([i915#15102]) +7 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#5354]) +4 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#1825]) +17 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#15102]) +16 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html

  * igt@kms_hdr@invalid-hdr:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#3555] / [i915#8228])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_hdr@invalid-hdr.html
    - shard-tglu-1:       NOTRUN -> [SKIP][197] ([i915#3555] / [i915#8228])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][198] ([i915#3555] / [i915#8228])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_invalid_mode@overflow-vrefresh:
    - shard-rkl:          [PASS][199] -> [SKIP][200] ([i915#14544] / [i915#8826])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@kms_invalid_mode@overflow-vrefresh.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_invalid_mode@overflow-vrefresh.html

  * igt@kms_invalid_mode@zero-hdisplay:
    - shard-rkl:          [PASS][201] -> [SKIP][202] ([i915#14544] / [i915#3555] / [i915#8826])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@kms_invalid_mode@zero-hdisplay.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_invalid_mode@zero-hdisplay.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][203] ([i915#10656])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][204] ([i915#12339]) +1 other test skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#12339])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-tglu:         NOTRUN -> [SKIP][206] ([i915#6301])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-10/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_pipe_stress@stress-xrgb8888-yftiled:
    - shard-tglu:         NOTRUN -> [SKIP][207] ([i915#14712])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html

  * igt@kms_plane@plane-panning-bottom-right:
    - shard-rkl:          [PASS][208] -> [SKIP][209] ([i915#14544] / [i915#8825])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@kms_plane@plane-panning-bottom-right.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right.html

  * igt@kms_plane@plane-position-hole:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#14544] / [i915#8825])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_plane@plane-position-hole.html

  * igt@kms_plane_alpha_blend@alpha-7efc:
    - shard-rkl:          [PASS][211] -> [SKIP][212] ([i915#14544] / [i915#7294]) +1 other test skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@kms_plane_alpha_blend@alpha-7efc.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-7efc.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-glk:          NOTRUN -> [FAIL][213] ([i915#10647] / [i915#12177])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-glk5/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][214] ([i915#10647]) +1 other test fail
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-glk5/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html

  * igt@kms_plane_alpha_blend@coverage-7efc:
    - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#14544] / [i915#7294])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_plane_alpha_blend@coverage-7efc.html

  * igt@kms_plane_multiple@tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][216] ([i915#14259])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_plane_multiple@tiling-4.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#6953] / [i915#9423])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:
    - shard-rkl:          [PASS][218] -> [SKIP][219] ([i915#14544] / [i915#3555] / [i915#8152])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5:
    - shard-rkl:          [PASS][220] -> [SKIP][221] ([i915#12247] / [i915#14544] / [i915#6953] / [i915#8152])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling:
    - shard-rkl:          [PASS][222] -> [SKIP][223] ([i915#12247] / [i915#14544] / [i915#8152]) +6 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:
    - shard-rkl:          [PASS][224] -> [SKIP][225] ([i915#12247] / [i915#14544]) +4 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-20x20:
    - shard-rkl:          [PASS][226] -> [SKIP][227] ([i915#14544] / [i915#6953] / [i915#8152])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20.html

  * igt@kms_pm_backlight@fade:
    - shard-rkl:          NOTRUN -> [SKIP][228] ([i915#5354])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_pm_backlight@fade.html
    - shard-tglu-1:       NOTRUN -> [SKIP][229] ([i915#9812])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][230] ([i915#9812])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#4281])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_pm_dc@dc9-dpms.html
    - shard-tglu-1:       NOTRUN -> [SKIP][232] ([i915#4281])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-tglu:         NOTRUN -> [SKIP][233] ([i915#8430])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          [PASS][234] -> [SKIP][235] ([i915#15073]) +2 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-6/igt@kms_pm_rpm@dpms-lpsp.html
    - shard-rkl:          [PASS][236] -> [SKIP][237] ([i915#15073])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@fences-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#14544] / [i915#1849])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_pm_rpm@fences-dpms.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          NOTRUN -> [SKIP][239] ([i915#14544] / [i915#15073])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [PASS][240] -> [SKIP][241] ([i915#14544] / [i915#15073])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@system-suspend-idle:
    - shard-rkl:          [PASS][242] -> [ABORT][243] ([i915#15132])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-2/igt@kms_pm_rpm@system-suspend-idle.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-4/igt@kms_pm_rpm@system-suspend-idle.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:
    - shard-tglu:         NOTRUN -> [SKIP][244] ([i915#11520]) +5 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#11520] / [i915#14544])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#11520]) +4 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:
    - shard-glk10:        NOTRUN -> [SKIP][247] ([i915#11520]) +1 other test skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-glk10/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][248] ([i915#11520]) +3 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-glk:          NOTRUN -> [SKIP][249] ([i915#11520]) +2 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-glk6/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#11520]) +1 other test skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#9683])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-psr-cursor-render:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#1072] / [i915#9732]) +2 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_psr@fbc-psr-cursor-render.html

  * igt@kms_psr@fbc-psr2-primary-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][253] ([i915#9732]) +15 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_psr@fbc-psr2-primary-mmap-gtt.html

  * igt@kms_psr@pr-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][254] ([i915#9688])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_psr@pr-basic.html

  * igt@kms_psr@psr-cursor-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][255] ([i915#1072] / [i915#14544] / [i915#9732]) +4 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_psr@psr-cursor-mmap-gtt.html

  * igt@kms_psr@psr-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][256] ([i915#9732]) +8 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_psr@psr-suspend.html

  * igt@kms_psr@psr2-cursor-blt:
    - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#1072] / [i915#9732]) +11 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_psr@psr2-cursor-blt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglu:         NOTRUN -> [SKIP][258] ([i915#9685])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-10/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg2:          NOTRUN -> [SKIP][259] ([i915#12755])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
    - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#12755] / [i915#5190])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-tglu:         NOTRUN -> [SKIP][261] ([i915#5289])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_sharpness_filter@filter-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][262] ([i915#15232])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_sharpness_filter@filter-dpms.html

  * igt@kms_sharpness_filter@filter-rotations:
    - shard-tglu:         NOTRUN -> [SKIP][263] ([i915#15232])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_sharpness_filter@filter-rotations.html

  * igt@kms_sharpness_filter@invalid-filter-with-scaling-mode:
    - shard-rkl:          NOTRUN -> [SKIP][264] ([i915#15232]) +1 other test skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_sharpness_filter@invalid-filter-with-scaling-mode.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-tglu:         NOTRUN -> [SKIP][265] ([i915#8623])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][266] ([i915#12276]) +2 other tests incomplete
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-glk5/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-2.html

  * igt@kms_vrr@flipline:
    - shard-tglu-1:       NOTRUN -> [SKIP][267] ([i915#3555]) +1 other test skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_vrr@flipline.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-rkl:          NOTRUN -> [SKIP][268] ([i915#9906])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_vrr@seamless-rr-switch-vrr.html
    - shard-tglu-1:       NOTRUN -> [SKIP][269] ([i915#9906])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-rkl:          NOTRUN -> [SKIP][270] ([i915#2437] / [i915#9412])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-tglu:         NOTRUN -> [SKIP][271] ([i915#2437] / [i915#9412])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-10/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-dg2:          NOTRUN -> [SKIP][272] +2 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@perf@per-context-mode-unprivileged.html

  * igt@perf_pmu@module-unload:
    - shard-rkl:          NOTRUN -> [FAIL][273] ([i915#14433])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@perf_pmu@module-unload.html
    - shard-tglu-1:       NOTRUN -> [FAIL][274] ([i915#14433])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@perf_pmu@module-unload.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          NOTRUN -> [SKIP][275] ([i915#3291] / [i915#3708])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - shard-rkl:          NOTRUN -> [SKIP][276] ([i915#14544] / [i915#3291] / [i915#3708])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - shard-dg2:          NOTRUN -> [SKIP][277] ([i915#3291] / [i915#3708])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@prime_vgem@basic-write.html

  * igt@sriov_basic@bind-unbind-vf@vf-4:
    - shard-tglu:         NOTRUN -> [FAIL][278] ([i915#12910]) +18 other tests fail
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@sriov_basic@bind-unbind-vf@vf-4.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-mtlp:         NOTRUN -> [FAIL][279] ([i915#12910])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-write:
    - shard-rkl:          [SKIP][280] ([i915#14544] / [i915#2582]) -> [PASS][281]
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@fbdev@unaligned-write.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@fbdev@unaligned-write.html

  * igt@gem_mmap_wc@set-cache-level:
    - shard-rkl:          [SKIP][282] ([i915#14544] / [i915#1850]) -> [PASS][283]
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_pxp@display-protected-crc:
    - shard-rkl:          [TIMEOUT][284] ([i915#12917] / [i915#12964]) -> [PASS][285] +2 other tests pass
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@gem_pxp@display-protected-crc.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@gem_pxp@display-protected-crc.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-rkl:          [ABORT][286] ([i915#15152]) -> [PASS][287] +1 other test pass
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-4/igt@gem_workarounds@suspend-resume-fd.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_module_load@load:
    - shard-rkl:          ([PASS][288], [PASS][289], [PASS][290], [PASS][291], [PASS][292], [SKIP][293], [PASS][294], [PASS][295], [PASS][296], [PASS][297], [PASS][298], [PASS][299], [PASS][300], [PASS][301], [PASS][302], [PASS][303], [PASS][304], [PASS][305], [PASS][306], [PASS][307], [PASS][308], [PASS][309], [PASS][310], [PASS][311]) ([i915#14785]) -> ([PASS][312], [PASS][313], [PASS][314], [PASS][315], [PASS][316], [PASS][317], [PASS][318], [PASS][319], [PASS][320], [PASS][321], [PASS][322], [PASS][323], [PASS][324], [PASS][325], [PASS][326], [PASS][327], [PASS][328], [PASS][329], [PASS][330], [PASS][331], [PASS][332], [PASS][333], [PASS][334], [PASS][335], [PASS][336])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@i915_module_load@load.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-3/igt@i915_module_load@load.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@i915_module_load@load.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@i915_module_load@load.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@i915_module_load@load.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-3/igt@i915_module_load@load.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-4/igt@i915_module_load@load.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@i915_module_load@load.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@i915_module_load@load.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-2/igt@i915_module_load@load.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@i915_module_load@load.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@i915_module_load@load.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-4/igt@i915_module_load@load.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@i915_module_load@load.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@i915_module_load@load.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-2/igt@i915_module_load@load.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@i915_module_load@load.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@i915_module_load@load.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@i915_module_load@load.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@i915_module_load@load.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@i915_module_load@load.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-2/igt@i915_module_load@load.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@i915_module_load@load.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-2/igt@i915_module_load@load.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@i915_module_load@load.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-3/igt@i915_module_load@load.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@i915_module_load@load.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@i915_module_load@load.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@i915_module_load@load.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@i915_module_load@load.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@i915_module_load@load.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-2/igt@i915_module_load@load.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-2/igt@i915_module_load@load.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@i915_module_load@load.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@i915_module_load@load.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@i915_module_load@load.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@i915_module_load@load.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-3/igt@i915_module_load@load.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@i915_module_load@load.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-3/igt@i915_module_load@load.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@i915_module_load@load.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@i915_module_load@load.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@i915_module_load@load.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@i915_module_load@load.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@i915_module_load@load.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@i915_module_load@load.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-4/igt@i915_module_load@load.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-4/igt@i915_module_load@load.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@i915_module_load@load.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-dg2:          [ABORT][337] ([i915#15131]) -> [PASS][338]
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-dg2-10/igt@i915_suspend@basic-s3-without-i915.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_async_flips@async-flip-suspend-resume:
    - shard-dg2:          [FAIL][339] -> [PASS][340] +1 other test pass
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-dg2-11/igt@kms_async_flips@async-flip-suspend-resume.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-11/igt@kms_async_flips@async-flip-suspend-resume.html

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:
    - shard-rkl:          [SKIP][341] ([i915#14544]) -> [PASS][342] +54 other tests pass
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html

  * igt@kms_color@ctm-green-to-red:
    - shard-rkl:          [SKIP][343] ([i915#12655] / [i915#14544]) -> [PASS][344]
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_color@ctm-green-to-red.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_color@ctm-green-to-red.html

  * igt@kms_feature_discovery@display-1x:
    - shard-rkl:          [SKIP][345] ([i915#14544] / [i915#9738]) -> [PASS][346]
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_feature_discovery@display-1x.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_feature_discovery@display-1x.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-snb:          [TIMEOUT][347] ([i915#14033] / [i915#14350]) -> [PASS][348]
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
    - shard-snb:          [TIMEOUT][349] ([i915#14033]) -> [PASS][350] +2 other tests pass
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-snb5/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - shard-rkl:          [SKIP][351] ([i915#14544] / [i915#3637]) -> [PASS][352] +7 other tests pass
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-rkl:          [SKIP][353] ([i915#14544] / [i915#3555]) -> [PASS][354] +6 other tests pass
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:
    - shard-rkl:          [SKIP][355] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][356] +5 other tests pass
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html

  * igt@kms_invalid_mode@bad-hsync-end:
    - shard-rkl:          [SKIP][357] ([i915#14544] / [i915#3555] / [i915#8826]) -> [PASS][358] +2 other tests pass
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-end.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_invalid_mode@bad-hsync-end.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - shard-rkl:          [SKIP][359] ([i915#11190] / [i915#14544]) -> [PASS][360] +1 other test pass
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-edp-1:
    - shard-mtlp:         [DMESG-WARN][361] -> [PASS][362] +1 other test pass
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-mtlp-2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-edp-1.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-edp-1.html

  * igt@kms_plane@planar-pixel-format-settings:
    - shard-rkl:          [SKIP][363] ([i915#14544] / [i915#9581]) -> [PASS][364]
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_plane@planar-pixel-format-settings.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_plane@planar-pixel-format-settings.html

  * igt@kms_plane@plane-position-covered:
    - shard-rkl:          [SKIP][365] ([i915#14544] / [i915#8825]) -> [PASS][366]
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_plane@plane-position-covered.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_plane@plane-position-covered.html

  * igt@kms_plane_alpha_blend@constant-alpha-mid:
    - shard-rkl:          [SKIP][367] ([i915#14544] / [i915#7294]) -> [PASS][368]
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_plane_alpha_blend@constant-alpha-mid.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_plane_alpha_blend@constant-alpha-mid.html

  * igt@kms_plane_scaling@invalid-num-scalers:
    - shard-rkl:          [SKIP][369] ([i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][370]
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_plane_scaling@invalid-num-scalers.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_plane_scaling@invalid-num-scalers.html

  * igt@kms_plane_scaling@invalid-parameters:
    - shard-rkl:          [SKIP][371] ([i915#14544] / [i915#8152]) -> [PASS][372]
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_plane_scaling@invalid-parameters.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_plane_scaling@invalid-parameters.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-rkl:          [SKIP][373] ([i915#12247] / [i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][374] +1 other test pass
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a:
    - shard-rkl:          [SKIP][375] ([i915#12247] / [i915#14544]) -> [PASS][376] +2 other tests pass
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
    - shard-rkl:          [SKIP][377] ([i915#12247] / [i915#14544] / [i915#6953] / [i915#8152]) -> [PASS][378]
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b:
    - shard-rkl:          [SKIP][379] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][380] +2 other tests pass
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b.html

  * igt@kms_pm_rpm@cursor-dpms:
    - shard-rkl:          [SKIP][381] ([i915#14544] / [i915#1849]) -> [PASS][382] +1 other test pass
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_pm_rpm@cursor-dpms.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_pm_rpm@cursor-dpms.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg1:          [DMESG-WARN][383] ([i915#4423]) -> [PASS][384] +1 other test pass
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-dg1-18/igt@kms_pm_rpm@i2c.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg1-12/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [SKIP][385] ([i915#15073]) -> [PASS][386] +1 other test pass
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1:
    - shard-glk:          [INCOMPLETE][387] ([i915#12276]) -> [PASS][388]
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-glk8/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-glk5/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1.html

  * igt@perf@polling@0-rcs0:
    - shard-rkl:          [DMESG-WARN][389] ([i915#12964]) -> [PASS][390] +9 other tests pass
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@perf@polling@0-rcs0.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@perf@polling@0-rcs0.html

  
#### Warnings ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-rkl:          [SKIP][391] ([i915#8411]) -> [SKIP][392] ([i915#14544] / [i915#8411]) +1 other test skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@api_intel_bb@blit-reloc-purge-cache.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          [SKIP][393] ([i915#11078] / [i915#14544]) -> [SKIP][394] ([i915#11078])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@device_reset@unbind-cold-reset-rebind.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          [SKIP][395] ([i915#14544] / [i915#3555] / [i915#9323]) -> [SKIP][396] ([i915#3555] / [i915#9323])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          [SKIP][397] ([i915#9323]) -> [SKIP][398] ([i915#14544] / [i915#9323])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@gem_ccs@block-multicopy-compressed.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-rkl:          [SKIP][399] ([i915#3555] / [i915#9323]) -> [SKIP][400] ([i915#14544] / [i915#3555] / [i915#9323])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          [SKIP][401] ([i915#14544] / [i915#9323]) -> [SKIP][402] ([i915#9323])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@gem_ccs@suspend-resume.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@gem_ccs@suspend-resume.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-rkl:          [SKIP][403] ([i915#14544] / [i915#7697]) -> [SKIP][404] ([i915#7697])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@gem_close_race@multigpu-basic-process.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-rkl:          [SKIP][405] ([i915#6335]) -> [SKIP][406] ([i915#14544] / [i915#6335])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@gem_create@create-ext-cpu-access-sanity-check.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          [SKIP][407] ([i915#14544] / [i915#8562]) -> [SKIP][408] ([i915#8562])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@gem_create@create-ext-set-pat.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-rkl:          [SKIP][409] ([i915#280]) -> [SKIP][410] ([i915#14544] / [i915#280])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@gem_ctx_sseu@invalid-args.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-rkl:          [SKIP][411] ([i915#14544] / [i915#280]) -> [SKIP][412] ([i915#280])
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@gem_ctx_sseu@mmap-args.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          [SKIP][413] ([i915#4525]) -> [SKIP][414] ([i915#14544] / [i915#4525]) +3 other tests skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@gem_exec_balancer@parallel-balancer.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          [SKIP][415] ([i915#14544] / [i915#4525]) -> [SKIP][416] ([i915#4525])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - shard-rkl:          [SKIP][417] ([i915#3281]) -> [SKIP][418] ([i915#14544] / [i915#3281]) +3 other tests skip
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-read.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-rkl:          [SKIP][419] ([i915#14544] / [i915#3281]) -> [SKIP][420] ([i915#3281]) +7 other tests skip
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-noreloc.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          [SKIP][421] ([i915#7276]) -> [SKIP][422] ([i915#14544] / [i915#7276])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@gem_exec_schedule@semaphore-power.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_huc_copy@huc-copy:
    - shard-rkl:          [SKIP][423] ([i915#2190]) -> [SKIP][424] ([i915#14544] / [i915#2190])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@gem_huc_copy@huc-copy.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-rkl:          [SKIP][425] ([i915#4613]) -> [SKIP][426] ([i915#14544] / [i915#4613])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-multi.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          [SKIP][427] ([i915#14544] / [i915#4613]) -> [SKIP][428] ([i915#4613]) +2 other tests skip
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          [SKIP][429] ([i915#3282]) -> [SKIP][430] ([i915#14544] / [i915#3282]) +3 other tests skip
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          [SKIP][431] ([i915#14544] / [i915#3282]) -> [SKIP][432] ([i915#3282]) +5 other tests skip
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pxp@create-regular-buffer:
    - shard-rkl:          [SKIP][433] ([i915#4270]) -> [TIMEOUT][434] ([i915#12917] / [i915#12964])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@gem_pxp@create-regular-buffer.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_pxp@create-regular-buffer.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-rkl:          [SKIP][435] ([i915#3297]) -> [SKIP][436] ([i915#14544] / [i915#3297]) +3 other tests skip
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-4/igt@gem_userptr_blits@coherency-unsync.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-rkl:          [SKIP][437] ([i915#3297] / [i915#3323]) -> [SKIP][438] ([i915#14544] / [i915#3297] / [i915#3323])
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@gem_userptr_blits@dmabuf-sync.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-rkl:          [SKIP][439] ([i915#3282] / [i915#3297]) -> [SKIP][440] ([i915#14544] / [i915#3282] / [i915#3297])
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-4/igt@gem_userptr_blits@forbidden-operations.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-rkl:          [SKIP][441] ([i915#14544] / [i915#3297]) -> [SKIP][442] ([i915#3297])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-rkl:          [SKIP][443] ([i915#14544] / [i915#2527]) -> [SKIP][444] ([i915#2527]) +3 other tests skip
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@gen9_exec_parse@bb-secure.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@gen9_exec_parse@bb-secure.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          [SKIP][445] ([i915#2527]) -> [SKIP][446] ([i915#14544] / [i915#2527]) +2 other tests skip
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@gen9_exec_parse@shadow-peek.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-rkl:          [SKIP][447] ([i915#14544] / [i915#8399]) -> [SKIP][448] ([i915#8399])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          [SKIP][449] ([i915#8399]) -> [SKIP][450] ([i915#14544] / [i915#8399])
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@i915_pm_freq_api@freq-suspend.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-rkl:          [SKIP][451] ([i915#14498]) -> [SKIP][452] ([i915#14498] / [i915#14544])
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-idle.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          [SKIP][453] ([i915#14544] / [i915#4387]) -> [SKIP][454] ([i915#4387])
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@i915_pm_sseu@full-enable.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@i915_pm_sseu@full-enable.html

  * igt@i915_power@sanity:
    - shard-rkl:          [SKIP][455] ([i915#14544] / [i915#7984]) -> [SKIP][456] ([i915#7984])
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@i915_power@sanity.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@i915_power@sanity.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          [SKIP][457] ([i915#1769] / [i915#3555]) -> [SKIP][458] ([i915#14544]) +1 other test skip
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          [SKIP][459] ([i915#5286]) -> [SKIP][460] ([i915#14544]) +5 other tests skip
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][461] ([i915#14544]) -> [SKIP][462] ([i915#5286]) +5 other tests skip
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          [SKIP][463] ([i915#14544]) -> [SKIP][464] ([i915#3638]) +2 other tests skip
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-rkl:          [SKIP][465] ([i915#3638]) -> [SKIP][466] ([i915#14544]) +2 other tests skip
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc:
    - shard-rkl:          [SKIP][467] ([i915#14098] / [i915#6095]) -> [SKIP][468] ([i915#14544]) +11 other tests skip
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][469] ([i915#12313]) -> [SKIP][470] ([i915#14544]) +1 other test skip
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][471] ([i915#14544]) -> [SKIP][472] ([i915#12805])
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs:
    - shard-rkl:          [SKIP][473] ([i915#14544]) -> [SKIP][474] ([i915#14098] / [i915#6095]) +11 other tests skip
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][475] ([i915#14544]) -> [SKIP][476] ([i915#12313])
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][477] ([i915#6095]) -> [SKIP][478] ([i915#14098] / [i915#6095])
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_cdclk@mode-transition:
    - shard-rkl:          [SKIP][479] ([i915#14544] / [i915#3742]) -> [SKIP][480] ([i915#3742])
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_cdclk@mode-transition.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-rkl:          [SKIP][481] ([i915#3742]) -> [SKIP][482] ([i915#14544] / [i915#3742])
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@kms_cdclk@mode-transition-all-outputs.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_chamelium_frames@hdmi-crc-multiple:
    - shard-rkl:          [SKIP][483] ([i915#11151] / [i915#7828]) -> [SKIP][484] ([i915#11151] / [i915#14544] / [i915#7828]) +7 other tests skip
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@kms_chamelium_frames@hdmi-crc-multiple.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-multiple.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-rkl:          [SKIP][485] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][486] ([i915#11151] / [i915#7828]) +7 other tests skip
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_content_protection@content-type-change:
    - shard-rkl:          [SKIP][487] ([i915#9424]) -> [SKIP][488] ([i915#14544])
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@kms_content_protection@content-type-change.html
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-rkl:          [SKIP][489] ([i915#3116]) -> [SKIP][490] ([i915#14544])
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-0.html
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-rkl:          [SKIP][491] ([i915#14544]) -> [SKIP][492] ([i915#3116])
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          [SKIP][493] ([i915#14544]) -> [SKIP][494] ([i915#9424]) +1 other test skip
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_content_protection@mei-interface.html
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@uevent:
    - shard-rkl:          [SKIP][495] ([i915#7118] / [i915#9424]) -> [SKIP][496] ([i915#14544])
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@kms_content_protection@uevent.html
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42:
    - shard-rkl:          [SKIP][497] ([i915#14544]) -> [FAIL][498] ([i915#13566])
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-128x42.html
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-128x42.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85:
    - shard-rkl:          [FAIL][499] ([i915#13566]) -> [SKIP][500] ([i915#14544])
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x85.html
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x85.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-rkl:          [SKIP][501] ([i915#14544]) -> [SKIP][502] ([i915#3555]) +4 other tests skip
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-max-size.html
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-rkl:          [SKIP][503] ([i915#14544]) -> [SKIP][504] ([i915#13049]) +2 other tests skip
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x512.html
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          [SKIP][505] ([i915#3555]) -> [SKIP][506] ([i915#14544])
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          [SKIP][507] ([i915#13049]) -> [SKIP][508] ([i915#14544])
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_crc@cursor-suspend:
    - shard-rkl:          [INCOMPLETE][509] ([i915#12358] / [i915#14152]) -> [SKIP][510] ([i915#14544])
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-3/igt@kms_cursor_crc@cursor-suspend.html
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_cursor_crc@cursor-suspend.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          [SKIP][511] ([i915#14544]) -> [SKIP][512] +20 other tests skip
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          [SKIP][513] -> [SKIP][514] ([i915#14544]) +15 other tests skip
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-rkl:          [SKIP][515] ([i915#14544]) -> [SKIP][516] ([i915#13691])
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_display_modes@extended-mode-basic.html
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-rkl:          [SKIP][517] ([i915#14544]) -> [SKIP][518] ([i915#3555] / [i915#3804])
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dp_link_training@uhbr-sst:
    - shard-rkl:          [SKIP][519] ([i915#13748]) -> [SKIP][520] ([i915#14544])
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@kms_dp_link_training@uhbr-sst.html
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_dp_link_training@uhbr-sst.html

  * igt@kms_dp_linktrain_fallback@dsc-fallback:
    - shard-rkl:          [SKIP][521] ([i915#14544]) -> [SKIP][522] ([i915#13707])
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_dp_linktrain_fallback@dsc-fallback.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-rkl:          [SKIP][523] ([i915#14544]) -> [SKIP][524] ([i915#3840]) +1 other test skip
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_feature_discovery@display-3x:
    - shard-rkl:          [SKIP][525] ([i915#1839]) -> [SKIP][526] ([i915#14544] / [i915#1839])
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@kms_feature_discovery@display-3x.html
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_feature_discovery@display-3x.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
    - shard-dg1:          [SKIP][527] ([i915#4423] / [i915#9934]) -> [SKIP][528] ([i915#9934])
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-dg1-15/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg1-19/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-rkl:          [SKIP][529] ([i915#14544] / [i915#9934]) -> [SKIP][530] ([i915#9934]) +7 other tests skip
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-rkl:          [SKIP][531] ([i915#9934]) -> [SKIP][532] ([i915#14544] / [i915#9934]) +8 other tests skip
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@kms_flip@2x-plain-flip-interruptible.html
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-rkl:          [SKIP][533] ([i915#14544] / [i915#3555]) -> [SKIP][534] ([i915#2672] / [i915#3555]) +1 other test skip
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          [SKIP][535] ([i915#2672] / [i915#3555]) -> [SKIP][536] ([i915#14544] / [i915#3555]) +2 other tests skip
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          [SKIP][537] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][538] ([i915#5439]) +1 other test skip
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-rkl:          [SKIP][539] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][540] ([i915#15102] / [i915#3023]) +16 other tests skip
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][541] ([i915#1825]) -> [SKIP][542] ([i915#14544] / [i915#1849] / [i915#5354]) +29 other tests skip
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg1:          [SKIP][543] ([i915#4423] / [i915#8708]) -> [SKIP][544] ([i915#8708]) +1 other test skip
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
    - shard-rkl:          [SKIP][545] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][546] ([i915#1825]) +34 other tests skip
   [545]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
   [546]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-dg2:          [SKIP][547] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][548] ([i915#15102] / [i915#3458]) +2 other tests skip
   [547]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [548]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-dg2:          [SKIP][549] ([i915#15102] / [i915#3458]) -> [SKIP][550] ([i915#10433] / [i915#15102] / [i915#3458]) +1 other test skip
   [549]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
   [550]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt:
    - shard-rkl:          [SKIP][551] ([i915#15102]) -> [SKIP][552] ([i915#14544]) +2 other tests skip
   [551]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt.html
   [552]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][553] ([i915#14544]) -> [SKIP][554] ([i915#15102]) +3 other tests skip
   [553]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
   [554]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-rkl:          [SKIP][555] ([i915#15102] / [i915#3023]) -> [SKIP][556] ([i915#14544] / [i915#1849] / [i915#5354]) +13 other tests skip
   [555]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [556]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-rkl:          [SKIP][557] ([i915#3555] / [i915#8228]) -> [SKIP][558] ([i915#14544])
   [557]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@kms_hdr@static-toggle-dpms.html
   [558]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [ABORT][559] ([i915#15132]) -> [SKIP][560] ([i915#3555] / [i915#8228])
   [559]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html
   [560]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-rkl:          [SKIP][561] ([i915#12394]) -> [SKIP][562] ([i915#12394] / [i915#14544])
   [561]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-4/igt@kms_joiner@basic-force-ultra-joiner.html
   [562]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-rkl:          [SKIP][563] ([i915#12339] / [i915#14544]) -> [SKIP][564] ([i915#12339])
   [563]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html
   [564]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-rkl:          [SKIP][565] ([i915#10656]) -> [SKIP][566] ([i915#10656] / [i915#14544])
   [565]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@kms_joiner@invalid-modeset-big-joiner.html
   [566]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-rkl:          [SKIP][567] ([i915#12394] / [i915#14544]) -> [SKIP][568] ([i915#12394])
   [567]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
   [568]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-rkl:          [SKIP][569] ([i915#13522]) -> [SKIP][570] ([i915#13522] / [i915#14544])
   [569]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
   [570]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][571] ([i915#4816]) -> [SKIP][572] ([i915#14544] / [i915#4070] / [i915#4816])
   [571]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [572]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          [SKIP][573] ([i915#14544]) -> [SKIP][574] ([i915#6301])
   [573]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html
   [574]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane_multiple@2x-tiling-none:
    - shard-rkl:          [SKIP][575] ([i915#13958]) -> [SKIP][576] ([i915#14544]) +1 other test skip
   [575]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-none.html
   [576]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html

  * igt@kms_plane_multiple@tiling-4:
    - shard-rkl:          [SKIP][577] ([i915#14544]) -> [SKIP][578] ([i915#14259])
   [577]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_plane_multiple@tiling-4.html
   [578]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_plane_multiple@tiling-4.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a:
    - shard-rkl:          [SKIP][579] ([i915#12247]) -> [SKIP][580] ([i915#12247] / [i915#14544])
   [579]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a.html
   [580]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
    - shard-rkl:          [SKIP][581] ([i915#12247]) -> [SKIP][582] ([i915#12247] / [i915#14544] / [i915#8152]) +1 other test skip
   [581]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html
   [582]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
    - shard-rkl:          [SKIP][583] ([i915#12247] / [i915#14544]) -> [SKIP][584] ([i915#12247]) +1 other test skip
   [583]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
   [584]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b:
    - shard-rkl:          [SKIP][585] ([i915#12247] / [i915#14544] / [i915#8152]) -> [SKIP][586] ([i915#12247]) +3 other tests skip
   [585]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html
   [586]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-rkl:          [SKIP][587] ([i915#5354]) -> [SKIP][588] ([i915#14544] / [i915#5354]) +1 other test skip
   [587]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@kms_pm_backlight@fade-with-dpms.html
   [588]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-rkl:          [SKIP][589] ([i915#9685]) -> [SKIP][590] ([i915#14544] / [i915#9685])
   [589]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@kms_pm_dc@dc5-psr.html
   [590]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-rkl:          [DMESG-WARN][591] ([i915#12964]) -> [SKIP][592] ([i915#15073])
   [591]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [592]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-3/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [SKIP][593] ([i915#15073]) -> [SKIP][594] ([i915#14544] / [i915#15073])
   [593]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html
   [594]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          [SKIP][595] ([i915#11520] / [i915#14544]) -> [SKIP][596] ([i915#11520]) +6 other tests skip
   [595]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html
   [596]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:
    - shard-rkl:          [SKIP][597] ([i915#11520]) -> [SKIP][598] ([i915#11520] / [i915#14544]) +6 other tests skip
   [597]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html
   [598]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-rkl:          [SKIP][599] ([i915#9683]) -> [SKIP][600] ([i915#14544] / [i915#9683])
   [599]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [600]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@fbc-psr2-primary-blt:
    - shard-rkl:          [SKIP][601] ([i915#1072] / [i915#9732]) -> [SKIP][602] ([i915#1072] / [i915#14544] / [i915#9732]) +14 other tests skip
   [601]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@kms_psr@fbc-psr2-primary-blt.html
   [602]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_psr@fbc-psr2-primary-blt.html

  * igt@kms_psr@psr2-primary-mmap-gtt:
    - shard-rkl:          [SKIP][603] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][604] ([i915#1072] / [i915#9732]) +20 other tests skip
   [603]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_psr@psr2-primary-mmap-gtt.html
   [604]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_psr@psr2-primary-mmap-gtt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          [SKIP][605] ([i915#14544] / [i915#9685]) -> [SKIP][606] ([i915#9685])
   [605]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [606]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-rkl:          [SKIP][607] ([i915#14544]) -> [SKIP][608] ([i915#5289])
   [607]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
   [608]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-rkl:          [SKIP][609] ([i915#3555]) -> [SKIP][610] ([i915#14544] / [i915#3555])
   [609]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@kms_setmode@clone-exclusive-crtc.html
   [610]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_sharpness_filter@filter-modifiers:
    - shard-rkl:          [SKIP][611] ([i915#14544]) -> [SKIP][612] ([i915#15232]) +1 other test skip
   [611]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_sharpness_filter@filter-modifiers.html
   [612]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_sharpness_filter@filter-modifiers.html

  * igt@kms_sharpness_filter@filter-tap:
    - shard-rkl:          [SKIP][613] ([i915#15232]) -> [SKIP][614] ([i915#14544]) +1 other test skip
   [613]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@kms_sharpness_filter@filter-tap.html
   [614]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_sharpness_filter@filter-tap.html

  * igt@kms_vblank@wait-busy-hang:
    - shard-rkl:          [SKIP][615] ([i915#14544]) -> [DMESG-WARN][616] ([i915#12964]) +2 other tests dmesg-warn
   [615]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_vblank@wait-busy-hang.html
   [616]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_vblank@wait-busy-hang.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-rkl:          [SKIP][617] ([i915#14544]) -> [SKIP][618] ([i915#9906])
   [617]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_vrr@flip-basic-fastset.html
   [618]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-rkl:          [SKIP][619] ([i915#2437]) -> [SKIP][620] ([i915#14544] / [i915#2437]) +1 other test skip
   [619]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@kms_writeback@writeback-fb-id.html
   [620]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-rkl:          [SKIP][621] ([i915#14544] / [i915#2437]) -> [SKIP][622] ([i915#2437])
   [621]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_writeback@writeback-invalid-parameters.html
   [622]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-rkl:          [SKIP][623] ([i915#14544] / [i915#2437] / [i915#9412]) -> [SKIP][624] ([i915#2437] / [i915#9412])
   [623]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@kms_writeback@writeback-pixel-formats.html
   [624]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          [SKIP][625] ([i915#2436]) -> [SKIP][626] ([i915#14544] / [i915#2436])
   [625]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [626]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@mi-rpc:
    - shard-rkl:          [SKIP][627] ([i915#2434]) -> [SKIP][628] ([i915#14544] / [i915#2434])
   [627]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-4/igt@perf@mi-rpc.html
   [628]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@perf@mi-rpc.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          [SKIP][629] ([i915#14544] / [i915#3708]) -> [SKIP][630] ([i915#3708]) +1 other test skip
   [629]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@prime_vgem@coherency-gtt.html
   [630]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-rkl:          [SKIP][631] ([i915#3708]) -> [SKIP][632] ([i915#14544] / [i915#3708])
   [631]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@prime_vgem@fence-flip-hang.html
   [632]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@prime_vgem@fence-flip-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-rkl:          [SKIP][633] ([i915#14544] / [i915#9917]) -> [SKIP][634] ([i915#9917])
   [633]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-off.html
   [634]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@sriov_basic@enable-vfs-autoprobe-off.html

  
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12177]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12177
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
  [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
  [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14350]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350
  [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
  [i915#14446]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14446
  [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
  [i915#14561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14561
  [i915#14586]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586
  [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
  [i915#14785]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14785
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
  [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
  [i915#15152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15152
  [i915#15193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15193
  [i915#15232]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15232
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1850
  [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
  [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
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
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7443]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
  [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
  [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
  [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
  [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9581]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9581
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9738]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9738
  [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
  [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_17481 -> Patchwork_156997v1

  CI-20190529: 20190529
  CI_DRM_17481: 3512eb46a8d42c3deb477856c25d519b19a7d165 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8606: 7f516488d66a52df3b3027d5c02c5be298424b78 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_156997v1: 3512eb46a8d42c3deb477856c25d519b19a7d165 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/index.html

--===============8657335566426738374==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Rename MCFG_MCR_SELECTOR to STE=
ER_SEMAPHORE</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/156997/">https://patchwork.freedesktop.org/series/156997/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_156997v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_156997v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17481_full -&gt; Patchwork_156997v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_156997v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_156997v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
156997v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_freq_api@freq-suspend@gt0:<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156=
997v1/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html">ABORT</a></l=
i>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_156997v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@api_intel_bb@blit-reloc-ke=
ep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@device_reset@unbind-cold-=
reset-rebind.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@fbdev@read.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@gem_busy@close-race.html"=
>ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/15193">i915#15193</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@gem_ccs@ctrl-surf-copy-new=
-ctx.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-dg2-6/igt@gem_ccs@suspend-resume.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard=
-dg2-1/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@gem_ccs@suspend-resume.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9323">i915#9323</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-lmem0-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_156997v1/shard-dg2-1/igt@gem_ccs@suspend-resume@li=
near-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i=
915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-8/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@gem_exec_balancer@paralle=
l.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@gem_exec_balancer@parallel=
-out-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@gem_exec_balancer@sliced.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-glk10/igt@gem_exec_capture@capture-i=
nvisible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-active:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@gem_exec_reloc@basic-cpu-=
active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@gem_exec_reloc@basic-cpu-g=
tt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-c=
pu-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3281">i915#3281</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-w=
c-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-dg2-5/igt@gem_exec_whisper@basic-contexts-forked-all.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_156997v1/shard-dg2-4/igt@gem_exec_whisper@basic-contexts-forked-all.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14446">i915#14446</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@gem_lmem_swapping@heavy-v=
erify-random-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@gem_lmem_swapping@parallel=
-random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@gem_lmem_swapping@paralle=
l-random-verify-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@gem_lmem_swapping@random.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@gem_mmap_gtt@basic-small-=
copy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@gem_mmap_gtt@coherency.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_mmap_offset@clear@smem=
0.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/12964">i915#12964</a>) +6 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-8/igt@gem_mmap_wc@write-gtt-read=
-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-wc-read-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@gem_mmap_wc@write-wc-read-gtt.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v=
1/shard-rkl-2/igt@gem_mmap_wc@write-wc-read-gtt.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#1=
2964</a>) +6 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-uncached:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@gem_partial_pwrite_pread@w=
rite-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-glk5/igt@gem_pread@exhaustion.html">=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-random:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@gem_pwrite@basic-random.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_pxp@dmabuf-shared-prot=
ected-dst-is-context-refcounted.html">TIMEOUT</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-con=
text.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/12917">i915#12917</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +1 other test timeou=
t</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@gem_pxp@protected-raw-src-copy-not-readible.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_156997v1/shard-rkl-6/igt@gem_pxp@protected-raw-src-copy-not-readible=
.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12917">i915#12917</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-8/igt@gem_pxp@verify-pxp-key-cha=
nge-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@gem_readwrite@beyond-eob.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@read-bad-handle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_readwrite@read-bad-han=
dle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@gem_render_copy@yf-tiled-=
to-vebox-x-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@gem_render_copy@yf-tiled-t=
o-vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +2 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@gem_tiled_pread_basic.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@gem_userptr_blits@create-d=
estroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-10/igt@gem_userptr_blits@readon=
ly-pwrite-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@gem_userptr_blits@relocati=
ons.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3281">i915#3281</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-glk6/igt@gem_workarounds@suspend-res=
ume.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/13356">i915#13356</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/14586">i915#14586</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@gem_workarounds@suspend-resume-context.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_156997v1/shard-rkl-3/igt@gem_workarounds@suspend-resume-context.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@gen7_exec_parse@basic-reje=
cted.html">SKIP</a> +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@gen9_exec_parse@bb-oversiz=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@gen9_exec_parse@bb-secure=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gen9_exec_parse@bb-start-p=
aram.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@gen9_exec_parse@cmd-cross=
ing-page.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@busy-check-all@vecs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-8/igt@i915_drm_fdinfo@busy-check=
-all@vecs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/11527">i915#11527</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@most-busy-check-all@vecs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@i915_drm_fdinfo@most-busy-=
check-all@vecs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14073">i915#14073</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-snb1/igt@i915_module_load@reload-no-display.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156=
997v1/shard-snb7/igt@i915_module_load@reload-no-display.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545=
">i915#14545</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@i915_module_load@resize-ba=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6412">i915#6412</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@i915_module_load@resize-b=
ar.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@i915_pm_freq_api@freq-bas=
ic-api.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@i915_pm_freq_api@freq-res=
et.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v=
1/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend.html">ABORT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131">i915#151=
31</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-fence.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1569=
97v1/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790">i915#1=
3790</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/2681">i915#2681</a>) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@i915_pm_rps@thresholds.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-mtlp-6/igt@i915_power@sanity.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-mtl=
p-2/igt@i915_power@sanity.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/7984">i915#7984</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@i915_query@hwconfig_table=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-dg2-7/igt@i915_selftest@live@workarounds.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997=
v1/shard-dg2-7/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915=
#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-10/igt@i915_suspend@basic-s3-wi=
thout-i915.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/4817">i915#4817</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/7443">i915#7443</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@i915_suspend@fence-restore-untiled.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
6997v1/shard-rkl-4/igt@i915_suspend@fence-restore-untiled.html">ABORT</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131">i=
915#15131</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-glk10/igt@i915_suspend@forcewake.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@i915_suspend@sysfs-reader.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_addfb_basic@bo-too-sm=
all-due-to-tiling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-dg1-13/igt@kms_async_flips@async-flip-suspend-resume.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_156997v1/shard-dg1-12/igt@kms_async_flips@async-flip-suspend-resume.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4423">i915#4423</a>) +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-glk10/igt@kms_atomic_transition@plan=
e-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-dg2-4/igt@kms_atomic_transition@plane-toggle-modeset-tr=
ansition.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_atomic_transition@plane-toggl=
e-modeset-transition.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/5956">i915#5956</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-=
3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_atomic_transition@plan=
e-toggle-modeset-transition@pipe-a-hdmi-a-3.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-=
rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +3 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +4 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_156997v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-strid=
e-64bpp-rotate-0-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_big_fb@x-tiled-32bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_big_fb@y-tiled-64bpp-=
rotate-0.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_big_fb@y-tiled-max-hw-=
stride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw=
-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +26 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-t=
iled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#104=
34</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-=
tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a=
>) +42 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_ccs@crc-primary-basic=
-y-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/6095">i915#6095</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-10/igt@kms_ccs@crc-primary-susp=
end-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-4:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg1-18/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-4.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +119 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-4/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +11 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915=
#6095</a>) +105 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-=
1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +=
49 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_ccs@crc-sprite-planes=
-basic-y-tiled-ccs@pipe-c-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-2/igt@kms_ccs@missing-ccs-buffer=
-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +47 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_cdclk@mode-transition=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_chamelium_edid@dp-edid=
-stress-resolution-4k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other=
 test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-mode-timings:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_chamelium_edid@dp-mode=
-timings.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-mode-timings:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_chamelium_edid@hdmi-m=
ode-timings.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +6 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_chamelium_frames@hdmi-=
frame-dump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-=
enable-disable-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_color@ctm-max.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
12655">i915#12655</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-7/igt@kms_color@deep-color.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/12655">i915#12655</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@gamma:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@kms_color@gamma.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6=
/igt@kms_color@gamma.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-10/igt@kms_content_protection@d=
p-mst-lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_content_protection@dp-=
mst-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_content_protection@leg=
acy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_content_protection@le=
gacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-10/igt@kms_cursor_crc@cursor-of=
fscreen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/13049">i915#13049</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_cursor_crc@cursor-ons=
creen-128x42.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_cursor_crc@cursor-onsc=
reen-128x42@pipe-a-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_cursor_crc@cursor-onsc=
reen-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_cursor_crc@cursor-onsc=
reen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_cursor_crc@cursor-ran=
dom-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-rap=
id-movement-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_cursor_crc@cursor-sli=
ding-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-top-edge:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@kms_cursor_edge_walk@128x128-top-edge.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_156997v1/shard-rkl-6/igt@kms_cursor_edge_walk@128x128-top-edge.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a>) +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_cursor_legacy@2x-long=
-cursor-vs-flip-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9809">i915#9809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-glk10/igt@kms_cursor_legacy@2x-long-=
flip-vs-cursor-atomic.html">SKIP</a> +98 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_cursor_legacy@2x-long-=
flip-vs-cursor-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other=
 test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@kms_cursor_legacy@basic-flip-after-cursor-var=
ying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-aft=
er-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 ot=
her test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_dither@fb-8bpc-vs-pan=
el-6bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/1769">i915#1769</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_dither@fb-8bpc-vs-pan=
el-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_dsc@dsc-basic.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
11190">i915#11190</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-10/igt@kms_dsc@dsc-fractional-b=
pp-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_dsc@dsc-with-bpc.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_dsc@dsc-with-output-fo=
rmats-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3840">i915#3840</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/sh=
ard-rkl-6/igt@kms_fbcon_fbt@fbc-suspend.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14561">i915=
#14561</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_fbcon_fbt@psr.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_fbcon_fbt@psr-suspend.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3955">i915#3955</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_feature_discovery@cha=
melium.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/2065">i915#2065</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_feature_discovery@psr1=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/658">i915#658</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_feature_discovery@psr=
1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_feature_discovery@psr=
2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_flip@2x-modeset-vs-vb=
lank-race.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +5 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_flip@2x-plain-flip.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9934">i915#9934</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_flip@2x-plain-flip-fb=
-recreate-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_flip@2x-plain-flip-ts-=
check-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_flip@flip-vs-dpms-off-=
vs-modeset-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +1 ot=
her test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-glk5/igt@kms_flip@flip-vs-expired-vb=
lank.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13027">i915#13027</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@kms_flip@flip-vs-panning.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/sha=
rd-rkl-6/igt@kms_flip@flip-vs-panning.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#36=
37</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-glk10/igt@kms_flip@flip-vs-suspend-i=
nterruptible.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-glk10/igt@kms_flip@flip-vs-suspend-i=
nterruptible@a-hdmi-a1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2=
587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-downscaling.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#=
3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@p=
ipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672"=
>i915#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/8813">i915#8813</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#=
2672</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tile-downscaling.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#355=
5</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915=
#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">=
i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp=
-xtile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_flip_scaled_crc@fli=
p-64bpp-xtile-to-16bpp-xtile-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915=
#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#35=
55</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-default-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">=
i915#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/8813">i915#8813</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
shrfb-draw-mmap-wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_frontbuffer_trackin=
g@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915=
#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/5354">i915#5354</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +2 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-8/igt@kms_frontbuffer_tracking@f=
bc-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +3 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbc-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +2=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscreen-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i91=
5#3458</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-spr-indfb-onoff.html">SKIP</a> +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> +42 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i9=
15#5354</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_frontbuffer_tracking@=
pipe-fbc-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9766">i915#9766</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-glk6/igt@kms_frontbuffer_tracking@ps=
r-1p-pri-indfb-multidraw.html">SKIP</a> +90 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3=
023</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +7 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-spr-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +4 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +17 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_frontbuffer_tracking@=
psr-rgb565-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +16 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_hdr@invalid-hdr.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/8228">i915#8228</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_hdr@invalid-hdr.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_hdr@static-toggle-sus=
pend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@kms_invalid_mode@overflow-vrefresh.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
6997v1/shard-rkl-6/igt@kms_invalid_mode@overflow-vrefresh.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/8826">i915#8826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@kms_invalid_mode@zero-hdisplay.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997=
v1/shard-rkl-6/igt@kms_invalid_mode@zero-hdisplay.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/8826">i915#8826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_joiner@basic-big-join=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_joiner@basic-ultra-jo=
iner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/12339">i915#12339</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_joiner@invalid-modeset=
-ultra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12339">i915#12339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-10/igt@kms_panel_fitting@atomic=
-fastset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_stress@stress-xrgb8888-yftiled:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_pipe_stress@stress-xr=
gb8888-yftiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14712">i915#14712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@kms_plane@plane-panning-bottom-right.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
156997v1/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8825">i915#8825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_plane@plane-position-h=
ole.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/8825">i915#8825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-7efc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@kms_plane_alpha_blend@alpha-7efc.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1569=
97v1/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-7efc.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#1=
4544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/7294">i915#7294</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-glk5/igt@kms_plane_alpha_blend@alpha=
-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/10647">i915#10647</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/12177">i915#12177</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-glk5/igt@kms_plane_alpha_blend@alpha=
-transparent-fb@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a>) +1 other tes=
t fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-7efc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_plane_alpha_blend@cove=
rage-7efc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_plane_multiple@tiling=
-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_plane_scaling@intel-ma=
x-src-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/6953">i915#6953</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-pixel-formats.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_plane_scaling@p=
lane-scaler-with-clipping-clamping-pixel-formats.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/35=
55">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_156997v1/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor=
-0-5.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/12247">i915#12247</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-5=
-unity-scaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_plane_scaling@planes-do=
wnscale-factor-0-5-unity-scaling.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/81=
52">i915#8152</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5=
@pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_plane_scaling@planes-downscale=
-factor-0-5@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +4 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_156997v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/6953">i915#6953</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_pm_backlight@fade.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/5354">i915#5354</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_pm_backlight@fade.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_pm_backlight@fade-wit=
h-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_pm_dc@dc9-dpms.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/4281">i915#4281</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_pm_dc@dc9-dpms.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_pm_lpsp@screens-disab=
led.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-d=
g2-6/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) +2 other tests=
 skip</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-r=
kl-8/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_pm_rpm@fences-dpms.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lps=
p-stress.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_156997v1/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-idle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-2/igt@kms_pm_rpm@system-suspend-idle.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997=
v1/shard-rkl-4/igt@kms_pm_rpm@system-suspend-idle.html">ABORT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132">i915#151=
32</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_psr2_sf@fbc-pr-cursor=
-plane-update-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay=
-primary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_psr2_sf@fbc-psr2-overl=
ay-plane-update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-glk10/igt@kms_psr2_sf@pr-primary-pla=
ne-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_psr2_sf@psr2-cursor-p=
lane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-glk6/igt@kms_psr2_sf@psr2-overlay-pl=
ane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_psr2_sf@psr2-primary-p=
lane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_psr2_su@page_flip-p010=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_psr@fbc-psr-cursor-ren=
der.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9732">i915#9732</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-primary-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_psr@fbc-psr2-primary-=
mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9732">i915#9732</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_psr@pr-basic.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9688">i915#9688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_psr@psr-cursor-mmap-gt=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_psr@psr-suspend.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/9732">i915#9732</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_psr@psr2-cursor-blt.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9732">i915#9732</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-10/igt@kms_psr_stress_test@flip=
-primary-invalidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_rotation_crc@primary-r=
otation-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/12755">i915#12755</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@kms_rotation_crc@primary-y=
-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/12755">i915#12755</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sharpness_filter@filter-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_sharpness_filter@filt=
er-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/15232">i915#15232</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sharpness_filter@filter-rotations:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_sharpness_filter@filt=
er-rotations.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/15232">i915#15232</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sharpness_filter@invalid-filter-with-scaling-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_sharpness_filter@inval=
id-filter-with-scaling-mode.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/15232">i915#15232</a>) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@kms_tiled_display@basic-t=
est-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-glk5/igt@kms_vblank@ts-continuation-=
dpms-suspend@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/12276">i915#12276</a>) +2 other =
tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_vrr@flipline.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@kms_vrr@seamless-rr-switch=
-vrr.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9906">i915#9906</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@kms_vrr@seamless-rr-switc=
h-vrr.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_writeback@writeback-fb=
-id-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-10/igt@kms_writeback@writeback-=
pixel-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@perf@per-context-mode-unpr=
ivileged.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@perf_pmu@module-unload.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14433">i915#14433</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-1/igt@perf_pmu@module-unload.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14433">i915#14433</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@prime_vgem@basic-fence-rea=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@prime_vgem@basic-read.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@prime_vgem@basic-write.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf@vf-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-tglu-6/igt@sriov_basic@bind-unbind-v=
f@vf-4.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/12910">i915#12910</a>) +18 other tests fail</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each-numvfs-all.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/12910">i915#12910</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@fbdev@unaligned-write.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/2582">i915#2582</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_156997v1/shard-rkl-8/igt@fbdev@unaligned-write.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/1850">i915#1850</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@gem_mmap_wc@set-cache-level.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@gem_pxp@display-protected-crc.html">TIMEOUT</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1291=
7">i915#12917</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12964">i915#12964</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@gem_pxp@display-protec=
ted-crc.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-4/igt@gem_workarounds@suspend-resume-fd.html">ABORT=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15=
152">i915#15152</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_156997v1/shard-rkl-6/igt@gem_workarounds@suspend-resume-fd.ht=
ml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17481/shard-rkl-6/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-3/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@i915_module_load@load.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/sha=
rd-rkl-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@i915_module_load@l=
oad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_17481/shard-rkl-3/igt@i915_module_load@load.html">SKIP</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-4/igt@i915_=
module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_17481/shard-rkl-8/igt@i915_module_load@load.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rk=
l-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-2/igt@i915_module_load@load.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
7481/shard-rkl-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@i915_modul=
e_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_17481/shard-rkl-4/igt@i915_module_load@load.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-8/i=
gt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_17481/shard-rkl-7/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/=
shard-rkl-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-6/igt@i915_module_loa=
d@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_17481/shard-rkl-5/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-5/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_17481/shard-rkl-8/igt@i915_module_load@load.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shar=
d-rkl-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-2/igt@i915_module_load@lo=
ad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_17481/shard-rkl-5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/shard-rkl-2/igt@i915_m=
odule_load@load.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14785">i915#14785</a>) -&gt; (<a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@i915_mod=
ule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_156997v1/shard-rkl-3/igt@i915_module_load@load.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1=
/shard-rkl-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@i915_mod=
ule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_156997v1/shard-rkl-7/igt@i915_module_load@load.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1=
/shard-rkl-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@i915_mod=
ule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_156997v1/shard-rkl-2/igt@i915_module_load@load.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1=
/shard-rkl-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@i915_mod=
ule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_156997v1/shard-rkl-8/igt@i915_module_load@load.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1=
/shard-rkl-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-7/igt@i915_mod=
ule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_156997v1/shard-rkl-3/igt@i915_module_load@load.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1=
/shard-rkl-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-3/igt@i915_mod=
ule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_156997v1/shard-rkl-5/igt@i915_module_load@load.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1=
/shard-rkl-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@i915_mod=
ule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_156997v1/shard-rkl-5/igt@i915_module_load@load.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1=
/shard-rkl-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@i915_mod=
ule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_156997v1/shard-rkl-4/igt@i915_module_load@load.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1=
/shard-rkl-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@i915_mod=
ule_load@load.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-dg2-10/igt@i915_suspend@basic-s3-without-i915.html">ABO=
RT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
15131">i915#15131</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_156997v1/shard-dg2-8/igt@i915_suspend@basic-s3-without-i915=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-dg2-11/igt@kms_async_flips@async-flip-suspend-resume.ht=
ml">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_156997v1/shard-dg2-11/igt@kms_async_flips@async-flip-suspend-resume.h=
tml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_atomic_transition@plane-use-after-nonbloc=
king-unbind.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_atomic_tra=
nsition@plane-use-after-nonblocking-unbind.html">PASS</a> +54 other tests p=
ass</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_color@ctm-green-to-red.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i91=
5#12655</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_color@ctm-green-to-red.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-1x:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_feature_discovery@display-1x.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/9738">i915#9738</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_feature_discovery@di=
splay-1x.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html=
">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14033">i915#14033</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14350">i915#14350</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-snb6/igt@kms_flip@2x-=
flip-vs-suspend-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-snb5/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.ht=
ml">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14033">i915#14033</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_156997v1/shard-snb7/igt@kms_flip@2x-flip-vs-suspen=
d@ab-vga1-hdmi-a1.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3637">i915#3637</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_flip@basic-flip-vs-w=
f_vblank.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl=
-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html=
">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-p=
write.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rk=
l-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html">PASS</a> +=
5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-end.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/8826">i915#8826</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_invalid_=
mode@bad-hsync-end.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/11190">i915#11190</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_pipe_crc=
_basic@read-crc-frame-sequence.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-mtlp-2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-e=
dp-1.html">DMESG-WARN</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_156997v1/shard-mtlp-3/igt@kms_pipe_crc_basic@suspend-rea=
d-crc@pipe-c-edp-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@planar-pixel-format-settings:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_plane@planar-pixel-format-settings.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9581">i915#9581</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_plane@planar-p=
ixel-format-settings.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_plane@plane-position-covered.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8825">i915#8825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_plane@plane-position=
-covered.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-mid:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_plane_alpha_blend@constant-alpha-mid.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/7294">i915#7294</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_plane_alpha_=
blend@constant-alpha-mid.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-num-scalers:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_plane_scaling@invalid-num-scalers.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-r=
kl-5/igt@kms_plane_scaling@invalid-num-scalers.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-parameters:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_plane_scaling@invalid-parameters.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/8152">i915#8152</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_plane_scaling@in=
valid-parameters.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-5.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">=
i915#6953</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/8152">i915#8152</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_plane_scaling@planes-ups=
cale-20x20-downscale-factor-0-5.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-5@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shar=
d-rkl-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pip=
e-a.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-75.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152"=
>i915#8152</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_156997v1/shard-rkl-8/igt@kms_plane_scaling@planes-upscale-20x20-do=
wnscale-factor-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-75@pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8=
152</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_156997v1/shard-rkl-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale=
-factor-0-75@pipe-b.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_pm_rpm@cursor-dpms.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/1849">i915#1849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_pm_rpm@cursor-dpms.html">PASS<=
/a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-dg1-18/igt@kms_pm_rpm@i2c.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
56997v1/shard-dg1-12/igt@kms_pm_rpm@i2c.html">PASS</a> +1 other test pass</=
li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073"=
>i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_156997v1/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html">PAS=
S</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-glk8/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a=
-hdmi-a-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/12276">i915#12276</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-glk5/igt@kms_vblank@=
ts-continuation-dpms-suspend@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling@0-rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@perf@polling@0-rcs0.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915=
#12964</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_156997v1/shard-rkl-5/igt@perf@polling@0-rcs0.html">PASS</a> +9 other t=
ests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@api_intel_bb@blit-reloc-purge-cache.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8=
411">i915#8411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_156997v1/shard-rkl-6/igt@api_intel_bb@blit-reloc-purge-cache.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@device_reset@unbind-cold-reset-rebind.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/11078">i915#11078</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@device_reset@unbi=
nd-cold-reset-rebind.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@gem_ccs@block=
-copy-compressed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@gem_ccs@block-multicopy-compressed.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/93=
23">i915#9323</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_156997v1/shard-rkl-6/igt@gem_ccs@block-multicopy-compressed.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#355=
5</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9323">i915#9323</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_156997v1/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/9323">i915#9323</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_156997v1/shard-rkl-8/igt@gem_ccs@suspend-resume.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/932=
3">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@gem_close_race@multigpu-basic-process.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/7697">i915#7697</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@gem_close_race@mult=
igpu-basic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@gem_create@create-ext-cpu-access-sanity-check=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/6335">i915#6335</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_create@create-ext-cpu-a=
ccess-sanity-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@gem_create@create-ext-set-pat.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/8562">i915#8562</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@gem_create@create-ext-set-p=
at.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#2=
80</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_156997v1/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/280">i915#280</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_156997v1/shard-rkl-5/igt@gem_ctx_sseu@mmap-args.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">=
i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@gem_exec_balancer@parallel-balancer.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_156997v1/shard-rkl-6/igt@gem_exec_balancer@parallel-balancer.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4525">i915#4525</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@gem_exec_balancer@par=
allel-contexts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-read.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i=
915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_156997v1/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-noreloc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@gem_exec_reloc@ba=
sic-write-read-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@gem_exec_schedule@semaphore-power.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/727=
6">i915#7276</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_156997v1/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/7276">i915#7276</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
56997v1/shard-rkl-6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190"=
>i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-multi.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
4613">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_156997v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@gem_lmem_swa=
pping@parallel-random-verify-ccs.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_partial_pwrite_pread@writ=
es-after-reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +3 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-u=
ncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@gem_=
partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a=
>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-buffer:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@gem_pxp@create-regular-buffer.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i=
915#4270</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_156997v1/shard-rkl-6/igt@gem_pxp@create-regular-buffer.html">TIMEOUT=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
917">i915#12917</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-4/igt@gem_userptr_blits@coherency-unsync.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/32=
97">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_156997v1/shard-rkl-6/igt@gem_userptr_blits@coherency-unsync.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3297">i915#3297</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i=
915#3297</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3323">i915#3323</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_userptr_blits@dmabuf-sync=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-4/igt@gem_userptr_blits@forbidden-operations.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3282">i915#3282</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3297">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@gem_userptr_blits@fo=
rbidden-operations.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a=
>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@gem_userptr_blits@readonly-pwrite-unsync.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@gem_userptr_blit=
s@readonly-pwrite-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@gen9_exec_parse@bb-secure.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/2527">i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@gen9_exec_parse@bb-secure.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/2527">i915#2527</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i91=
5#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_156997v1/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/8399">i915#8399</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@i915_pm_freq_api@freq-reset.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i=
915#8399</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_156997v1/shard-rkl-6/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-idle.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498"=
>i915#14498</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_156997v1/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4498">i915#14498</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#=
14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/4387">i915#4387</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_156997v1/shard-rkl-5/igt@i915_pm_sseu@full-enable.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@i915_power@sanity.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/798=
4">i915#7984</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_156997v1/shard-rkl-8/igt@i915_power@sanity.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984">i915#79=
84</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-fencing-internal-panels.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/=
shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-=
internal-panels.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/528=
6">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_156997v1/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate=
-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_big_fb@4-tile=
d-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +5 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_156997v1/shard-rkl-8/igt@kms_big_fb@linear-8bpp-rotate-270.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/36=
38">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_156997v1/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-c=
c.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_ccs@ba=
d-pixel-format-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +11 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/12313">i915#12313</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-t=
iled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_ccs@crc-primary-suspend=
-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_ccs@missing-ccs-buffe=
r-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +11 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled=
-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pi=
pe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-3/igt@kms_ccs@random=
-ccs-data-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">=
i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_cdclk@mode-transition.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3742">i915#3742</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_cdclk@mode-transition.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@kms_cdclk@mode-transition-all-outputs.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3742">i915#3742</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_cdclk@mode-transition-all-outpu=
ts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-multiple:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@kms_chamelium_frames@hdmi-crc-multiple.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_chamelium_fram=
es@hdmi-crc-multiple.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#782=
8</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8=
/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#111=
51</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/7828">i915#7828</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@kms_content_protection@content-type-change.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9424">i915#9424</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_content_protection@content=
-type-change.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-0.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3116">i915#3116</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_content_protection@dp-mst-li=
c-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_content_protection@dp-mst-=
lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_content_protection@mei-interface.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_content_protection@mei-interfa=
ce.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9424">i915#9424</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@kms_content_protection@uevent.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i=
915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9424">i915#9424</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_content_protection@uevent=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-128x42.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-12=
8x42.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x85.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13566">i915#13566</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-25=
6x85.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-max-size.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_156997v1/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-=
max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3555">i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x512.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_cursor_crc@cursor-random-512x5=
12.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/13049">i915#13049</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@kms_cursor_crc@cursor-rapid-movement-32x10.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-mo=
vement-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-512x512.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13049">i915#13049</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512=
x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-3/igt@kms_cursor_crc@cursor-suspend.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
2358">i915#12358</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14152">i915#14152</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_cursor_crc@curs=
or-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs=
-cursor-legacy.html">SKIP</a> +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.htm=
l">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_156997v1/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_display_modes@extended-mode-basic.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_display_modes@extended-mode-b=
asic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13691">i915#13691</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_156997v1/shard-rkl-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-sst:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@kms_dp_link_training@uhbr-sst.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">=
i915#13748</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_156997v1/shard-rkl-6/igt@kms_dp_link_training@uhbr-sst.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dsc-fallback:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_dp_linktrain_fallback@dsc-fa=
llback.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_156997v1/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i91=
5#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@kms_feature_discovery@display-3x.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839=
">i915#1839</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_156997v1/shard-rkl-6/igt@kms_feature_discovery@display-3x.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-dg1-15/igt@kms_flip@2x-blocking-absolute-wf_vblank-inte=
rruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg1-19/igt@kms=
_flip@2x-blocking-absolute-wf_vblank-interruptible.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_flip@2x-flip-vs-panning-vs-hang.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_flip@2x-flip-vs-p=
anning-vs-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9934">i915#9934</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@kms_flip@2x-plain-flip-interruptible.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_156997v1/shard-rkl-6/igt@kms_flip@2x-plain-flip-interruptible=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9934">i915#9934</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp=
-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/s=
hard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-=
downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/2672">i915#2672</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp=
-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard=
-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upsc=
aling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_f=
rontbuffer_tracking@fbc-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>) +1 other test=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-c=
ur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#535=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
156997v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-in=
dfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +16 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-c=
ur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_f=
rontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/5354">i915#5354</a>) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-=
spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-=
dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-=
gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8708">i915#8708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-s=
pr-indfb-onoff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1=
/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onof=
f.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/1825">i915#1825</a>) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/10433">i915#10433</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-3/igt@k=
ms_frontbuffer_tracking@fbcpsr-suspend.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3=
458</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-dg2-4/igt@kms_frontbuffer_=
tracking@fbcpsr-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915=
#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri=
-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_frontb=
uffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:</=
p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri=
-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_f=
rontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102"=
>i915#15102</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indf=
b-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt=
@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/5354">i915#5354</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915=
#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/8228">i915#8228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_hdr@static-toggle-dpms.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html">ABORT</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132=
">i915#15132</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_156997v1/shard-dg2-3/igt@kms_hdr@static-toggle-suspend.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3=
555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-4/igt@kms_joiner@basic-force-ultra-joiner.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
2394">i915#12394</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_joiner@basic-force-ultra-joiner=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12394">i915#12394</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">=
i915#12339</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_joiner@basic-ultra-jo=
iner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/12339">i915#12339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@kms_joiner@invalid-modeset-big-joiner.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/10656">i915#10656</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_joiner@invalid-modeset-big-jo=
iner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/10656">i915#10656</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12394">i915#12394</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_joine=
r@invalid-modeset-force-ultra-joiner.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/12394">i915#12394</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@kms_joiner@switch-modeset-ultra-joiner-big-jo=
iner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13522">i915#13522</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_joiner@switch-mod=
eset-ultra-joiner-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/13522">i915#13522</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/4816">i915#4816</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/4070">i915#4070</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_156997v1/shard-rkl-8/igt@kms_panel_fitting@atomic-fastset.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-none:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-none.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/139=
58">i915#13958</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_156997v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-4:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_plane_multiple@tiling-4.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_156997v1/shard-rkl-8/igt@kms_plane_multiple@tiling-4.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">=
i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a:</=
p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-unity-scaling-=
with-rotation@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_p=
lane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247"=
>i915#12247</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:</=
p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-unity-scaling-=
with-rotation@pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_p=
lane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247"=
>i915#12247</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/8152">i915#8152</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-ro=
tation@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5=
/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/122=
47">i915#12247</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-ro=
tation@pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v=
1/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-=
b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/12247">i915#12247</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@kms_pm_backlight@fade-with-dpms.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354"=
>i915#5354</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_156997v1/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@kms_pm_dc@dc5-psr.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699=
7v1/shard-rkl-6/igt@kms_pm_dc@dc5-psr.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#96=
85</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/12964">i915#12964</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_156997v1/shard-rkl-3/igt@kms_pm_rpm@dpms-mode-unset-lpsp.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#1=
5073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_156997v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuo=
us-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-r=
kl-8/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/11520">i915#11520</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dm=
g-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/11520">i915#11520</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-=
primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683=
">i915#9683</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_156997v1/shard-rkl-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-primary-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-5/igt@kms_psr@fbc-psr2-primary-blt.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i9=
15#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@kms_psr@fbc-psr2-primary-blt.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +14 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_psr@psr2-primary-mmap-gtt.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i=
915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_psr@psr2-=
primary-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +20 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_p=
sr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-9=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_rotation_crc@primary=
-yf-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@kms_setmode@clone-exclusive-crtc.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555=
">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_156997v1/shard-rkl-6/igt@kms_setmode@clone-exclusive-crtc.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sharpness_filter@filter-modifiers:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_sharpness_filter@filter-modifiers.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_sharpness_filter@filter-modif=
iers.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/15232">i915#15232</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_sharpness_filter@filter-tap:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@kms_sharpness_filter@filter-tap.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15232=
">i915#15232</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_156997v1/shard-rkl-6/igt@kms_sharpness_filter@filter-tap.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@wait-busy-hang:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_vblank@wait-busy-hang.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_156997v1/shard-rkl-5/igt@kms_vblank@wait-busy-hang.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964=
">i915#12964</a>) +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_156997v1/shard-rkl-5/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i91=
5#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-8/igt@kms_writeback@writeback-fb-id.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i=
915#2437</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_156997v1/shard-rkl-6/igt@kms_writeback@writeback-fb-id.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2437">i915#2437</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_writeback@writeback-invalid-parameters.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/2437">i915#2437</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@kms_writeback@=
writeback-invalid-parameters.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@kms_writeback@writeback-pixel-formats.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9412">i915#9412</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-8/igt@kms_w=
riteback@writeback-pixel-formats.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)=
</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@perf@gen8-unprivileged-single-ctx-counters.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/2436">i915#2436</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_156997v1/shard-rkl-6/igt@perf@gen8-unprivileged-single-=
ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-4/igt@perf@mi-rpc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434">i915#2434</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/sh=
ard-rkl-6/igt@perf@mi-rpc.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434">i915#2434</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#=
14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3708">i915#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_156997v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-7/igt@prime_vgem@fence-flip-hang.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915=
#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_156997v1/shard-rkl-6/igt@prime_vgem@fence-flip-hang.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17481/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-off.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9917">i915#9917</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_156997v1/shard-rkl-5/igt@sriov_basic@enable-v=
fs-autoprobe-off.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17481 -&gt; Patchwork_156997v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17481: 3512eb46a8d42c3deb477856c25d519b19a7d165 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_8606: 7f516488d66a52df3b3027d5c02c5be298424b78 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_156997v1: 3512eb46a8d42c3deb477856c25d519b19a7d165 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8657335566426738374==--
