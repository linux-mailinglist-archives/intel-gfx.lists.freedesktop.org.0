Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE85C436AB
	for <lists+intel-gfx@lfdr.de>; Sun, 09 Nov 2025 01:12:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 823D210E07A;
	Sun,  9 Nov 2025 00:12:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 10055242dc62 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B472A10E07A;
 Sun,  9 Nov 2025 00:12:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4978954291266777608=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/display=3A_Add_?=
 =?utf-8?q?initial_support_for_Xe3p=5FLPD_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 09 Nov 2025 00:12:12 -0000
Message-ID: <176264713270.33229.1803526917527070686@10055242dc62>
X-Patchwork-Hint: ignore
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
In-Reply-To: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
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

--===============4978954291266777608==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Add initial support for Xe3p_LPD (rev4)
URL   : https://patchwork.freedesktop.org/series/155952/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17515_full -> Patchwork_155952v4_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_155952v4_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_155952v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 11)
------------------------------

  Missing    (1): shard-snb-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_155952v4_full:

### IGT changes ###

#### Possible regressions ####

  * igt@panthor/panthor_gem@bo_mmap_offset:
    - shard-dg2:          NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@panthor/panthor_gem@bo_mmap_offset.html

  * igt@vgem_basic@unload:
    - shard-snb:          NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-snb6/igt@vgem_basic@unload.html

  
