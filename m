Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0035578D79C
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 18:29:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8067E10E55E;
	Wed, 30 Aug 2023 16:29:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1600B10E55E;
 Wed, 30 Aug 2023 16:29:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0B58EAADD8;
 Wed, 30 Aug 2023 16:29:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3378539204933858530=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 30 Aug 2023 16:29:02 -0000
Message-ID: <169341294200.15234.4606275343512052342@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230830085127.2416842-1-jani.nikula@intel.com>
In-Reply-To: <20230830085127.2416842-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_add_minimal_i915=5Fgem=5Fobject=5Ffrontbuffer=2Eh?=
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

--===============3378539204933858530==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: add minimal i915_gem_object_frontbuffer.h
URL   : https://patchwork.freedesktop.org/series/123057/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13575_full -> Patchwork_123057v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_123057v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_123057v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_123057v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_capture@pi@bcs0:
    - shard-tglu:         [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-tglu-6/igt@gem_exec_capture@pi@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-tglu-4/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_mmap_offset@close-race:
    - shard-snb:          [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-snb1/igt@gem_mmap_offset@close-race.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-snb6/igt@gem_mmap_offset@close-race.html

  
Known issues
------------

  Here are the changes found in Patchwork_123057v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-dg2:          NOTRUN -> [SKIP][5] ([i915#8411])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@drm_fdinfo@most-busy-check-all@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][6] ([i915#8414]) +19 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@drm_fdinfo@most-busy-check-all@bcs0.html

  * igt@feature_discovery@display-4x:
    - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#1839])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@feature_discovery@display-4x.html

  * igt@gem_barrier_race@remote-request@rcs0:
    - shard-glk:          [PASS][8] -> [ABORT][9] ([i915#7461] / [i915#8190])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-glk8/igt@gem_barrier_race@remote-request@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-glk9/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglu:         [PASS][10] -> [FAIL][11] ([i915#6268])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-tglu-8/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@preservation-s3@ccs3:
    - shard-dg2:          NOTRUN -> [FAIL][12] ([fdo#103375])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-1/igt@gem_ctx_isolation@preservation-s3@ccs3.html

  * igt@gem_ctx_persistence@engines-cleanup:
    - shard-snb:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#1099]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-snb5/igt@gem_ctx_persistence@engines-cleanup.html

  * igt@gem_ctx_persistence@hang:
    - shard-dg2:          NOTRUN -> [SKIP][14] ([i915#8555])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
    - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#5882]) +9 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          NOTRUN -> [ABORT][16] ([i915#7975] / [i915#8213])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@gem_eio@hibernate.html

  * igt@gem_eio@kms:
    - shard-dg1:          [PASS][17] -> [FAIL][18] ([i915#5784])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg1-17/igt@gem_eio@kms.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-17/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          NOTRUN -> [FAIL][19] ([i915#8898])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-snb5/igt@gem_eio@reset-stress.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#6334]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_fair@basic-pace-share:
    - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#3539] / [i915#4852])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@gem_exec_fair@basic-pace-share.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][22] -> [FAIL][23] ([i915#2842])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         [PASS][24] -> [FAIL][25] ([i915#2842])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-mtlp:         NOTRUN -> [SKIP][26] ([i915#3281])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#4860])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-1/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html

  * igt@gem_mmap_wc@bad-object:
    - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#4083]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@gem_mmap_wc@bad-object.html

  * igt@gem_mmap_wc@copy:
    - shard-dg1:          NOTRUN -> [SKIP][29] ([i915#4083])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@gem_mmap_wc@copy.html

  * igt@gem_partial_pwrite_pread@reads-display:
    - shard-dg1:          NOTRUN -> [SKIP][30] ([i915#3282])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@gem_partial_pwrite_pread@reads-display.html

  * igt@gem_partial_pwrite_pread@write-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#3282])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@gem_partial_pwrite_pread@write-snoop.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#4270])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@gem_pxp@display-protected-crc.html

  * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][33] ([i915#8428])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#4079])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#4077]) +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@gem_tiled_swapping@non-threaded.html

  * igt@gem_tiled_wb:
    - shard-mtlp:         NOTRUN -> [SKIP][36] ([i915#4077])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@gem_tiled_wb.html

  * igt@gem_userptr_blits@relocations:
    - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#3281]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@set-cache-level:
    - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#3297])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-7/igt@gem_userptr_blits@set-cache-level.html

  * igt@gen3_render_linear_blits:
    - shard-dg2:          NOTRUN -> [SKIP][39] ([fdo#109289]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@gen3_render_linear_blits.html

  * igt@i915_module_load@load:
    - shard-dg1:          NOTRUN -> [SKIP][40] ([i915#6227])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@i915_module_load@load.html
    - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#6227])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-apl6/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [PASS][42] -> [DMESG-WARN][43] ([i915#7061] / [i915#8617])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-12/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_backlight@fade-with-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#5354] / [i915#7561])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@i915_pm_backlight@fade-with-suspend.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#8430])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-7/igt@i915_pm_lpsp@screens-disabled.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg2:          [PASS][46] -> [SKIP][47] ([i915#1397])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg2-10/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-5/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_pm_rps@basic-api:
    - shard-mtlp:         NOTRUN -> [SKIP][48] ([i915#6621])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@thresholds-idle-park@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#8925])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@i915_pm_rps@thresholds-idle-park@gt0.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-dg2:          [PASS][50] -> [FAIL][51] ([fdo#103375]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg2-10/igt@i915_suspend@basic-s3-without-i915.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-5/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
    - shard-mtlp:         [PASS][52] -> [FAIL][53] ([i915#2521])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-mtlp-8/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-1/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1:
    - shard-glk:          [PASS][54] -> [FAIL][55] ([i915#2521]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-glk8/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-2-y-rc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#8502]) +3 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-2-y-rc_ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs:
    - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#8502]) +7 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-17/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs.html

  * igt@kms_async_flips@crc@pipe-b-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [FAIL][58] ([i915#8247]) +3 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_async_flips@crc@pipe-b-hdmi-a-1.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#6228])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#1769] / [i915#3555])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([fdo#111614])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [PASS][62] -> [FAIL][63] ([i915#5138]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-mtlp:         NOTRUN -> [FAIL][64] ([i915#3743])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#5190]) +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-1/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-dg1:          NOTRUN -> [SKIP][66] ([fdo#111615])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#4538] / [i915#5190])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#3886])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-apl6/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#3886] / [i915#6095])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs:
    - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#3689] / [i915#5354] / [i915#6095])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#5354]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#3689] / [i915#3886] / [i915#5354]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][73] ([i915#6095]) +3 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-rotation-180-4_tiled_mtl_mc_ccs:
    - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#5354] / [i915#6095]) +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@kms_ccs@pipe-d-crc-primary-rotation-180-4_tiled_mtl_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#3689] / [i915#5354]) +6 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#7828]) +4 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#7828])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
    - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271]) +9 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-apl6/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html
    - shard-dg1:          NOTRUN -> [SKIP][79] ([i915#7828])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:
    - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#7828])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html

  * igt@kms_content_protection@atomic@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][81] ([i915#7173])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html

  * igt@kms_content_protection@mei_interface:
    - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#8063])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@kms_content_protection@mei_interface.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#3555])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#3359])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#3359])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#3555]) +3 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][87] ([fdo#111825])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([fdo#109274] / [i915#5354]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][89] -> [FAIL][90] ([i915#2346])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
    - shard-apl:          [PASS][91] -> [FAIL][92] ([i915#2346])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-mtlp:         [PASS][93] -> [FAIL][94] ([i915#2346])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-mtlp-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#4103] / [i915#4213])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#9226]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#9227])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#8812])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_flip@2x-busy-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#3637])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@kms_flip@2x-busy-flip.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([fdo#109274]) +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#2672]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#8708]) +6 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-dg2:          [PASS][103] -> [FAIL][104] ([i915#6880])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#3458]) +7 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][106] ([fdo#111825]) +2 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][107] ([fdo#111825] / [i915#1825])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#3458])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#1825]) +2 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#5354]) +18 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][111] ([i915#8708])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_hdr@static-swap:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#3555] / [i915#8228])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_hdr@static-swap.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#4816])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-snb:          NOTRUN -> [DMESG-WARN][114] ([i915#8841]) +4 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-snb1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#6953])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-5/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][116] ([i915#8292])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#5176]) +3 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#5176]) +3 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][119] ([i915#5176]) +11 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-16/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#5235]) +19 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-15/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#5235]) +5 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#5235]) +15 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#6524] / [i915#6805])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#1072]) +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
    - shard-rkl:          [PASS][125] -> [ABORT][126] ([i915#7461])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-rkl-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-rkl:          NOTRUN -> [SKIP][127] ([fdo#111615] / [i915#5289])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_selftest@drm_cmdline:
    - shard-snb:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#8661])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-snb5/igt@kms_selftest@drm_cmdline.html

  * igt@kms_selftest@drm_damage:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#8661])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@kms_selftest@drm_damage.html

  * igt@kms_selftest@drm_format:
    - shard-dg1:          NOTRUN -> [SKIP][130] ([i915#8661])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@kms_selftest@drm_format.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-snb:          NOTRUN -> [SKIP][131] ([fdo#109271]) +180 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-snb5/igt@kms_tv_load_detect@load-detect.html

  * igt@perf@global-sseu-config:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#7387])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@perf@global-sseu-config.html

  * igt@perf_pmu@busy-double-start@ccs3:
    - shard-dg2:          [PASS][133] -> [FAIL][134] ([i915#4349])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg2-12/igt@perf_pmu@busy-double-start@ccs3.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-12/igt@perf_pmu@busy-double-start@ccs3.html

  * igt@v3d/v3d_create_bo@create-bo-0:
    - shard-mtlp:         NOTRUN -> [SKIP][135] ([i915#2575]) +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-7/igt@v3d/v3d_create_bo@create-bo-0.html

  * igt@v3d/v3d_get_param@base-params:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#2575]) +2 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@v3d/v3d_get_param@base-params.html

  * igt@v3d/v3d_perfmon@get-values-invalid-perfmon:
    - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#2575]) +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@v3d/v3d_perfmon@get-values-invalid-perfmon.html

  * igt@vc4/vc4_perfmon@create-two-perfmon:
    - shard-dg1:          NOTRUN -> [SKIP][138] ([i915#7711])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@vc4/vc4_perfmon@create-two-perfmon.html

  * igt@vc4/vc4_tiling@set-bad-handle:
    - shard-mtlp:         NOTRUN -> [SKIP][139] ([i915#7711])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@vc4/vc4_tiling@set-bad-handle.html

  * igt@vc4/vc4_wait_seqno@bad-seqno-1ns:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#7711]) +2 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html

  
#### Possible fixes ####

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [INCOMPLETE][141] ([i915#6311] / [i915#7297]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg2-6/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-dg2:          [FAIL][143] ([fdo#103375]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg2-5/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-1/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-dg2:          [INCOMPLETE][145] -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg2-5/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-1/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_eio@unwedge-stress:
    - shard-dg1:          [FAIL][147] ([i915#5784]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg1-16/igt@gem_eio@unwedge-stress.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-16/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-rkl:          [FAIL][149] ([i915#2842]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-rkl-7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][151] ([i915#2842]) -> [PASS][152] +1 similar issue
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_schedule@noreorder@vcs0:
    - shard-mtlp:         [DMESG-WARN][153] ([i915#9121]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-mtlp-4/igt@gem_exec_schedule@noreorder@vcs0.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@gem_exec_schedule@noreorder@vcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][155] ([i915#8489] / [i915#8668]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-rkl:          [SKIP][157] ([i915#1397]) -> [PASS][158] +1 similar issue
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-rkl-7/igt@i915_pm_rpm@dpms-non-lpsp.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_pm_rpm@i2c:
    - shard-dg2:          [FAIL][159] ([i915#8717]) -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg2-2/igt@i915_pm_rpm@i2c.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-12/igt@i915_pm_rpm@i2c.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg2:          [SKIP][161] ([i915#1397]) -> [PASS][162] +3 similar issues
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg2-10/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-5/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
    - shard-mtlp:         [FAIL][163] ([i915#2521]) -> [PASS][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-mtlp-8/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-1/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html

  * igt@kms_cursor_legacy@single-move@all-pipes:
    - shard-mtlp:         [DMESG-WARN][165] ([i915#2017]) -> [PASS][166]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@kms_cursor_legacy@single-move@all-pipes.html

  * igt@kms_vblank@pipe-c-accuracy-idle:
    - shard-glk:          [FAIL][167] ([i915#8713]) -> [PASS][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-glk7/igt@kms_vblank@pipe-c-accuracy-idle.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-glk7/igt@kms_vblank@pipe-c-accuracy-idle.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-tglu:         [FAIL][169] ([i915#2681] / [i915#3591]) -> [WARN][170] ([i915#2681])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [INCOMPLETE][171] ([i915#4817]) -> [FAIL][172] ([fdo#103375])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_async_flips@crc@pipe-a-edp-1:
    - shard-mtlp:         [DMESG-FAIL][173] ([i915#1982] / [i915#8561]) -> [DMESG-FAIL][174] ([i915#8561])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-mtlp-2/igt@kms_async_flips@crc@pipe-a-edp-1.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-6/igt@kms_async_flips@crc@pipe-a-edp-1.html

  * igt@kms_content_protection@mei_interface:
    - shard-dg2:          [SKIP][175] ([i915#7118]) -> [SKIP][176] ([i915#7118] / [i915#7162]) +1 similar issue
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg2-2/igt@kms_content_protection@mei_interface.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-12/igt@kms_content_protection@mei_interface.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][177] ([fdo#110189] / [i915#3955]) -> [SKIP][178] ([i915#3955])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_psr@cursor_plane_move:
    - shard-dg1:          [SKIP][179] ([i915#1072]) -> [SKIP][180] ([i915#1072] / [i915#4078]) +1 similar issue
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg1-14/igt@kms_psr@cursor_plane_move.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-12/igt@kms_psr@cursor_plane_move.html

  * igt@sysfs_preempt_timeout@timeout@vecs0:
    - shard-mtlp:         [TIMEOUT][181] ([i915#8521]) -> [ABORT][182] ([i915#8521] / [i915#8865])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-mtlp-1/igt@sysfs_preempt_timeout@timeout@vecs0.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-4/igt@sysfs_preempt_timeout@timeout@vecs0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5882]: https://gitlab.freedesktop.org/drm/intel/issues/5882
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6228]: https://gitlab.freedesktop.org/drm/intel/issues/6228
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6311]: https://gitlab.freedesktop.org/drm/intel/issues/6311
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7061]: https://gitlab.freedesktop.org/drm/intel/issues/7061
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8063]: https://gitlab.freedesktop.org/drm/intel/issues/8063
  [i915#8190]: https://gitlab.freedesktop.org/drm/intel/issues/8190
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/intel/issues/8430
  [i915#8489]: https://gitlab.freedesktop.org/drm/intel/issues/8489
  [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
  [i915#8521]: https://gitlab.freedesktop.org/drm/intel/issues/8521
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8561]: https://gitlab.freedesktop.org/drm/intel/issues/8561
  [i915#8617]: https://gitlab.freedesktop.org/drm/intel/issues/8617
  [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8713]: https://gitlab.freedesktop.org/drm/intel/issues/8713
  [i915#8717]: https://gitlab.freedesktop.org/drm/intel/issues/8717
  [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#8865]: https://gitlab.freedesktop.org/drm/intel/issues/8865
  [i915#8898]: https://gitlab.freedesktop.org/drm/intel/issues/8898
  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
  [i915#9121]: https://gitlab.freedesktop.org/drm/intel/issues/9121
  [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227


Build changes
-------------

  * Linux: CI_DRM_13575 -> Patchwork_123057v1

  CI-20190529: 20190529
  CI_DRM_13575: 05be2315bcb0d65730be1bafd7ec047a994e4817 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7459: 7459
  Patchwork_123057v1: 05be2315bcb0d65730be1bafd7ec047a994e4817 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/index.html

--===============3378539204933858530==
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
<tr><td><b>Series:</b></td><td>drm/i915: add minimal i915_gem_object_frontbuffer.h</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/123057/">https://patchwork.freedesktop.org/series/123057/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13575_full -&gt; Patchwork_123057v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_123057v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_123057v1_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_123057v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-tglu-6/igt@gem_exec_capture@pi@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-tglu-4/igt@gem_exec_capture@pi@bcs0.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@close-race:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-snb1/igt@gem_mmap_offset@close-race.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-snb6/igt@gem_mmap_offset@close-race.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_123057v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@api_intel_bb@object-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@drm_fdinfo@most-busy-check-all@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8414">i915#8414</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-4x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@feature_discovery@display-4x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_barrier_race@remote-request@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-glk8/igt@gem_barrier_race@remote-request@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-glk9/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8190">i915#8190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-tglu-8/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@ccs3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-1/igt@gem_ctx_isolation@preservation-s3@ccs3.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-cleanup:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-snb5/igt@gem_ctx_persistence@engines-cleanup.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1099">i915#1099</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@gem_ctx_persistence@hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5882">i915#5882</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@gem_eio@hibernate.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg1-17/igt@gem_eio@kms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-17/igt@gem_eio@kms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-snb5/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8898">i915#8898</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@gem_exec_capture@capture-invisible@lmem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6334">i915#6334</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@gem_exec_fair@basic-pace-share.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</p>
</li>
<li>
<p>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@gem_exec_reloc@basic-concurrent16.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-1/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-object:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@gem_mmap_wc@bad-object.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@gem_mmap_wc@copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-display:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@gem_partial_pwrite_pread@reads-display.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@gem_partial_pwrite_pread@write-snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@gem_pxp@display-protected-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@gem_tiled_swapping@non-threaded.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_wb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@gem_tiled_wb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@gem_userptr_blits@relocations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@set-cache-level:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-7/igt@gem_userptr_blits@set-cache-level.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@gen3_render_linear_blits.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@i915_module_load@load.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6227">i915#6227</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-apl6/igt@i915_module_load@load.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6227">i915#6227</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-12/igt@i915_module_load@reload-with-fault-injection.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7061">i915#7061</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8617">i915#8617</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@i915_pm_backlight@fade-with-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-7/igt@i915_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg2-10/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-5/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@i915_pm_rps@thresholds-idle-park@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg2-10/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-5/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-mtlp-8/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-1/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-glk8/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-2-y-rc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-2-y-rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8502">i915#8502</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-17/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8502">i915#8502</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_async_flips@crc@pipe-b-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8247">i915#8247</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@kms_async_flips@invalid-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6228">i915#6228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-1/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-apl6/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-rotation-180-4_tiled_mtl_mc_ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@kms_ccs@pipe-d-crc-primary-rotation-180-4_tiled_mtl_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-after-suspend:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-apl6/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@kms_content_protection@mei_interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8063">i915#8063</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@kms_cursor_crc@cursor-random-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-mtlp-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9226">i915#9226</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-busy-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@kms_flip@2x-busy-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_hdr@static-swap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-snb1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-5/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-16/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-15/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6524">i915#6524</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6805">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-rkl-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_cmdline:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-snb5/igt@kms_selftest@drm_cmdline.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8661">i915#8661</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_damage:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@kms_selftest@drm_damage.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8661">i915#8661</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@kms_selftest@drm_format.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8661">i915#8661</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-snb5/igt@kms_tv_load_detect@load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +180 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@perf@global-sseu-config.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@ccs3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg2-12/igt@perf_pmu@busy-double-start@ccs3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-12/igt@perf_pmu@busy-double-start@ccs3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_create_bo@create-bo-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-7/igt@v3d/v3d_create_bo@create-bo-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_param@base-params:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@v3d/v3d_get_param@base-params.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-invalid-perfmon:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@v3d/v3d_perfmon@get-values-invalid-perfmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@create-two-perfmon:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-13/igt@vc4/vc4_perfmon@create-two-perfmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@set-bad-handle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@vc4/vc4_tiling@set-bad-handle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_seqno@bad-seqno-1ns:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-10/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg2-6/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6311">i915#6311</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7297">i915#7297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-8/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg2-5/igt@gem_ctx_isolation@preservation-s3@bcs0.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-1/igt@gem_ctx_isolation@preservation-s3@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg2-5/igt@gem_ctx_isolation@preservation-s3@vcs0.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-1/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg1-16/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-16/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-rkl-7/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@noreorder@vcs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-mtlp-4/igt@gem_exec_schedule@noreorder@vcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9121">i915#9121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@gem_exec_schedule@noreorder@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8489">i915#8489</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-rkl-7/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg2-2/igt@i915_pm_rpm@i2c.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8717">i915#8717</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-12/igt@i915_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg2-10/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-5/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-mtlp-8/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-1/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-move@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2017">i915#2017</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-3/igt@kms_cursor_legacy@single-move@all-pipes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-accuracy-idle:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-glk7/igt@kms_vblank@pipe-c-accuracy-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8713">i915#8713</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-glk7/igt@kms_vblank@pipe-c-accuracy-idle.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-mtlp-2/igt@kms_async_flips@crc@pipe-a-edp-1.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8561">i915#8561</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-6/igt@kms_async_flips@crc@pipe-a-edp-1.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8561">i915#8561</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg2-2/igt@kms_content_protection@mei_interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg2-12/igt@kms_content_protection@mei_interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7162">i915#7162</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-dg1-14/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-dg1-12/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@vecs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/shard-mtlp-1/igt@sysfs_preempt_timeout@timeout@vecs0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8521">i915#8521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123057v1/shard-mtlp-4/igt@sysfs_preempt_timeout@timeout@vecs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8521">i915#8521</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8865">i915#8865</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13575 -&gt; Patchwork_123057v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13575: 05be2315bcb0d65730be1bafd7ec047a994e4817 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7459: 7459<br />
  Patchwork_123057v1: 05be2315bcb0d65730be1bafd7ec047a994e4817 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============3378539204933858530==--