#### Warnings ####

  * igt@panthor/panthor_vm@vm_create_destroy:
    - shard-rkl:          [SKIP][3] ([i915#14544]) -> [SKIP][4] +3 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@panthor/panthor_vm@vm_create_destroy.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@panthor/panthor_vm@vm_create_destroy.html

  
Known issues
------------

  Here are the changes found in Patchwork_155952v4_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#14544] / [i915#8411])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache.html
    - shard-mtlp:         NOTRUN -> [SKIP][6] ([i915#8411])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-6/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-rkl:          NOTRUN -> [SKIP][7] ([i915#8411])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@drm_buddy@drm_buddy:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][8] ([i915#15095]) +1 other test dmesg-warn
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@drm_buddy@drm_buddy.html

  * igt@fbdev@eof:
    - shard-rkl:          [PASS][9] -> [SKIP][10] ([i915#14544] / [i915#2582]) +1 other test skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-4/igt@fbdev@eof.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@fbdev@eof.html

  * igt@fbdev@info:
    - shard-rkl:          [PASS][11] -> [SKIP][12] ([i915#14544] / [i915#1849] / [i915#2582])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@fbdev@info.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@fbdev@info.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#3281]) +2 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][14] ([i915#12392] / [i915#13356])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-1/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#7697])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_eio@in-flight-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][16] ([i915#13390])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk5/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@kms:
    - shard-tglu:         NOTRUN -> [DMESG-WARN][17] ([i915#13363])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#4771])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#4525])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
    - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#14544] / [i915#4525])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
    - shard-tglu:         NOTRUN -> [SKIP][21] ([i915#4525])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-tglu-1:       NOTRUN -> [SKIP][22] ([i915#4525])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_capture@capture-invisible:
    - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#6334]) +2 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@gem_exec_capture@capture-invisible.html

  * igt@gem_exec_flush@basic-wb-pro-default:
    - shard-rkl:          [PASS][24] -> [DMESG-WARN][25] ([i915#12964]) +11 other tests dmesg-warn
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@gem_exec_flush@basic-wb-pro-default.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_exec_flush@basic-wb-pro-default.html

  * igt@gem_exec_gttfill@basic:
    - shard-rkl:          [PASS][26] -> [DMESG-WARN][27] ([i915#12917] / [i915#12964]) +1 other test dmesg-warn
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_exec_gttfill@basic.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_reloc@basic-cpu-read:
    - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#14544] / [i915#3281]) +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-read.html

  * igt@gem_exec_reloc@basic-gtt-read-active:
    - shard-mtlp:         NOTRUN -> [SKIP][29] ([i915#3281])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-6/igt@gem_exec_reloc@basic-gtt-read-active.html

  * igt@gem_exec_reloc@basic-write-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#3281]) +1 other test skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@gem_exec_reloc@basic-write-gtt.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-tglu:         NOTRUN -> [SKIP][31] ([i915#4613] / [i915#7582])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-glk:          NOTRUN -> [SKIP][32] ([i915#4613]) +3 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk5/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-tglu:         NOTRUN -> [SKIP][33] ([i915#4613])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#4613]) +1 other test skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap_gtt@basic-small-bo:
    - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#4077]) +9 other tests skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@gem_mmap_gtt@basic-small-bo.html

  * igt@gem_mmap_wc@invalid-flags:
    - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#4083]) +5 other tests skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@gem_mmap_wc@invalid-flags.html

  * igt@gem_mmap_wc@set-cache-level:
    - shard-rkl:          [PASS][37] -> [SKIP][38] ([i915#14544] / [i915#1850])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@gem_mmap_wc@set-cache-level.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_pread@exhaustion:
    - shard-glk:          NOTRUN -> [WARN][39] ([i915#2658])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk5/igt@gem_pread@exhaustion.html

  * igt@gem_pread@snoop:
    - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#3282]) +2 other tests skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@gem_pread@snoop.html

  * igt@gem_pread@uncached:
    - shard-rkl:          NOTRUN -> [SKIP][41] ([i915#3282])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@gem_pread@uncached.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-tglu:         NOTRUN -> [WARN][42] ([i915#2658])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@display-protected-crc:
    - shard-rkl:          [PASS][43] -> [TIMEOUT][44] ([i915#12917] / [i915#12964]) +2 other tests timeout
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-8/igt@gem_pxp@display-protected-crc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-7/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#13717])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#4270])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_readwrite@beyond-eob:
    - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#14544] / [i915#3282])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_readwrite@beyond-eob.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#5190] / [i915#8428]) +1 other test skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#3297])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-tglu:         NOTRUN -> [SKIP][50] ([i915#3297]) +1 other test skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gem_workarounds@suspend-resume:
    - shard-rkl:          [PASS][51] -> [ABORT][52] ([i915#15152])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-7/igt@gem_workarounds@suspend-resume.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-4/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-tglu-1:       NOTRUN -> [SKIP][53] ([i915#2527] / [i915#2856])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#2527])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-tglu:         NOTRUN -> [SKIP][55] ([i915#2527] / [i915#2856]) +1 other test skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@gen9_exec_parse@bb-secure.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#2856]) +2 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_module_load@resize-bar:
    - shard-tglu-1:       NOTRUN -> [SKIP][57] ([i915#6412])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#6590]) +1 other test skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-tglu:         [PASS][59] -> [WARN][60] ([i915#13790] / [i915#2681]) +1 other test warn
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-fence.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-10/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rps@thresholds-idle-park:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#11681])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@i915_pm_rps@thresholds-idle-park.html

  * igt@i915_query@hwconfig_table:
    - shard-tglu-1:       NOTRUN -> [SKIP][62] ([i915#6245])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@i915_query@hwconfig_table.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-tglu:         NOTRUN -> [SKIP][63] ([i915#5723])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [PASS][64] -> [DMESG-FAIL][65] ([i915#12061]) +1 other test dmesg-fail
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-mtlp-7/igt@i915_selftest@live@workarounds.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-5/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-rkl:          [PASS][66] -> [INCOMPLETE][67] ([i915#4817])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-8/igt@i915_suspend@fence-restore-untiled.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-3/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#5190]) +2 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#4215] / [i915#5190])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#1769] / [i915#3555])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-glk10:        NOTRUN -> [SKIP][71] ([i915#1769])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk10/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#5286]) +1 other test skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
    - shard-tglu-1:       NOTRUN -> [SKIP][73] ([i915#5286]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][74] ([i915#5286]) +2 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [PASS][75] -> [FAIL][76] ([i915#5138])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#14544]) +34 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#3638]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#4538] / [i915#5190]) +5 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-4/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][81] ([i915#6095]) +29 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#6095]) +126 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-19/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#10307] / [i915#6095]) +104 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#4423] / [i915#6095])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#6095]) +29 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][86] ([i915#12805])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:
    - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#6095]) +14 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][88] ([i915#12796]) +1 other test incomplete
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk6/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#6095]) +8 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][90] ([i915#12313])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#14098] / [i915#6095]) +41 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#6095]) +49 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
    - shard-glk10:        NOTRUN -> [SKIP][93] +56 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk10/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#13781]) +3 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-7/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_cdclk@plane-scaling:
    - shard-tglu:         NOTRUN -> [SKIP][95] ([i915#3742])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@kms_cdclk@plane-scaling.html

  * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#13783]) +3 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-1/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html

  * igt@kms_chamelium_audio@dp-audio-edid:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#11151] / [i915#14544] / [i915#7828]) +1 other test skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_chamelium_audio@dp-audio-edid.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
    - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#11151] / [i915#7828])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#11151] / [i915#7828]) +7 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-tglu:         NOTRUN -> [SKIP][100] ([i915#11151] / [i915#7828]) +3 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
    - shard-tglu-1:       NOTRUN -> [SKIP][101] ([i915#11151] / [i915#7828]) +2 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html

  * igt@kms_color@ctm-0-75:
    - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#12655] / [i915#14544])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_color@ctm-0-75.html

  * igt@kms_color@deep-color:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#12655] / [i915#3555])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic:
    - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][105] ([i915#7173]) +1 other test fail
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-10/igt@kms_content_protection@atomic-dpms@pipe-a-dp-3.html

  * igt@kms_content_protection@content-type-change:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#9424])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][107] ([i915#3116] / [i915#3299])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-tglu-1:       NOTRUN -> [SKIP][108] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@cursor-offscreen-256x85:
    - shard-rkl:          [PASS][109] -> [SKIP][110] ([i915#14544]) +46 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-256x85.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-256x85.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#13049])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][112] ([i915#13566])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-tglu-1:       NOTRUN -> [SKIP][113] ([i915#13049]) +1 other test skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#13049])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-256x85:
    - shard-tglu:         [PASS][115] -> [FAIL][116] ([i915#13566]) +1 other test fail
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-256x85.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-256x85.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#3555]) +2 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-max-size:
    - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#3555] / [i915#8814])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-6/igt@kms_cursor_crc@cursor-sliding-max-size.html

  * igt@kms_cursor_crc@cursor-suspend:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][119] ([i915#12358] / [i915#14152] / [i915#7882])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk10/igt@kms_cursor_crc@cursor-suspend.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][120] ([i915#12358] / [i915#14152])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk10/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][121] +2 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - shard-rkl:          [PASS][122] -> [SKIP][123] ([i915#11190] / [i915#14544])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#13046] / [i915#5354]) +3 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          NOTRUN -> [FAIL][125] ([i915#2346])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#9067])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-tglu-1:       NOTRUN -> [SKIP][127] ([i915#4103])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#4103])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#9833])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dp_link_training@non-uhbr-mst:
    - shard-tglu-1:       NOTRUN -> [SKIP][130] ([i915#13749])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-mst.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-tglu:         NOTRUN -> [SKIP][131] ([i915#13748])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_dp_link_training@uhbr-sst:
    - shard-tglu-1:       NOTRUN -> [SKIP][132] ([i915#13748])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_dp_link_training@uhbr-sst.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-tglu-1:       NOTRUN -> [SKIP][133] ([i915#13707])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#3840])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#3555] / [i915#3840])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#3555] / [i915#3840])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_feature_discovery@display-4x:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#1839])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_feature_discovery@display-4x.html

  * igt@kms_flip@2x-dpms-vs-vblank-race:
    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#9934]) +1 other test skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_flip@2x-dpms-vs-vblank-race.html

  * igt@kms_flip@2x-flip-vs-dpms-on-nop:
    - shard-tglu:         NOTRUN -> [SKIP][139] ([i915#9934])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@kms_flip@2x-flip-vs-dpms-on-nop.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][140] ([i915#8381])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-6/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][141] ([i915#3637] / [i915#9934]) +2 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-snb:          [PASS][142] -> [TIMEOUT][143] ([i915#14033] / [i915#14350])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][144] -> [TIMEOUT][145] ([i915#14033])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-plain-flip:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#9934]) +4 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-tglu:         NOTRUN -> [SKIP][147] ([i915#3637] / [i915#9934]) +3 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#14544] / [i915#9934]) +2 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank:
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#14544] / [i915#3637]) +2 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_flip@flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@flip-vs-panning-interruptible@b-hdmi-a2:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][150] ([i915#12964]) +3 other tests dmesg-warn
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_flip@flip-vs-panning-interruptible@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-rkl:          [PASS][151] -> [SKIP][152] ([i915#14544] / [i915#3637]) +3 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_flip@flip-vs-suspend.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk:          NOTRUN -> [INCOMPLETE][153] ([i915#12745] / [i915#4839])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk9/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][154] ([i915#12745])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk9/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][155] ([i915#2672] / [i915#3555]) +1 other test skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#2672] / [i915#3555])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#2587] / [i915#2672])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][158] ([i915#2587] / [i915#2672]) +2 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][159] ([i915#2587] / [i915#2672] / [i915#3555])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#2672]) +4 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#2672] / [i915#3555] / [i915#5190]) +2 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#2672]) +3 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-rkl:          [PASS][163] -> [SKIP][164] ([i915#14544] / [i915#3555]) +1 other test skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#14544] / [i915#3555])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#2672] / [i915#3555])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-render:
    - shard-dg1:          [PASS][167] -> [DMESG-WARN][168] ([i915#4423]) +8 other tests dmesg-warn
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-render.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#14544] / [i915#1849] / [i915#5354]) +15 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#1825])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:
    - shard-rkl:          [PASS][171] -> [SKIP][172] ([i915#14544] / [i915#1849] / [i915#5354]) +7 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][173] ([i915#8708])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#15104])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#15102] / [i915#3023]) +2 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][176] +30 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#5354]) +16 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][178] +28 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#8708]) +1 other test skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-tglu-1:       NOTRUN -> [SKIP][180] ([i915#9766])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-wc:
    - shard-tglu-1:       NOTRUN -> [SKIP][181] ([i915#15102]) +11 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#15102]) +1 other test skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#15102])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#1825]) +9 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-msflip-blt:
    - shard-snb:          NOTRUN -> [SKIP][185] +63 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-snb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#15102] / [i915#3458]) +10 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
    - shard-tglu:         NOTRUN -> [SKIP][187] ([i915#15102]) +9 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][188] ([i915#3555] / [i915#8228])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#3555] / [i915#8228])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_invalid_mode@bad-hsync-end:
    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#14544] / [i915#3555] / [i915#8826])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-end.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][191] ([i915#10656])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][192] ([i915#12388])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#10656])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglu-1:       NOTRUN -> [SKIP][194] ([i915#1839])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
    - shard-dg2:          NOTRUN -> [SKIP][195] +8 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#11190] / [i915#14544])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html

  * igt@kms_plane@plane-panning-top-left:
    - shard-rkl:          [PASS][197] -> [SKIP][198] ([i915#14544] / [i915#8825])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_plane@plane-panning-top-left.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane@plane-panning-top-left.html

  * igt@kms_plane_alpha_blend@alpha-7efc:
    - shard-rkl:          [PASS][199] -> [SKIP][200] ([i915#14544] / [i915#7294])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_plane_alpha_blend@alpha-7efc.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-7efc.html

  * igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:
    - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#14544] / [i915#7294])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html

  * igt@kms_plane_multiple@2x-tiling-y:
    - shard-tglu-1:       NOTRUN -> [SKIP][202] ([i915#13958])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-y.html

  * igt@kms_plane_multiple@2x-tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#13958])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_plane_multiple@2x-tiling-yf.html

  * igt@kms_plane_multiple@tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][204] ([i915#14259])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_plane_multiple@tiling-4.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#6953] / [i915#9423])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-a:
    - shard-rkl:          [PASS][206] -> [SKIP][207] ([i915#12247] / [i915#14544]) +3 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-a.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-a.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#14544] / [i915#8152])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#12247] / [i915#14544]) +1 other test skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:
    - shard-rkl:          [PASS][210] -> [SKIP][211] ([i915#14544] / [i915#8152]) +1 other test skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#12247] / [i915#14544] / [i915#8152]) +2 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
    - shard-tglu:         NOTRUN -> [SKIP][213] ([i915#12247]) +4 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20:
    - shard-rkl:          [PASS][214] -> [SKIP][215] ([i915#14544] / [i915#6953] / [i915#8152])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-20x20.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20.html

  * igt@kms_plane_scaling@planes-upscale-20x20@pipe-b:
    - shard-rkl:          [PASS][216] -> [SKIP][217] ([i915#12247] / [i915#14544] / [i915#8152]) +4 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-20x20@pipe-b.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20@pipe-b.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][218] ([i915#9812])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][219] ([i915#9812])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#3828])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-tglu-1:       NOTRUN -> [SKIP][221] ([i915#3828])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#8430])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#14544] / [i915#15073])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          [PASS][224] -> [SKIP][225] ([i915#15073]) +1 other test skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-tglu:         NOTRUN -> [SKIP][226] ([i915#15073]) +1 other test skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_prime@basic-crc-vgem:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#14544] / [i915#6524])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_prime@basic-crc-vgem.html

  * igt@kms_properties@plane-properties-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][228] ([i915#11521] / [i915#14544])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_properties@plane-properties-legacy.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:
    - shard-glk:          NOTRUN -> [SKIP][229] ([i915#11520]) +9 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk6/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
    - shard-snb:          NOTRUN -> [SKIP][230] ([i915#11520]) +1 other test skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-snb6/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#11520] / [i915#14544])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:
    - shard-glk10:        NOTRUN -> [SKIP][232] ([i915#11520]) +1 other test skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk10/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#11520]) +2 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][234] ([i915#11520]) +3 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][235] ([i915#11520]) +3 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#11520]) +3 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr@fbc-pr-cursor-plane-onoff:
    - shard-tglu-1:       NOTRUN -> [SKIP][237] ([i915#9732]) +11 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_psr@fbc-pr-cursor-plane-onoff.html

  * igt@kms_psr@fbc-psr-cursor-plane-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][238] ([i915#9732]) +10 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_psr@fbc-psr-cursor-plane-onoff.html

  * igt@kms_psr@fbc-psr-sprite-plane-move:
    - shard-mtlp:         NOTRUN -> [SKIP][239] ([i915#9688]) +3 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-6/igt@kms_psr@fbc-psr-sprite-plane-move.html

  * igt@kms_psr@fbc-psr2-cursor-mmap-gtt:
    - shard-glk:          NOTRUN -> [SKIP][240] +327 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk5/igt@kms_psr@fbc-psr2-cursor-mmap-gtt.html

  * igt@kms_psr@fbc-psr2-sprite-blt:
    - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#1072] / [i915#14544] / [i915#9732]) +7 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-blt.html

  * igt@kms_psr@pr-sprite-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][242] ([i915#1072] / [i915#9732]) +3 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_psr@pr-sprite-mmap-gtt.html

  * igt@kms_psr@psr2-no-drrs:
    - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#1072] / [i915#9732]) +10 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_psr@psr2-no-drrs.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#9685])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#12755]) +1 other test skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_scaling_modes@scaling-mode-full-aspect:
    - shard-tglu:         NOTRUN -> [SKIP][246] ([i915#3555]) +2 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@kms_scaling_modes@scaling-mode-full-aspect.html

  * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:
    - shard-glk10:        NOTRUN -> [ABORT][247] ([i915#13179]) +1 other test abort
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk10/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html

  * igt@kms_sharpness_filter@filter-basic:
    - shard-rkl:          NOTRUN -> [SKIP][248] ([i915#15232])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_sharpness_filter@filter-basic.html

  * igt@kms_sharpness_filter@filter-modifiers:
    - shard-tglu:         NOTRUN -> [SKIP][249] ([i915#15232])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@kms_sharpness_filter@filter-modifiers.html

  * igt@kms_sharpness_filter@filter-strength:
    - shard-tglu-1:       NOTRUN -> [SKIP][250] ([i915#15232])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_sharpness_filter@filter-strength.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-tglu-1:       NOTRUN -> [SKIP][251] ([i915#9906])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@max-min:
    - shard-tglu:         NOTRUN -> [SKIP][252] ([i915#9906]) +1 other test skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_vrr@max-min.html

  * igt@kms_writeback@writeback-check-output:
    - shard-tglu-1:       NOTRUN -> [SKIP][253] ([i915#2437])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-glk:          NOTRUN -> [SKIP][254] ([i915#2437])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk6/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-rkl:          NOTRUN -> [SKIP][255] ([i915#2435])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@perf@per-context-mode-unprivileged.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [PASS][256] -> [FAIL][257] ([i915#4349]) +4 other tests fail
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-5/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@event-wait:
    - shard-mtlp:         NOTRUN -> [SKIP][258] ([i915#8807])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-6/igt@perf_pmu@event-wait.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][259] ([i915#3555] / [i915#8807])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-6/igt@perf_pmu@event-wait@rcs0.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2:          NOTRUN -> [FAIL][260] ([i915#12549] / [i915#6806]) +1 other test fail
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@perf_pmu@frequency@gt0.html

  * igt@prime_vgem@basic-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#3708] / [i915#4077])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@prime_vgem@basic-gtt.html

  * igt@sriov_basic@bind-unbind-vf@vf-1:
    - shard-tglu-1:       NOTRUN -> [FAIL][262] ([i915#12910]) +9 other tests fail
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-tglu:         NOTRUN -> [FAIL][263] ([i915#12910])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
#### Possible fixes ####

  * igt@fbdev@nullptr:
    - shard-rkl:          [SKIP][264] ([i915#14544] / [i915#2582]) -> [PASS][265]
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@fbdev@nullptr.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@fbdev@nullptr.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [INCOMPLETE][266] ([i915#12392] / [i915#13356]) -> [PASS][267]
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-dg2:          [INCOMPLETE][268] ([i915#13356]) -> [PASS][269] +1 other test pass
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg2-5/igt@gem_exec_suspend@basic-s0@smem.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [TIMEOUT][270] ([i915#5493]) -> [PASS][271] +1 other test pass
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-rkl:          [DMESG-WARN][272] ([i915#12964]) -> [PASS][273] +9 other tests pass
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_mmap_gtt@fault-concurrent.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-rkl:          [SKIP][274] ([i915#14544] / [i915#4270]) -> [PASS][275] +1 other test pass
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_pxp@create-protected-buffer.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-rkl:          [TIMEOUT][276] ([i915#12917] / [i915#12964]) -> [PASS][277] +1 other test pass
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-2/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [INCOMPLETE][278] ([i915#13356] / [i915#13820]) -> [PASS][279] +1 other test pass
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [INCOMPLETE][280] ([i915#4817]) -> [PASS][281]
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html

  * igt@i915_suspend@forcewake:
    - shard-rkl:          [ABORT][282] ([i915#15140]) -> [PASS][283]
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-4/igt@i915_suspend@forcewake.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [FAIL][284] ([i915#5138]) -> [PASS][285]
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_color@ctm-green-to-red:
    - shard-rkl:          [SKIP][286] ([i915#12655] / [i915#14544]) -> [PASS][287] +1 other test pass
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_color@ctm-green-to-red.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_color@ctm-green-to-red.html

  * igt@kms_cursor_crc@cursor-onscreen-256x256:
    - shard-rkl:          [SKIP][288] ([i915#14544]) -> [PASS][289] +47 other tests pass
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x256.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x256.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][290] ([i915#2346]) -> [PASS][291]
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-rkl:          [SKIP][292] ([i915#14544] / [i915#3637]) -> [PASS][293] +6 other tests pass
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-rkl:          [SKIP][294] ([i915#14544] / [i915#3555]) -> [PASS][295] +1 other test pass
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-rkl:          [SKIP][296] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][297] +10 other tests pass
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [SKIP][298] ([i915#3555] / [i915#8228]) -> [PASS][299] +1 other test pass
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg2-7/igt@kms_hdr@static-toggle-suspend.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_invalid_mode@overflow-vrefresh:
    - shard-rkl:          [SKIP][300] ([i915#14544] / [i915#8826]) -> [PASS][301]
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_invalid_mode@overflow-vrefresh.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_invalid_mode@overflow-vrefresh.html

  * igt@kms_invalid_mode@zero-clock:
    - shard-rkl:          [SKIP][302] ([i915#14544] / [i915#3555] / [i915#8826]) -> [PASS][303] +2 other tests pass
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_invalid_mode@zero-clock.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_invalid_mode@zero-clock.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg2:          [SKIP][304] ([i915#12388]) -> [PASS][305]
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg2-7/igt@kms_joiner@invalid-modeset-force-big-joiner.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-10/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - shard-rkl:          [SKIP][306] ([i915#11190] / [i915#14544]) -> [PASS][307]
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_pipe_crc_basic@hang-read-crc.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_plane@planar-pixel-format-settings:
    - shard-rkl:          [SKIP][308] ([i915#14544] / [i915#9581]) -> [PASS][309]
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_plane@planar-pixel-format-settings.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_plane@planar-pixel-format-settings.html

  * igt@kms_plane@plane-position-hole:
    - shard-rkl:          [SKIP][310] ([i915#14544] / [i915#8825]) -> [PASS][311]
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_plane@plane-position-hole.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_plane@plane-position-hole.html

  * igt@kms_plane_alpha_blend@constant-alpha-mid:
    - shard-rkl:          [SKIP][312] ([i915#14544] / [i915#7294]) -> [PASS][313]
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_plane_alpha_blend@constant-alpha-mid.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_plane_alpha_blend@constant-alpha-mid.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
    - shard-rkl:          [SKIP][314] ([i915#14544] / [i915#8152]) -> [PASS][315] +1 other test pass
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-a:
    - shard-rkl:          [SKIP][316] ([i915#12247] / [i915#14544]) -> [PASS][317] +6 other tests pass
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-a.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
    - shard-rkl:          [SKIP][318] ([i915#14544] / [i915#6953] / [i915#8152]) -> [PASS][319] +1 other test pass
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
    - shard-rkl:          [SKIP][320] ([i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][321]
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b:
    - shard-rkl:          [SKIP][322] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][323] +8 other tests pass
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html

  * igt@kms_pm_dc@dc5-dpms-negative:
    - shard-rkl:          [SKIP][324] ([i915#13441] / [i915#14544]) -> [PASS][325]
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_pm_dc@dc5-dpms-negative.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_pm_dc@dc5-dpms-negative.html

  * igt@kms_pm_rpm@cursor-dpms:
    - shard-rkl:          [SKIP][326] ([i915#14544] / [i915#1849]) -> [PASS][327]
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_pm_rpm@cursor-dpms.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_pm_rpm@cursor-dpms.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][328] ([i915#14544] / [i915#15073]) -> [PASS][329]
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_pm_rpm@dpms-lpsp.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg1:          [DMESG-WARN][330] ([i915#4423]) -> [PASS][331]
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-17/igt@kms_pm_rpm@i2c.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [SKIP][332] ([i915#15073]) -> [PASS][333] +1 other test pass
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  
#### Warnings ####

  * igt@gem_bad_reloc@negative-reloc:
    - shard-rkl:          [SKIP][334] ([i915#3281]) -> [SKIP][335] ([i915#14544] / [i915#3281]) +6 other tests skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@gem_bad_reloc@negative-reloc.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_bad_reloc@negative-reloc.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-rkl:          [SKIP][336] ([i915#14544] / [i915#3555] / [i915#9323]) -> [SKIP][337] ([i915#3555] / [i915#9323]) +1 other test skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          [SKIP][338] ([i915#9323]) -> [SKIP][339] ([i915#14544] / [i915#9323])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@gem_ccs@suspend-resume.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_ccs@suspend-resume.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-rkl:          [SKIP][340] ([i915#14544] / [i915#7697]) -> [SKIP][341] ([i915#7697])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_close_race@multigpu-basic-threads.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-rkl:          [SKIP][342] ([i915#14544] / [i915#6335]) -> [SKIP][343] ([i915#6335])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_create@create-ext-cpu-access-big.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-rkl:          [SKIP][344] ([i915#6335]) -> [SKIP][345] ([i915#14544] / [i915#6335])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-8/igt@gem_create@create-ext-cpu-access-sanity-check.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_eio@kms:
    - shard-rkl:          [DMESG-WARN][346] ([i915#13363]) -> [DMESG-WARN][347] ([i915#12964])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-8/igt@gem_eio@kms.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-3/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          [SKIP][348] ([i915#14544] / [i915#4525]) -> [SKIP][349] ([i915#4525])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-rkl:          [SKIP][350] ([i915#4525]) -> [SKIP][351] ([i915#14544] / [i915#4525])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@gem_exec_balancer@parallel-out-fence.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - shard-rkl:          [SKIP][352] ([i915#14544] / [i915#3281]) -> [SKIP][353] ([i915#3281]) +10 other tests skip
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-gtt.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@gem_exec_reloc@basic-cpu-gtt.html

  * igt@gem_huc_copy@huc-copy:
    - shard-rkl:          [SKIP][354] ([i915#2190]) -> [SKIP][355] ([i915#14544] / [i915#2190])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@gem_huc_copy@huc-copy.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-rkl:          [SKIP][356] ([i915#14544] / [i915#4613]) -> [SKIP][357] ([i915#4613]) +3 other tests skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-rkl:          [SKIP][358] ([i915#4613]) -> [SKIP][359] ([i915#14544] / [i915#4613]) +1 other test skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-8/igt@gem_lmem_swapping@parallel-random-engines.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          [SKIP][360] ([i915#3282]) -> [SKIP][361] ([i915#14544] / [i915#3282]) +1 other test skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_pread@bench:
    - shard-rkl:          [SKIP][362] ([i915#14544] / [i915#3282]) -> [SKIP][363] ([i915#3282]) +5 other tests skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_pread@bench.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@gem_pread@bench.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-rkl:          [SKIP][364] ([i915#8411]) -> [SKIP][365] ([i915#14544] / [i915#8411])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_userptr_blits@access-control:
    - shard-rkl:          [SKIP][366] ([i915#14544] / [i915#3297]) -> [SKIP][367] ([i915#3297])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_userptr_blits@access-control.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-rkl:          [SKIP][368] ([i915#14544] / [i915#3297] / [i915#3323]) -> [SKIP][369] ([i915#3297] / [i915#3323])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_userptr_blits@dmabuf-sync.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-rkl:          [SKIP][370] ([i915#2527]) -> [SKIP][371] ([i915#14544] / [i915#2527]) +4 other tests skip
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@gen9_exec_parse@batch-invalid-length.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-rkl:          [SKIP][372] ([i915#14544] / [i915#2527]) -> [SKIP][373] ([i915#2527]) +3 other tests skip
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gen9_exec_parse@bb-start-out.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@gen9_exec_parse@bb-start-out.html

  * igt@i915_module_load@resize-bar:
    - shard-rkl:          [SKIP][374] ([i915#6412]) -> [SKIP][375] ([i915#14544] / [i915#6412])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@i915_module_load@resize-bar.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          [SKIP][376] ([i915#14544] / [i915#4387]) -> [SKIP][377] ([i915#4387])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@i915_pm_sseu@full-enable.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@hwconfig_table:
    - shard-rkl:          [SKIP][378] ([i915#6245]) -> [SKIP][379] ([i915#14544] / [i915#6245])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@i915_query@hwconfig_table.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@i915_query@hwconfig_table.html

  * igt@intel_hwmon@hwmon-write:
    - shard-rkl:          [SKIP][380] ([i915#14544] / [i915#7707]) -> [SKIP][381] ([i915#7707]) +1 other test skip
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@intel_hwmon@hwmon-write.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-rkl:          [SKIP][382] ([i915#12454] / [i915#12712]) -> [SKIP][383] ([i915#12454] / [i915#12712] / [i915#14544])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-rkl:          [SKIP][384] ([i915#14544]) -> [SKIP][385] ([i915#1769] / [i915#3555])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-180:
    - shard-rkl:          [SKIP][386] ([i915#14544]) -> [SKIP][387] ([i915#5286]) +6 other tests skip
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
    - shard-rkl:          [SKIP][388] ([i915#5286]) -> [SKIP][389] ([i915#14544]) +2 other tests skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-dg1:          [SKIP][390] ([i915#4538] / [i915#5286]) -> [SKIP][391] ([i915#4423] / [i915#4538] / [i915#5286])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-16/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-16/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - shard-rkl:          [SKIP][392] ([i915#14544]) -> [DMESG-WARN][393] ([i915#12964]) +1 other test dmesg-warn
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          [SKIP][394] ([i915#3638]) -> [SKIP][395] ([i915#14544]) +2 other tests skip
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - shard-rkl:          [SKIP][396] ([i915#14544]) -> [SKIP][397] ([i915#3638]) +3 other tests skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-dg1:          [SKIP][398] ([i915#3638]) -> [SKIP][399] ([i915#3638] / [i915#4423])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-16/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-16/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-dg1:          [SKIP][400] ([i915#4538]) -> [SKIP][401] ([i915#4423] / [i915#4538])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-18/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][402] ([i915#6095]) -> [SKIP][403] ([i915#14098] / [i915#6095]) +3 other tests skip
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-8/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-b-hdmi-a-2.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-3/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][404] ([i915#14544]) -> [SKIP][405] ([i915#12313])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs:
    - shard-dg1:          [SKIP][406] ([i915#6095]) -> [SKIP][407] ([i915#4423] / [i915#6095])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-18/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs:
    - shard-rkl:          [SKIP][408] ([i915#14098] / [i915#6095]) -> [SKIP][409] ([i915#14544]) +8 other tests skip
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-dg1:          [SKIP][410] ([i915#12313]) -> [SKIP][411] ([i915#12313] / [i915#4423])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-18/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][412] ([i915#14544]) -> [SKIP][413] ([i915#12805])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
    - shard-rkl:          [SKIP][414] ([i915#14544]) -> [SKIP][415] ([i915#14098] / [i915#6095]) +14 other tests skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][416] ([i915#12313]) -> [SKIP][417] ([i915#14544])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-rkl:          [SKIP][418] ([i915#14544] / [i915#3742]) -> [SKIP][419] ([i915#3742])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_cdclk@mode-transition-all-outputs.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-rkl:          [SKIP][420] ([i915#11151] / [i915#7828]) -> [SKIP][421] ([i915#11151] / [i915#14544] / [i915#7828]) +6 other tests skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-fast.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@dp-hpd:
    - shard-rkl:          [SKIP][422] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][423] ([i915#11151] / [i915#7828]) +6 other tests skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_chamelium_hpd@dp-hpd.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          [SKIP][424] ([i915#7118] / [i915#9424]) -> [FAIL][425] ([i915#7173]) +1 other test fail
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg2-7/igt@kms_content_protection@atomic-dpms.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html
    - shard-rkl:          [SKIP][426] ([i915#7118] / [i915#9424]) -> [SKIP][427] ([i915#14544])
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_content_protection@atomic-dpms.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-rkl:          [SKIP][428] ([i915#3116]) -> [SKIP][429] ([i915#14544])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-rkl:          [SKIP][430] ([i915#14544]) -> [SKIP][431] ([i915#3116])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@lic-type-1:
    - shard-rkl:          [SKIP][432] ([i915#14544]) -> [SKIP][433] ([i915#9424])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_content_protection@lic-type-1.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          [SKIP][434] ([i915#14544]) -> [SKIP][435] ([i915#7118])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_content_protection@srm.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][436] ([i915#7118] / [i915#7162] / [i915#9424]) -> [SKIP][437] ([i915#7118] / [i915#9424])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg2-11/igt@kms_content_protection@type1.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-7/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-dg1:          [SKIP][438] ([i915#3555]) -> [SKIP][439] ([i915#3555] / [i915#4423])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-18/igt@kms_cursor_crc@cursor-onscreen-32x10.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          [SKIP][440] ([i915#13049]) -> [SKIP][441] ([i915#14544])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-rkl:          [SKIP][442] ([i915#14544]) -> [SKIP][443] ([i915#13049])
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-rkl:          [SKIP][444] ([i915#14544]) -> [SKIP][445] ([i915#3555]) +2 other tests skip
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-128x42:
    - shard-rkl:          [FAIL][446] ([i915#13566]) -> [SKIP][447] ([i915#14544])
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-128x42.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-128x42.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-dg1:          [SKIP][448] -> [SKIP][449] ([i915#4423]) +1 other test skip
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-18/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          [SKIP][450] ([i915#4103]) -> [SKIP][451] ([i915#11190] / [i915#14544]) +1 other test skip
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
    - shard-rkl:          [SKIP][452] ([i915#14544]) -> [SKIP][453] +17 other tests skip
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
    - shard-rkl:          [SKIP][454] -> [SKIP][455] ([i915#14544]) +14 other tests skip
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-rkl:          [SKIP][456] ([i915#4103]) -> [SKIP][457] ([i915#14544])
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-rkl:          [SKIP][458] ([i915#14544]) -> [SKIP][459] ([i915#9723])
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_dp_link_training@non-uhbr-mst:
    - shard-rkl:          [SKIP][460] ([i915#13749]) -> [SKIP][461] ([i915#14544])
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_dp_link_training@non-uhbr-mst.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-mst.html

  * igt@kms_dp_link_training@non-uhbr-sst:
    - shard-rkl:          [SKIP][462] ([i915#14544]) -> [SKIP][463] ([i915#13749])
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-sst.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_dp_link_training@non-uhbr-sst.html

  * igt@kms_dp_linktrain_fallback@dsc-fallback:
    - shard-rkl:          [SKIP][464] ([i915#14544]) -> [SKIP][465] ([i915#13707])
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_dp_linktrain_fallback@dsc-fallback.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          [SKIP][466] ([i915#11190] / [i915#14544]) -> [SKIP][467] ([i915#3555] / [i915#3840])
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_dsc@dsc-basic.html
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-rkl:          [SKIP][468] ([i915#14544]) -> [SKIP][469] ([i915#3555] / [i915#3840])
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_dsc@dsc-with-formats.html
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][470] ([i915#14544] / [i915#3955]) -> [SKIP][471] ([i915#3955])
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@display-2x:
    - shard-dg1:          [SKIP][472] ([i915#1839]) -> [SKIP][473] ([i915#1839] / [i915#4423])
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-18/igt@kms_feature_discovery@display-2x.html
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-rkl:          [SKIP][474] ([i915#14544] / [i915#9337]) -> [SKIP][475] ([i915#9337])
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_feature_discovery@dp-mst.html
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-rkl:          [SKIP][476] ([i915#14544] / [i915#9934]) -> [SKIP][477] ([i915#9934]) +8 other tests skip
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-rkl:          [SKIP][478] ([i915#9934]) -> [SKIP][479] ([i915#14544] / [i915#9934]) +4 other tests skip
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@flip-vs-panning-interruptible:
    - shard-rkl:          [SKIP][480] ([i915#14544] / [i915#3637]) -> [DMESG-WARN][481] ([i915#12964])
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_flip@flip-vs-panning-interruptible.html
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_flip@flip-vs-panning-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-rkl:          [SKIP][482] ([i915#2672] / [i915#3555]) -> [SKIP][483] ([i915#14544] / [i915#3555]) +3 other tests skip
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          [SKIP][484] ([i915#14544] / [i915#3555]) -> [SKIP][485] ([i915#2672] / [i915#3555]) +4 other tests skip
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-rkl:          [DMESG-WARN][486] ([i915#12964]) -> [SKIP][487] ([i915#14544] / [i915#1849] / [i915#5354])
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][488] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][489]
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          [SKIP][490] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][491] ([i915#5439])
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
    - shard-dg2:          [SKIP][492] ([i915#15102] / [i915#3458]) -> [SKIP][493] ([i915#10433] / [i915#15102] / [i915#3458])
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
    - shard-dg2:          [SKIP][494] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][495] ([i915#15102] / [i915#3458])
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt:
    - shard-rkl:          [SKIP][496] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][497] ([i915#1825]) +32 other tests skip
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt.html
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-rkl:          [SKIP][498] ([i915#1825]) -> [SKIP][499] ([i915#14544] / [i915#1849] / [i915#5354]) +21 other tests skip
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-rkl:          [SKIP][500] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][501] ([i915#15102] / [i915#3023]) +18 other tests skip
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-rkl:          [SKIP][502] ([i915#9766]) -> [SKIP][503] ([i915#14544] / [i915#1849] / [i915#5354])
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][504] ([i915#15102]) -> [SKIP][505] ([i915#14544]) +2 other tests skip
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite:
    - shard-rkl:          [SKIP][506] ([i915#14544]) -> [SKIP][507] ([i915#15102]) +1 other test skip
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite.html
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
    - shard-rkl:          [SKIP][508] ([i915#15102] / [i915#3023]) -> [SKIP][509] ([i915#14544] / [i915#1849] / [i915#5354]) +17 other tests skip
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-rkl:          [SKIP][510] ([i915#3555] / [i915#8228]) -> [SKIP][511] ([i915#14544]) +1 other test skip
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_hdr@static-toggle-suspend.html
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-rkl:          [SKIP][512] ([i915#12339]) -> [SKIP][513] ([i915#12339] / [i915#14544])
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_joiner@basic-ultra-joiner.html
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-rkl:          [SKIP][514] ([i915#10656] / [i915#14544]) -> [SKIP][515] ([i915#10656])
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_joiner@invalid-modeset-big-joiner.html
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-rkl:          [SKIP][516] ([i915#12388]) -> [SKIP][517] ([i915#12388] / [i915#14544]) +1 other test skip
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_joiner@invalid-modeset-force-big-joiner.html
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-dg1:          [SKIP][518] ([i915#13522]) -> [SKIP][519] ([i915#13522] / [i915#4423])
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-18/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][520] ([i915#4070] / [i915#4816]) -> [SKIP][521] ([i915#14544] / [i915#4070] / [i915#4816])
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_multiple@2x-tiling-y:
    - shard-rkl:          [SKIP][522] ([i915#13958]) -> [SKIP][523] ([i915#14544]) +1 other test skip
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_plane_multiple@2x-tiling-y.html
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-y.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          [SKIP][524] ([i915#14544]) -> [SKIP][525] ([i915#14259])
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
    - shard-rkl:          [SKIP][526] ([i915#12247]) -> [SKIP][527] ([i915#12247] / [i915#14544])
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b:
    - shard-rkl:          [SKIP][528] ([i915#12247]) -> [SKIP][529] ([i915#12247] / [i915#14544] / [i915#8152]) +1 other test skip
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-dg1:          [SKIP][530] ([i915#12343]) -> [SKIP][531] ([i915#12343] / [i915#4423])
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-18/igt@kms_pm_backlight@brightness-with-dpms.html
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-rkl:          [SKIP][532] ([i915#9685]) -> [SKIP][533] ([i915#14544] / [i915#9685]) +1 other test skip
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_pm_dc@dc6-psr.html
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][534] ([i915#3361]) -> [SKIP][535] ([i915#4281])
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-8/igt@kms_pm_dc@dc9-dpms.html
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][536] ([i915#9340]) -> [SKIP][537] ([i915#14544] / [i915#9340])
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-rkl:          [SKIP][538] ([i915#12916] / [i915#14544]) -> [SKIP][539] ([i915#15073])
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [SKIP][540] ([i915#15073]) -> [SKIP][541] ([i915#14544] / [i915#15073])
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp.html
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg1:          [SKIP][542] ([i915#15073]) -> [SKIP][543] ([i915#15073] / [i915#4423])
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-16/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-16/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-rkl:          [SKIP][544] ([i915#6524]) -> [SKIP][545] ([i915#14544] / [i915#6524])
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_prime@basic-crc-hybrid.html
   [545]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
    - shard-rkl:          [SKIP][546] ([i915#11520]) -> [SKIP][547] ([i915#11520] / [i915#14544]) +7 other tests skip
   [546]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
   [547]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
    - shard-rkl:          [SKIP][548] ([i915#11520] / [i915#14544]) -> [SKIP][549] ([i915#11520]) +7 other tests skip
   [548]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
   [549]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-rkl:          [SKIP][550] ([i915#9683]) -> [SKIP][551] ([i915#14544] / [i915#9683])
   [550]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_psr2_su@page_flip-nv12.html
   [551]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          [SKIP][552] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][553] ([i915#1072] / [i915#9732]) +19 other tests skip
   [552]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html
   [553]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@fbc-psr2-suspend:
    - shard-dg1:          [SKIP][554] ([i915#1072] / [i915#9732]) -> [SKIP][555] ([i915#1072] / [i915#4423] / [i915#9732]) +1 other test skip
   [554]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-18/igt@kms_psr@fbc-psr2-suspend.html
   [555]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_psr@fbc-psr2-suspend.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - shard-rkl:          [SKIP][556] ([i915#1072] / [i915#9732]) -> [SKIP][557] ([i915#1072] / [i915#14544] / [i915#9732]) +14 other tests skip
   [556]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_psr@psr-sprite-plane-onoff.html
   [557]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_psr@psr-sprite-plane-onoff.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-rkl:          [DMESG-WARN][558] ([i915#12964]) -> [SKIP][559] ([i915#14544]) +1 other test skip
   [558]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_rotation_crc@primary-rotation-90.html
   [559]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-rkl:          [SKIP][560] ([i915#14544]) -> [SKIP][561] ([i915#5289]) +2 other tests skip
   [560]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
   [561]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-rkl:          [SKIP][562] ([i915#5289]) -> [SKIP][563] ([i915#14544])
   [562]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [563]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-rkl:          [SKIP][564] ([i915#14544] / [i915#3555]) -> [SKIP][565] ([i915#3555]) +2 other tests skip
   [564]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_setmode@basic-clone-single-crtc.html
   [565]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_sharpness_filter@filter-scaler-downscale:
    - shard-rkl:          [SKIP][566] ([i915#14544]) -> [SKIP][567] ([i915#15232]) +3 other tests skip
   [566]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_sharpness_filter@filter-scaler-downscale.html
   [567]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_sharpness_filter@filter-scaler-downscale.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-rkl:          [SKIP][568] ([i915#9906]) -> [SKIP][569] ([i915#14544])
   [568]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_vrr@flip-basic-fastset.html
   [569]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@negative-basic:
    - shard-rkl:          [SKIP][570] ([i915#14544]) -> [SKIP][571] ([i915#3555] / [i915#9906])
   [570]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_vrr@negative-basic.html
   [571]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-dg1:          [SKIP][572] ([i915#2437] / [i915#4423]) -> [SKIP][573] ([i915#2437])
   [572]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-19/igt@kms_writeback@writeback-fb-id.html
   [573]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-17/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-rkl:          [SKIP][574] ([i915#14544] / [i915#2437] / [i915#9412]) -> [SKIP][575] ([i915#2437] / [i915#9412])
   [574]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
   [575]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@perf@mi-rpc:
    - shard-rkl:          [SKIP][576] ([i915#2434]) -> [SKIP][577] ([i915#14544] / [i915#2434])
   [576]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@perf@mi-rpc.html
   [577]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@perf@mi-rpc.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          [SKIP][578] ([i915#14544] / [i915#3291] / [i915#3708]) -> [SKIP][579] ([i915#3291] / [i915#3708])
   [578]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@prime_vgem@basic-fence-read.html
   [579]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          [SKIP][580] ([i915#14544] / [i915#3708]) -> [SKIP][581] ([i915#3708]) +1 other test skip
   [580]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@prime_vgem@coherency-gtt.html
   [581]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-read-hang:
    - shard-rkl:          [SKIP][582] ([i915#3708]) -> [SKIP][583] ([i915#14544] / [i915#3708]) +1 other test skip
   [582]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@prime_vgem@fence-read-hang.html
   [583]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@prime_vgem@fence-read-hang.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-rkl:          [SKIP][584] ([i915#9917]) -> [SKIP][585] ([i915#14544] / [i915#9917])
   [584]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@sriov_basic@bind-unbind-vf.html
   [585]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@sriov_basic@bind-unbind-vf.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-rkl:          [SKIP][586] ([i915#14544] / [i915#9917]) -> [SKIP][587] ([i915#9917])
   [586]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html
   [587]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@sriov_basic@enable-vfs-autoprobe-on.html

  
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
  [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
  [i915#12549]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12549
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#12916]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916
  [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13363]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13363
  [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
  [i915#13441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13441
  [i915#13522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
  [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
  [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
  [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
  [i915#13820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14350]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15095
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
  [i915#15140]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15140
  [i915#15152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15152
  [i915#15232]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15232
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1850
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
  [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
  [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
  [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
  [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
  [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
  [i915#6806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8807]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8807
  [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
  [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
  [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9581]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9581
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9833]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_17515 -> Patchwork_155952v4

  CI-20190529: 20190529
  CI_DRM_17515: 2bc418aa7efaae562e49d84e8b28f799cf624745 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8614: 8614
  Patchwork_155952v4: 2bc418aa7efaae562e49d84e8b28f799cf624745 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/index.html

--===============4978954291266777608==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Add initial support for Xe3p_LPD (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/155952/">https://patchwork.freedesktop.org/series/155952/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17515_full -&gt; Patchwork_155952v4_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_155952v4_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_155952v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (12 -&gt; 11)</h2>
<p>Missing    (1): shard-snb-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_155952v4_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@panthor/panthor_gem@bo_mmap_offset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@panthor/panthor_gem@bo_mmap_offset.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-snb6/igt@vgem_basic@unload.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@panthor/panthor_vm@vm_create_destroy:<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@panthor/panthor_vm@vm_create_destroy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@panthor/panthor_vm@vm_create_destroy.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_155952v4_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-6/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@api_intel_bb@object-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_buddy@drm_buddy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@drm_buddy@drm_buddy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15095">i915#15095</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-4/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@gem_bad_reloc@negative-reloc-lut.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-1/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk5/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390">i915#13390</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@gem_eio@kms.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13363">i915#13363</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@gem_exec_balancer@bonded-dual.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@gem_exec_capture@capture-invisible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-pro-default:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@gem_exec_flush@basic-wb-pro-default.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_exec_flush@basic-wb-pro-default.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +11 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-active:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-6/igt@gem_exec_reloc@basic-gtt-read-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@gem_exec_reloc@basic-write-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582">i915#7582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk5/igt@gem_lmem_swapping@heavy-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@gem_mmap_gtt@basic-small-bo.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@invalid-flags:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@gem_mmap_wc@invalid-flags.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@gem_mmap_wc@set-cache-level.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1850">i915#1850</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk5/igt@gem_pread@exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@gem_pread@snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@gem_pread@uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-8/igt@gem_pxp@display-protected-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-7/igt@gem_pxp@display-protected-crc.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +2 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-context.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717">i915#13717</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@gem_pxp@reject-modify-context-protection-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_readwrite@beyond-eob.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@gem_userptr_blits@unsync-unmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-7/igt@gem_workarounds@suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-4/igt@gem_workarounds@suspend-resume.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15152">i915#15152</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@gen9_exec_parse@bb-secure.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@i915_module_load@resize-bar.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590">i915#6590</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-10/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790">i915#13790</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681">i915#2681</a>) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@i915_pm_rps@thresholds-idle-park.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@i915_query@hwconfig_table.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-mtlp-7/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-8/igt@i915_suspend@fence-restore-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-3/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk10/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-4/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-19/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +126 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +104 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk6/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796">i915#12796</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +41 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +49 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk10/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> +56 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-7/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781">i915#13781</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-1/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783">i915#13783</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio-edid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_chamelium_audio@dp-audio-edid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@kms_chamelium_frames@dp-crc-single.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm-disable:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_color@ctm-0-75.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_content_protection@atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-10/igt@kms_content_protection@atomic-dpms@pipe-a-dp-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@kms_content_protection@content-type-change.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-256x85:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-256x85.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-256x85.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +46 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-256x85.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-256x85.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-max-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-6/igt@kms_cursor_crc@cursor-sliding-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk10/igt@kms_cursor_crc@cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358">i915#12358</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152">i915#14152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882">i915#7882</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk10/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358">i915#12358</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152">i915#14152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833">i915#9833</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-mst:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_dp_link_training@uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-sst:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_dp_link_training@uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_feature_discovery@display-4x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_flip@2x-dpms-vs-vblank-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-on-nop:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@kms_flip@2x-flip-vs-dpms-on-nop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-6/igt@kms_flip@2x-flip-vs-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_flip@2x-flip-vs-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033">i915#14033</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350">i915#14350</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033">i915#14033</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@kms_flip@2x-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_flip@2x-plain-flip-fb-recreate.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_flip@flip-vs-blocking-wf-vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_flip@flip-vs-panning-interruptible@b-hdmi-a2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +3 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_flip@flip-vs-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_flip@flip-vs-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk9/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk9/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +8 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render.html">SKIP</a> +28 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766">i915#9766</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-snb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-msflip-blt.html">SKIP</a> +63 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-end.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826">i915#8826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_joiner@basic-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_joiner@basic-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_plane@plane-panning-top-left.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane@plane-panning-top-left.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-7efc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_plane_alpha_blend@alpha-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-7efc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-yf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_plane_multiple@2x-tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_plane_multiple@tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-20x20.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-20x20@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_pm_backlight@fade-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-vgem:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_prime@basic-crc-vgem.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_properties@plane-properties-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521">i915#11521</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk6/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-snb6/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk10/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_psr@fbc-pr-cursor-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_psr@fbc-psr-cursor-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-sprite-plane-move:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-6/igt@kms_psr@fbc-psr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-mmap-gtt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk5/igt@kms_psr@fbc-psr2-cursor-mmap-gtt.html">SKIP</a> +327 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_psr@pr-sprite-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-no-drrs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_psr@psr2-no-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755">i915#12755</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@kms_scaling_modes@scaling-mode-full-aspect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk10/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179">i915#13179</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_sharpness_filter@filter-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_sharpness_filter@filter-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15232">i915#15232</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sharpness_filter@filter-modifiers:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@kms_sharpness_filter@filter-modifiers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15232">i915#15232</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sharpness_filter@filter-strength:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_sharpness_filter@filter-strength.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15232">i915#15232</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-4/igt@kms_vrr@max-min.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@kms_writeback@writeback-check-output.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk6/igt@kms_writeback@writeback-check-output-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@perf@per-context-mode-unprivileged.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435">i915#2435</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-5/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-6/igt@perf_pmu@event-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8807">i915#8807</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-6/igt@perf_pmu@event-wait@rcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8807">i915#8807</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@perf_pmu@frequency@gt0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12549">i915#12549</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806">i915#6806</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-6/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf@vf-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910">i915#12910</a>) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-tglu-3/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910">i915#12910</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@fbdev@nullptr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg2-5/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_mmap_gtt@fault-concurrent.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@gem_mmap_gtt@fault-concurrent.html">PASS</a> +9 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_pxp@create-protected-buffer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@gem_pxp@create-protected-buffer.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-2/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820">i915#13820</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-4/igt@i915_suspend@forcewake.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15140">i915#15140</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_color@ctm-green-to-red.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_color@ctm-green-to-red.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x256:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x256.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x256.html">PASS</a> +47 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html">PASS</a> +10 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg2-7/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_invalid_mode@overflow-vrefresh.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826">i915#8826</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_invalid_mode@overflow-vrefresh.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_invalid_mode@zero-clock.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826">i915#8826</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_invalid_mode@zero-clock.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg2-7/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-10/igt@kms_joiner@invalid-modeset-force-big-joiner.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_pipe_crc_basic@hang-read-crc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@planar-pixel-format-settings:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_plane@planar-pixel-format-settings.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9581">i915#9581</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_plane@planar-pixel-format-settings.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_plane@plane-position-hole.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_plane@plane-position-hole.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-mid:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_plane_alpha_blend@constant-alpha-mid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_plane_alpha_blend@constant-alpha-mid.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-a.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-dpms-negative:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_pm_dc@dc5-dpms-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13441">i915#13441</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_pm_dc@dc5-dpms-negative.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_pm_rpm@cursor-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_pm_rpm@cursor-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-17/igt@kms_pm_rpm@i2c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_bad_reloc@negative-reloc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@gem_bad_reloc@negative-reloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_bad_reloc@negative-reloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-8/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-8/igt@gem_eio@kms.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13363">i915#13363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-3/igt@gem_eio@kms.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@gem_exec_reloc@basic-cpu-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@gem_lmem_swapping@heavy-verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-8/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@bench:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_pread@bench.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@gem_pread@bench.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_userptr_blits@access-control.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@gem_userptr_blits@access-control.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323">i915#3323</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@gen9_exec_parse@bb-start-out.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@gen9_exec_parse@bb-start-out.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@i915_module_load@resize-bar.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412">i915#6412</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@i915_module_load@resize-bar.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@i915_query@hwconfig_table.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245">i915#6245</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@i915_query@hwconfig_table.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-16/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-16/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_big_fb@linear-16bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_big_fb@linear-16bpp-rotate-0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-16/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-16/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-18/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-8/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-3/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-18/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-18/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_chamelium_hpd@dp-hpd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg2-7/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) +1 other test fail</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_content_protection@lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_content_protection@lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162">i915#7162</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-7/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-18/igt@kms_cursor_crc@cursor-onscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_cursor_crc@cursor-onscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-128x42:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-128x42.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-128x42.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-18/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-mst:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_dp_link_training@non-uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-sst:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dsc-fallback:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_dp_linktrain_fallback@dsc-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-18/igt@kms_feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_feature_discovery@dp-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337">i915#9337</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_feature_discovery@dp-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_flip@flip-vs-panning-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_flip@flip-vs-panning-interruptible.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766">i915#9766</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-modesetfrombusy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-18/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522">i915#13522</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522">i915#13522</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-18/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_pm_dc@dc6-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_pm_dc@dc6-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-8/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361">i915#3361</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916">i915#12916</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-16/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-16/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@kms_psr@fbc-psr2-sprite-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-suspend:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-18/igt@kms_psr@fbc-psr2-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-13/igt@kms_psr@fbc-psr2-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_rotation_crc@primary-rotation-90.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_sharpness_filter@filter-scaler-downscale:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_sharpness_filter@filter-scaler-downscale.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_sharpness_filter@filter-scaler-downscale.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15232">i915#15232</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-8/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-dg1-19/igt@kms_writeback@writeback-fb-id.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-dg1-17/igt@kms_writeback@writeback-fb-id.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@perf@mi-rpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434">i915#2434</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@perf@mi-rpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434">i915#2434</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-5/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-3/igt@prime_vgem@fence-read-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@prime_vgem@fence-read-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-5/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-6/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17515/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v4/shard-rkl-2/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17515 -&gt; Patchwork_155952v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17515: 2bc418aa7efaae562e49d84e8b28f799cf624745 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8614: 8614<br />
  Patchwork_155952v4: 2bc418aa7efaae562e49d84e8b28f799cf624745 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============4978954291266777608==--
