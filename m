Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD80E9D4A51
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2024 11:00:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D4E210E21A;
	Thu, 21 Nov 2024 10:00:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9210510E21A;
 Thu, 21 Nov 2024 10:00:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8511628003474758465=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_series_starting_with_=5B?=
 =?utf-8?q?CI=2C1/3=5D_drm/i915/display=3A_Move_shutdown_sequences_under_dis?=
 =?utf-8?q?play_driver?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Nov 2024 10:00:04 -0000
Message-ID: <173218320460.1080535.8578547859571061304@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241119184414.336105-1-rodrigo.vivi@intel.com>
In-Reply-To: <20241119184414.336105-1-rodrigo.vivi@intel.com>
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

--===============8511628003474758465==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/3] drm/i915/display: Move shutdown sequences under display driver
URL   : https://patchwork.freedesktop.org/series/141566/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15721_full -> Patchwork_141566v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_141566v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_141566v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 12)
------------------------------

  Additional (2): shard-snb-0 shard-dg2-set2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_141566v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-dg1:          NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-mtlp:         [PASS][2] -> ([PASS][3], [ABORT][4])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-mtlp-8/igt@gem_eio@in-flight-contexts-immediate.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@gem_eio@in-flight-contexts-immediate.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-4/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_schedule@wide:
    - shard-tglu:         [PASS][5] -> [INCOMPLETE][6] +1 other test incomplete
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-tglu-8/igt@gem_exec_schedule@wide.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-8/igt@gem_exec_schedule@wide.html

  * igt@i915_module_load@resize-bar:
    - shard-dg2:          [PASS][7] -> ([PASS][8], [SKIP][9]) +2 other tests ( 1 pass, 1 skip )
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-5/igt@i915_module_load@resize-bar.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-8/igt@i915_module_load@resize-bar.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@i915_module_load@resize-bar.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-snb:          [PASS][10] -> ([FAIL][11], [PASS][12])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-snb5/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_cursor_crc@cursor-offscreen-64x21@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> ([DMESG-WARN][13], [DMESG-WARN][14])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-3/igt@kms_cursor_crc@cursor-offscreen-64x21@pipe-b-hdmi-a-2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-64x21@pipe-b-hdmi-a-2.html

  * igt@kms_flip@flip-vs-panning@a-hdmi-a1:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][15] +21 other tests dmesg-warn
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-7/igt@kms_flip@flip-vs-panning@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
    - shard-rkl:          NOTRUN -> [DMESG-FAIL][16]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-2/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
    - shard-snb:          [PASS][17] -> ([DMESG-WARN][18], [PASS][19]) +1 other test ( 1 dmesg-warn, 1 pass )
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb7/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a3:
    - shard-dg1:          NOTRUN -> [FAIL][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-13/igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a3.html

  * igt@kms_plane@plane-position-hole-dpms@pipe-a-plane-4:
    - shard-rkl:          [PASS][21] -> ([PASS][22], [DMESG-WARN][23]) +3 other tests ( 1 dmesg-warn, 1 pass )
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-rkl-4/igt@kms_plane@plane-position-hole-dpms@pipe-a-plane-4.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-3/igt@kms_plane@plane-position-hole-dpms@pipe-a-plane-4.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-1/igt@kms_plane@plane-position-hole-dpms@pipe-a-plane-4.html

  * igt@perf_pmu@module-unload:
    - shard-tglu-1:       NOTRUN -> [ABORT][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-dg2:          [SKIP][25] -> ([SKIP][26], [SKIP][27]) ([i915#11078])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-11/igt@device_reset@unbind-cold-reset-rebind.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-2/igt@device_reset@unbind-cold-reset-rebind.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-dg2:          [WARN][28] -> ([WARN][29], [PASS][30])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-11/igt@i915_suspend@basic-s3-without-i915.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@i915_suspend@basic-s3-without-i915.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-2/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_draw_crc@draw-method-render@rgb565-ytiled:
    - shard-rkl:          [DMESG-WARN][31] -> ([DMESG-WARN][32], [PASS][33]) +5 other tests ( 1 dmesg-warn, 1 pass )
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-rkl-7/igt@kms_draw_crc@draw-method-render@rgb565-ytiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-7/igt@kms_draw_crc@draw-method-render@rgb565-ytiled.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-5/igt@kms_draw_crc@draw-method-render@rgb565-ytiled.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          [SKIP][34] -> ([SKIP][35], [SKIP][36]) ([i915#9519])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-11/igt@kms_pm_rpm@dpms-lpsp.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@kms_pm_rpm@dpms-lpsp.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-2/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-rkl:          [DMESG-WARN][37] -> ([SKIP][38], [DMESG-WARN][39]) ([i915#9519])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-2/igt@kms_pm_rpm@dpms-non-lpsp.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-3/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@perf_pmu@semaphore-wait-idle:
    - shard-dg2:          [SKIP][40] -> ([SKIP][41], [PASS][42]) +2 other tests ( 1 pass, 1 skip )
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-11/igt@perf_pmu@semaphore-wait-idle.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@perf_pmu@semaphore-wait-idle.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-2/igt@perf_pmu@semaphore-wait-idle.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15721_full and Patchwork_141566v1_full:

### New IGT tests (1) ###

  * igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-dp-4:
    - Statuses : 2 pass(s)
    - Exec time: [4.19, 4.46] s

  

Known issues
------------

  Here are the changes found in Patchwork_141566v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@crc32:
    - shard-dg1:          NOTRUN -> [SKIP][43] ([i915#6230])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@api_intel_bb@crc32.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#11078])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@all-busy-idle-check-all:
    - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#8414])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@drm_fdinfo@all-busy-idle-check-all.html

  * igt@drm_fdinfo@most-busy-check-all:
    - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#8414]) +13 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@drm_fdinfo@most-busy-check-all.html

  * igt@drm_fdinfo@most-busy-idle-check-all@vecs1:
    - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#8414]) +13 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-2/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html

  * igt@drm_fdinfo@virtual-busy:
    - shard-dg1:          NOTRUN -> ([SKIP][48], [SKIP][49]) ([i915#8414])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@drm_fdinfo@virtual-busy.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@drm_fdinfo@virtual-busy.html

  * igt@drm_fdinfo@virtual-busy-idle:
    - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#12506]) +1 other test skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@drm_fdinfo@virtual-busy-idle.html

  * igt@fbdev@eof:
    - shard-dg2:          [PASS][51] -> ([SKIP][52], [PASS][53]) ([i915#2582])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-5/igt@fbdev@eof.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@fbdev@eof.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-8/igt@fbdev@eof.html

  * igt@fbdev@nullptr:
    - shard-dg2:          [PASS][54] -> [SKIP][55] ([i915#2582])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-1/igt@fbdev@nullptr.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@fbdev@nullptr.html

  * igt@gem_basic@multigpu-create-close:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#7697])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          NOTRUN -> ([SKIP][57], [SKIP][58]) ([i915#9323])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-2/igt@gem_ccs@block-multicopy-compressed.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-3/igt@gem_ccs@block-multicopy-compressed.html
    - shard-tglu:         NOTRUN -> [SKIP][59] ([i915#9323])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-4/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-tglu:         NOTRUN -> ([SKIP][60], [SKIP][61]) ([i915#3555] / [i915#9323])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-3/igt@gem_ccs@block-multicopy-inplace.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][62] -> ([PASS][63], [INCOMPLETE][64]) ([i915#12392] / [i915#7297])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][65] -> [INCOMPLETE][66] ([i915#7297])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-4/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-5/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#7697])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-tglu-1:       NOTRUN -> [SKIP][68] ([i915#7697])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-rkl:          [PASS][69] -> ([FAIL][70], [FAIL][71]) ([i915#12031])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-rkl-3/igt@gem_ctx_engines@invalid-engines.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-1/igt@gem_ctx_engines@invalid-engines.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-7/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_persistence@hang:
    - shard-dg1:          NOTRUN -> ([SKIP][72], [SKIP][73]) ([i915#8555])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_ctx_persistence@hang.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#8555])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#8555])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#280])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@kms:
    - shard-dg1:          NOTRUN -> [FAIL][77] ([i915#5784])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_eio@kms.html

  * igt@gem_eio@unwedge-stress:
    - shard-dg1:          NOTRUN -> [FAIL][78] ([i915#12714] / [i915#5784])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#4036])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-tglu-1:       NOTRUN -> [SKIP][80] ([i915#6344])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_capture@capture@vecs0-lmem0:
    - shard-dg1:          NOTRUN -> ([FAIL][81], [FAIL][82]) ([i915#11965] / [i915#12558]) +2 other tests ( 2 fail )
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_exec_capture@capture@vecs0-lmem0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_exec_capture@capture@vecs0-lmem0.html

  * igt@gem_exec_fence@submit3:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#4812])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#3539] / [i915#4852]) +2 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_exec_flush@basic-batch-kernel-default-wb.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg1:          NOTRUN -> ([SKIP][85], [SKIP][86]) ([i915#3539] / [i915#4852]) +1 other test ( 2 skip )
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-12/igt@gem_exec_flush@basic-uc-pro-default.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg1:          NOTRUN -> [SKIP][87] ([i915#3539])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_reloc@basic-cpu-wc-active:
    - shard-mtlp:         NOTRUN -> [SKIP][88] ([i915#3281]) +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@gem_exec_reloc@basic-cpu-wc-active.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#3281]) +3 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_exec_reloc@basic-gtt-wc:
    - shard-dg1:          NOTRUN -> ([SKIP][90], [SKIP][91]) ([i915#3281]) +8 other tests ( 2 skip )
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_exec_reloc@basic-gtt-wc.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@gem_exec_reloc@basic-gtt-wc.html

  * igt@gem_exec_reloc@basic-wc-gtt-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][92] ([i915#3281]) +9 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_exec_reloc@basic-wc-gtt-noreloc.html

  * igt@gem_exec_schedule@preempt-queue-contexts:
    - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#4812]) +2 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_exec_schedule@preempt-queue-contexts.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-dg1:          NOTRUN -> ([SKIP][94], [SKIP][95]) ([i915#4812])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_exec_schedule@semaphore-power.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#4860])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#4860]) +1 other test skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-dg1:          NOTRUN -> ([SKIP][98], [SKIP][99]) ([i915#4860])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_fenced_exec_thrash@too-many-fences.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-tglu-1:       NOTRUN -> [SKIP][100] ([i915#4613] / [i915#7582])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-tglu:         NOTRUN -> ([SKIP][101], [SKIP][102]) ([i915#4613])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@gem_lmem_swapping@massive-random.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-dg2:          [PASS][103] -> [SKIP][104] ([i915#12936])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-1/igt@gem_lmem_swapping@parallel-multi.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#4613])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-5/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][106] ([i915#12193])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
    - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#4613])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#4565])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-dg2:          [PASS][109] -> ([SKIP][110], [PASS][111]) ([i915#12936])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-5/igt@gem_lmem_swapping@random-engines.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@gem_lmem_swapping@random-engines.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-8/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-dg1:          NOTRUN -> ([SKIP][112], [SKIP][113]) ([i915#12193])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_lmem_swapping@verify-ccs.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-12/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-ccs@lmem0:
    - shard-dg1:          NOTRUN -> ([SKIP][114], [SKIP][115]) ([i915#4565])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-12/igt@gem_lmem_swapping@verify-ccs@lmem0.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_lmem_swapping@verify-ccs@lmem0.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-dg2:          [PASS][116] -> ([SKIP][117], [SKIP][118]) ([i915#12936])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-2/igt@gem_lmem_swapping@verify-random-ccs.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-1/igt@gem_lmem_swapping@verify-random-ccs.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-4/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_mmap@bad-offset:
    - shard-dg1:          NOTRUN -> ([SKIP][119], [SKIP][120]) ([i915#4083]) +1 other test ( 2 skip )
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_mmap@bad-offset.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_mmap@bad-offset.html

  * igt@gem_mmap_gtt@big-bo-tiledy:
    - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#4077]) +3 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@gem_mmap_gtt@big-bo-tiledy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-dg1:          NOTRUN -> ([SKIP][122], [SKIP][123]) ([i915#4077]) +3 other tests ( 2 skip )
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@zero-extend:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#4077]) +6 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_mmap_gtt@zero-extend.html

  * igt@gem_mmap_offset@clear@smem0:
    - shard-mtlp:         [PASS][125] -> ([ABORT][126], [ABORT][127]) ([i915#10729]) +1 other test ( 2 abort )
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-mtlp-2/igt@gem_mmap_offset@clear@smem0.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-6/igt@gem_mmap_offset@clear@smem0.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-3/igt@gem_mmap_offset@clear@smem0.html

  * igt@gem_mmap_wc@copy:
    - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#4083]) +2 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@gem_mmap_wc@copy.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#3282])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg1:          NOTRUN -> [SKIP][130] ([i915#3282]) +2 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_pread@exhaustion:
    - shard-dg1:          NOTRUN -> ([SKIP][131], [SKIP][132]) ([i915#3282]) +2 other tests ( 2 skip )
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_pread@exhaustion.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-self:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#3282]) +2 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_pwrite@basic-self.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#4270]) +2 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#4270])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-dg1:          NOTRUN -> ([SKIP][136], [SKIP][137]) ([i915#4270])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#8428]) +1 other test skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#2575] / [i915#5190]) +2 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#5190] / [i915#8428]) +4 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html

  * igt@gem_render_tiled_blits@basic:
    - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#4079]) +1 other test skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_render_tiled_blits@basic.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-dg1:          NOTRUN -> ([SKIP][142], [SKIP][143]) ([i915#4079])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg1:          NOTRUN -> [SKIP][144] ([i915#4885])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_softpin@evict-snoop.html
    - shard-mtlp:         NOTRUN -> [SKIP][145] ([i915#4885])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@gem_softpin@evict-snoop.html

  * igt@gem_softpin@invalid:
    - shard-dg2:          [PASS][146] -> [SKIP][147] ([i915#2575]) +40 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-1/igt@gem_softpin@invalid.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@gem_softpin@invalid.html

  * igt@gem_tiled_pread_pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#4079])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_tiled_pread_pwrite.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#4879])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#3297]) +3 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#3297])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-dg1:          NOTRUN -> ([SKIP][152], [SKIP][153]) ([i915#3282] / [i915#3297])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_userptr_blits@forbidden-operations.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-12/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#3297]) +1 other test skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
    - shard-tglu:         NOTRUN -> ([SKIP][155], [SKIP][156]) ([i915#3297])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-3/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate:
    - shard-dg1:          NOTRUN -> [SKIP][157] ([i915#3297] / [i915#4880])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@gem_userptr_blits@map-fixed-invalidate.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-tglu-1:       NOTRUN -> [SKIP][158] ([i915#3297]) +2 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_watchdog@default-physical:
    - shard-tglu:         NOTRUN -> ([SKIP][159], [SKIP][160]) ([i915#12961])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@gem_watchdog@default-physical.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-3/igt@gem_watchdog@default-physical.html
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#12961])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_watchdog@default-physical.html

  * igt@gem_watchdog@default-virtual:
    - shard-tglu-1:       NOTRUN -> [SKIP][162] ([i915#12961])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@gem_watchdog@default-virtual.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][163] -> ([PASS][164], [ABORT][165]) ([i915#5566])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-glk3/igt@gen9_exec_parse@allowed-all.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-glk6/igt@gen9_exec_parse@allowed-all.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-glk8/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#2856])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@bb-large:
    - shard-tglu:         NOTRUN -> ([SKIP][167], [SKIP][168]) ([i915#2527] / [i915#2856]) +1 other test ( 2 skip )
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@gen9_exec_parse@bb-large.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#2856])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-dg1:          NOTRUN -> ([SKIP][170], [SKIP][171]) ([i915#2527]) +1 other test ( 2 skip )
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gen9_exec_parse@bb-secure.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gen9_exec_parse@bb-secure.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-tglu-1:       NOTRUN -> [SKIP][172] ([i915#2527] / [i915#2856]) +2 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-dg1:          NOTRUN -> [SKIP][173] ([i915#2527]) +3 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [PASS][174] -> ([PASS][175], [ABORT][176]) ([i915#9820])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-3/igt@i915_module_load@reload-with-fault-injection.html
    - shard-rkl:          [PASS][177] -> ([ABORT][178], [ABORT][179]) ([i915#9820])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-3/igt@i915_module_load@reload-with-fault-injection.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
    - shard-snb:          [PASS][180] -> ([PASS][181], [ABORT][182]) ([i915#9820])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         [PASS][183] -> ([PASS][184], [ABORT][185]) ([i915#12817] / [i915#9820])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-tglu-10/igt@i915_module_load@reload-with-fault-injection.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@i915_module_load@reload-with-fault-injection.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_module_load@resize-bar:
    - shard-tglu-1:       NOTRUN -> [SKIP][186] ([i915#6412])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@i915_module_load@resize-bar.html
    - shard-dg1:          NOTRUN -> [SKIP][187] ([i915#7178])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-tglu-1:       NOTRUN -> [WARN][188] ([i915#2681]) +4 other tests warn
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_pm_rps@thresholds:
    - shard-dg1:          NOTRUN -> [SKIP][189] ([i915#11681])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@i915_pm_rps@thresholds.html

  * igt@i915_pm_rps@thresholds-idle-park:
    - shard-dg1:          NOTRUN -> ([SKIP][190], [SKIP][191]) ([i915#11681])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@i915_pm_rps@thresholds-idle-park.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@i915_pm_rps@thresholds-idle-park.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg1:          NOTRUN -> [SKIP][192] ([i915#4387])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-tglu-1:       NOTRUN -> [SKIP][193] +59 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_query@query-topology-unsupported:
    - shard-glk:          NOTRUN -> [SKIP][194] +1 other test skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-glk5/igt@i915_query@query-topology-unsupported.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-dg1:          NOTRUN -> [SKIP][195] ([i915#5723])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-tglu-1:       NOTRUN -> [INCOMPLETE][196] ([i915#7443])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@i915_suspend@sysfs-reader:
    - shard-tglu:         [PASS][197] -> ([ABORT][198], [PASS][199]) ([i915#8213])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-tglu-9/igt@i915_suspend@sysfs-reader.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@i915_suspend@sysfs-reader.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#4212])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][201] ([i915#4212] / [i915#4215])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#4212]) +1 other test skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - shard-dg1:          NOTRUN -> [SKIP][203] ([i915#4212]) +1 other test skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-tglu:         NOTRUN -> ([FAIL][204], [PASS][205]) ([i915#10991]) +1 other test ( 1 fail, 1 pass )
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_async_flips@alternate-sync-async-flip.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#8709]) +3 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][207] ([i915#8709]) +7 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-1-y-rc-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][208] ([i915#8709]) +7 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-1-y-rc-ccs.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg1:          NOTRUN -> [SKIP][209] ([i915#9531])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@modeset-transition:
    - shard-glk:          [PASS][210] -> [FAIL][211] ([i915#12238])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-glk6/igt@kms_atomic_transition@modeset-transition.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-glk8/igt@kms_atomic_transition@modeset-transition.html

  * igt@kms_atomic_transition@modeset-transition@2x-outputs:
    - shard-glk:          [PASS][212] -> [FAIL][213] ([i915#11859])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-glk6/igt@kms_atomic_transition@modeset-transition@2x-outputs.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-glk8/igt@kms_atomic_transition@modeset-transition@2x-outputs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-tglu:         [PASS][214] -> [FAIL][215] ([i915#11808]) +1 other test fail
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [FAIL][216] ([i915#5956]) +1 other test fail
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-1.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition:
    - shard-dg2:          [PASS][217] -> ([PASS][218], [FAIL][219]) ([i915#5956]) +1 other test ( 1 fail, 1 pass )
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-8/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-2/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#5286])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-dg1:          NOTRUN -> ([SKIP][221], [SKIP][222]) ([i915#4538] / [i915#5286])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][223] ([i915#5286]) +4 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-tglu:         NOTRUN -> ([SKIP][224], [SKIP][225]) ([i915#5286]) +1 other test ( 2 skip )
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-3/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#4538] / [i915#5286]) +5 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          NOTRUN -> ([SKIP][227], [SKIP][228]) ([i915#5286])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
    - shard-tglu:         NOTRUN -> [SKIP][229] ([i915#5286])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@linear-16bpp-rotate-270:
    - shard-tglu:         NOTRUN -> ([SKIP][230], [SKIP][231]) +38 other tests ( 2 skip )
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_big_fb@linear-16bpp-rotate-270.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_big_fb@linear-16bpp-rotate-270.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> ([SKIP][232], [SKIP][233])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-5/igt@kms_big_fb@linear-16bpp-rotate-90.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-3/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-dg1:          NOTRUN -> ([SKIP][234], [SKIP][235]) ([i915#3638]) +1 other test ( 2 skip )
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-12/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#4538] / [i915#5190]) +5 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][237] ([i915#3638]) +3 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][238] +1 other test skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-3/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
    - shard-tglu:         NOTRUN -> [SKIP][239] +2 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - shard-dg1:          NOTRUN -> ([SKIP][240], [SKIP][241]) ([i915#4538]) +1 other test ( 2 skip )
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][242] +2 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-dg1:          NOTRUN -> [SKIP][243] ([i915#4538]) +3 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-mtlp:         NOTRUN -> ([SKIP][244], [SKIP][245])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#10307] / [i915#6095]) +148 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-4/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> ([SKIP][247], [SKIP][248]) ([i915#6095]) +34 other tests ( 2 skip )
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-3/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][249] ([i915#12313]) +1 other test skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][250] ([i915#6095]) +177 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][251] ([i915#6095]) +16 other tests skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-8/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][252] ([i915#12313])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> ([SKIP][253], [SKIP][254]) ([i915#10307] / [i915#6095]) +12 other tests ( 2 skip )
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> ([SKIP][255], [SKIP][256]) ([i915#6095]) +49 other tests ( 2 skip )
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][257] ([i915#6095]) +4 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-a-edp-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][258] ([i915#10307] / [i915#10434] / [i915#6095]) +5 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-tglu:         NOTRUN -> ([SKIP][259], [SKIP][260]) ([i915#12313]) +1 other test ( 2 skip )
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-3/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
    - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#12313])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][262] ([i915#6095]) +34 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> ([SKIP][263], [SKIP][264]) ([i915#6095]) +14 other tests ( 2 skip )
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-1/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-y-tiled-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][265] ([i915#6095]) +4 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-4/igt@kms_ccs@random-ccs-data-y-tiled-ccs.html

  * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][266] ([i915#6095]) +123 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-2/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition:
    - shard-dg1:          NOTRUN -> ([SKIP][267], [SKIP][268]) ([i915#3742])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_cdclk@mode-transition.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg1:          NOTRUN -> [SKIP][269] ([i915#3742])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_cdclk@mode-transition-all-outputs.html
    - shard-mtlp:         NOTRUN -> [SKIP][270] ([i915#7213] / [i915#9010])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][271] ([i915#7828]) +4 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:
    - shard-tglu:         NOTRUN -> ([SKIP][272], [SKIP][273]) ([i915#7828]) +4 other tests ( 2 skip )
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html

  * igt@kms_chamelium_frames@hdmi-crc-multiple:
    - shard-rkl:          NOTRUN -> [SKIP][274] ([i915#7828])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-multiple.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - shard-mtlp:         NOTRUN -> [SKIP][275] ([i915#7828]) +1 other test skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
    - shard-dg1:          NOTRUN -> ([SKIP][276], [SKIP][277]) ([i915#7828]) +3 other tests ( 2 skip )
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-tglu-1:       NOTRUN -> [SKIP][278] ([i915#7828]) +6 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-fast.html
    - shard-dg1:          NOTRUN -> [SKIP][279] ([i915#7828]) +9 other tests skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-rkl:          NOTRUN -> ([SKIP][280], [SKIP][281]) ([i915#7828])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
    - shard-tglu:         NOTRUN -> [SKIP][282] ([i915#7828])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-4/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][283] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@content-type-change:
    - shard-tglu:         NOTRUN -> ([SKIP][284], [SKIP][285]) ([i915#6944] / [i915#9424])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_content_protection@content-type-change.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> ([SKIP][286], [SKIP][287]) ([i915#3116] / [i915#3299])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@kms_content_protection@dp-mst-lic-type-0.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-10/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][288] ([i915#3116] / [i915#3299])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_content_protection@dp-mst-type-0.html
    - shard-dg1:          NOTRUN -> [SKIP][289] ([i915#3299])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-dg1:          NOTRUN -> ([SKIP][290], [SKIP][291]) ([i915#7116] / [i915#9424])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_content_protection@legacy.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@uevent:
    - shard-dg1:          NOTRUN -> [SKIP][292] ([i915#7116] / [i915#9424])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][293] ([i915#11453] / [i915#3359])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-dg1:          NOTRUN -> ([SKIP][294], [SKIP][295]) ([i915#11453] / [i915#3359])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_cursor_crc@cursor-onscreen-512x170.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-tglu-1:       NOTRUN -> [SKIP][296] ([i915#11453] / [i915#3359]) +1 other test skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-random-max-size:
    - shard-tglu:         NOTRUN -> ([SKIP][297], [SKIP][298]) ([i915#3555]) +2 other tests ( 2 skip )
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_cursor_crc@cursor-random-max-size.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_cursor_crc@cursor-random-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg1:          NOTRUN -> [SKIP][299] ([i915#11453] / [i915#3359]) +2 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-tglu-1:       NOTRUN -> [SKIP][300] ([i915#4103])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-dg1:          NOTRUN -> ([SKIP][301], [SKIP][302]) ([i915#4103] / [i915#4213])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-12/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - shard-dg1:          [PASS][303] -> ([DMESG-WARN][304], [PASS][305]) ([i915#4423])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg1-12/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-13/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][306] ([i915#5354]) +22 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-snb:          [PASS][307] -> ([FAIL][308], [PASS][309]) ([i915#2346])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-tglu-1:       NOTRUN -> [SKIP][310] ([i915#9067])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-dg1:          NOTRUN -> [SKIP][311] ([i915#9067])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-mtlp:         NOTRUN -> ([SKIP][312], [SKIP][313]) ([i915#3555] / [i915#8827])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-4/igt@kms_display_modes@extended-mode-basic.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-7/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg1:          NOTRUN -> [SKIP][314] ([i915#8588])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-dg2:          [PASS][315] -> ([SKIP][316], [SKIP][317]) ([i915#3555])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
    - shard-tglu:         NOTRUN -> ([SKIP][318], [SKIP][319]) ([i915#1769] / [i915#3555] / [i915#3804])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> ([SKIP][320], [SKIP][321]) ([i915#3804])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> ([SKIP][322], [SKIP][323]) ([i915#3804])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dp_aux_dev:
    - shard-tglu-1:       NOTRUN -> [SKIP][324] ([i915#1257])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_dp_aux_dev.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-tglu-1:       NOTRUN -> [SKIP][325] ([i915#12402])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg1:          NOTRUN -> [SKIP][326] ([i915#3555] / [i915#3840]) +1 other test skip
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-dg1:          NOTRUN -> ([SKIP][327], [SKIP][328]) ([i915#3555] / [i915#3840])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_dsc@dsc-with-output-formats.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-12/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_feature_discovery@chamelium:
    - shard-tglu:         NOTRUN -> ([SKIP][329], [SKIP][330]) ([i915#2065] / [i915#4854])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-3/igt@kms_feature_discovery@chamelium.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@kms_feature_discovery@chamelium.html
    - shard-dg2:          NOTRUN -> [SKIP][331] ([i915#4854])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-2x:
    - shard-dg2:          NOTRUN -> [SKIP][332] ([i915#1839])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@display-3x:
    - shard-tglu-1:       NOTRUN -> [SKIP][333] ([i915#1839])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          NOTRUN -> [SKIP][334] ([i915#9337])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_feature_discovery@psr2:
    - shard-dg1:          NOTRUN -> [SKIP][335] ([i915#658])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_feature_discovery@psr2.html

  * igt@kms_fence_pin_leak:
    - shard-dg1:          NOTRUN -> [SKIP][336] ([i915#4881])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank:
    - shard-mtlp:         NOTRUN -> [SKIP][337] ([i915#3637])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@kms_flip@2x-blocking-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-mtlp:         NOTRUN -> ([SKIP][338], [SKIP][339]) ([i915#3637])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-7/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-tglu:         NOTRUN -> ([SKIP][340], [SKIP][341]) ([i915#3637]) +5 other tests ( 2 skip )
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_flip@2x-nonexisting-fb.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@2x-plain-flip:
    - shard-tglu-1:       NOTRUN -> [SKIP][342] ([i915#3637]) +5 other tests skip
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][343] ([i915#9934]) +10 other tests skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-dg1:          NOTRUN -> ([SKIP][344], [SKIP][345]) ([i915#9934]) +1 other test ( 2 skip )
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@absolute-wf_vblank-interruptible@b-hdmi-a1:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][346] ([i915#12917]) +2 other tests dmesg-warn
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-2/igt@kms_flip@absolute-wf_vblank-interruptible@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
    - shard-mtlp:         [PASS][347] -> ([PASS][348], [FAIL][349]) ([i915#2122]) +7 other tests ( 1 fail, 1 pass )
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-mtlp-6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-1/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-8/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1:
    - shard-mtlp:         [PASS][350] -> ([PASS][351], [FAIL][352]) ([i915#11989])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-mtlp-6/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-1/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-8/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1:
    - shard-tglu:         [PASS][353] -> ([FAIL][354], [PASS][355]) ([i915#2122]) +1 other test ( 1 fail, 1 pass )
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-tglu-4/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-10/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1:
    - shard-rkl:          NOTRUN -> [FAIL][356] ([i915#2122]) +1 other test fail
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-2/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html
    - shard-tglu:         NOTRUN -> ([FAIL][357], [PASS][358]) ([i915#2122]) +1 other test ( 1 fail, 1 pass )
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-10/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-vga1:
    - shard-snb:          [PASS][359] -> ([FAIL][360], [PASS][361]) ([i915#2122]) +3 other tests ( 1 fail, 1 pass )
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-snb5/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb5/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb1/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a3:
    - shard-dg2:          NOTRUN -> [FAIL][362] ([i915#10826])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-2/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a3.html
    - shard-dg1:          NOTRUN -> [FAIL][363] ([i915#12517]) +1 other test fail
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-13/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a3.html

  * igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1:
    - shard-tglu:         NOTRUN -> ([FAIL][364], [FAIL][365]) ([i915#2122]) +1 other test ( 2 fail )
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-10/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a3:
    - shard-dg2:          NOTRUN -> [FAIL][366] ([i915#2122]) +1 other test fail
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-2/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a3.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-rkl:          [PASS][367] -> ([PASS][368], [FAIL][369]) ([i915#11989] / [i915#2122])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-rkl-2/igt@kms_flip@plain-flip-ts-check.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-4/igt@kms_flip@plain-flip-ts-check.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-5/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-mtlp:         [PASS][370] -> ([FAIL][371], [FAIL][372]) ([i915#11989] / [i915#2122])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-6/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:
    - shard-snb:          [PASS][373] -> ([FAIL][374], [FAIL][375]) ([i915#2122])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-snb1/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb4/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb7/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a3:
    - shard-dg2:          [PASS][376] -> [FAIL][377] ([i915#2122]) +3 other tests fail
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-2/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a3.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-1/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a3.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1:
    - shard-mtlp:         [PASS][378] -> ([FAIL][379], [FAIL][380]) ([i915#2122])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-6/igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1.html

  * igt@kms_flip@plain-flip-ts-check@b-hdmi-a2:
    - shard-rkl:          NOTRUN -> [FAIL][381] ([i915#11989]) +1 other test fail
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-5/igt@kms_flip@plain-flip-ts-check@b-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][382] ([i915#2672] / [i915#3555] / [i915#8813])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][383] ([i915#2672] / [i915#8813])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
    - shard-dg1:          NOTRUN -> ([SKIP][384], [SKIP][385]) ([i915#2672] / [i915#3555])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> ([SKIP][386], [SKIP][387]) ([i915#2587] / [i915#2672])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][388] ([i915#2672] / [i915#3555])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][389] ([i915#2672])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
    - shard-tglu:         NOTRUN -> ([SKIP][390], [SKIP][391]) ([i915#2672] / [i915#3555]) +2 other tests ( 2 skip )
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-tglu:         NOTRUN -> ([SKIP][392], [SKIP][393]) ([i915#2587] / [i915#2672] / [i915#3555])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> ([SKIP][394], [SKIP][395]) ([i915#2587] / [i915#2672]) +3 other tests ( 2 skip )
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][396] ([i915#2672] / [i915#3555] / [i915#5190])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-dg2:          [PASS][397] -> ([PASS][398], [SKIP][399]) +8 other tests ( 1 pass, 1 skip )
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
    - shard-tglu-1:       NOTRUN -> [SKIP][400] ([i915#2672] / [i915#3555]) +1 other test skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][401] ([i915#2672] / [i915#3555]) +1 other test skip
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][402] ([i915#2587] / [i915#2672]) +1 other test skip
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-dg1:          NOTRUN -> [SKIP][403] ([i915#2672] / [i915#3555]) +3 other tests skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][404] ([i915#2587] / [i915#2672]) +3 other tests skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][405] ([i915#2672]) +5 other tests skip
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          [PASS][406] -> [SKIP][407] +4 other tests skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          [PASS][408] -> ([FAIL][409], [FAIL][410]) ([i915#6880])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg2:          [PASS][411] -> ([FAIL][412], [PASS][413]) ([i915#6880]) +1 other test ( 1 fail, 1 pass )
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> ([SKIP][414], [SKIP][415]) +10 other tests ( 2 skip )
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][416] ([i915#8708]) +15 other tests skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:
    - shard-mtlp:         NOTRUN -> ([SKIP][417], [SKIP][418]) ([i915#1825])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][419] +43 other tests skip
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][420] ([i915#8708]) +1 other test skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-snb:          [PASS][421] -> ([SKIP][422], [SKIP][423]) +4 other tests ( 2 skip )
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-dg1:          NOTRUN -> [SKIP][424] ([i915#3458]) +18 other tests skip
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][425] +21 other tests skip
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> ([SKIP][426], [SKIP][427]) ([i915#1825])
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> ([SKIP][428], [SKIP][429]) ([i915#3458]) +5 other tests ( 2 skip )
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][430] ([i915#3458]) +5 other tests skip
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> ([SKIP][431], [SKIP][432]) ([i915#8708]) +5 other tests ( 2 skip )
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][433] ([i915#1825]) +4 other tests skip
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> ([SKIP][434], [SKIP][435]) ([i915#5354]) +1 other test ( 2 skip )
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-pwrite.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][436] ([i915#8708]) +26 other tests skip
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_hdr@static-toggle:
    - shard-tglu-1:       NOTRUN -> [SKIP][437] ([i915#3555] / [i915#8228])
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][438] ([i915#3555] / [i915#8228]) +2 other tests skip
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][439] ([i915#10656])
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg1:          NOTRUN -> [SKIP][440] ([i915#12388])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-dg1:          NOTRUN -> ([SKIP][441], [SKIP][442]) ([i915#12394])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglu:         NOTRUN -> ([SKIP][443], [SKIP][444]) ([i915#1839])
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-dg2:          [PASS][445] -> ([PASS][446], [SKIP][447]) ([i915#2575]) +85 other tests ( 1 pass, 1 skip )
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-5/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_plane@pixel-format-source-clamping:
    - shard-tglu:         [PASS][448] -> ([ABORT][449], [PASS][450]) ([i915#10354]) +1 other test ( 1 abort, 1 pass )
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-tglu-4/igt@kms_plane@pixel-format-source-clamping.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@kms_plane@pixel-format-source-clamping.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-10/igt@kms_plane@pixel-format-source-clamping.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-tglu-1:       NOTRUN -> [SKIP][451] ([i915#3555]) +3 other tests skip
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_plane_lowres@tiling-yf.html
    - shard-dg1:          NOTRUN -> [SKIP][452] ([i915#3555]) +4 other tests skip
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> ([FAIL][453], [FAIL][454]) ([i915#8292]) +1 other test ( 2 fail )
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][455] ([i915#12247]) +4 other tests skip
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][456] ([i915#12247]) +4 other tests skip
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c.html

  * igt@k

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/index.html

--===============8511628003474758465==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/3] drm/i915/display: Move shutdown sequences under display driver</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/141566/">https://patchwork.freedesktop.org/series/141566/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15721_full -&gt; Patchwork_141566v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_141566v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_141566v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 12)</h2>
<p>Additional (2): shard-snb-0 shard-dg2-set2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_141566v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-mtlp-8/igt@gem_eio@in-flight-contexts-immediate.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@gem_eio@in-flight-contexts-immediate.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-4/igt@gem_eio@in-flight-contexts-immediate.html">ABORT</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@wide:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-tglu-8/igt@gem_exec_schedule@wide.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-8/igt@gem_exec_schedule@wide.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-5/igt@i915_module_load@resize-bar.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-8/igt@i915_module_load@resize-bar.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@i915_module_load@resize-bar.html">SKIP</a>) +2 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-snb5/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-64x21@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-3/igt@kms_cursor_crc@cursor-offscreen-64x21@pipe-b-hdmi-a-2.html">DMESG-WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-64x21@pipe-b-hdmi-a-2.html">DMESG-WARN</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning@a-hdmi-a1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-7/igt@kms_flip@flip-vs-panning@a-hdmi-a1.html">DMESG-WARN</a> +21 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-2/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">DMESG-WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb7/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">PASS</a>) +1 other test ( 1 dmesg-warn, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-13/igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a3.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-dpms@pipe-a-plane-4:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-rkl-4/igt@kms_plane@plane-position-hole-dpms@pipe-a-plane-4.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-3/igt@kms_plane@plane-position-hole-dpms@pipe-a-plane-4.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-1/igt@kms_plane@plane-position-hole-dpms@pipe-a-plane-4.html">DMESG-WARN</a>) +3 other tests ( 1 dmesg-warn, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@perf_pmu@module-unload.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-11/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-2/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a>) ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-11/igt@i915_suspend@basic-s3-without-i915.html">WARN</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@i915_suspend@basic-s3-without-i915.html">WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-2/igt@i915_suspend@basic-s3-without-i915.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-render@rgb565-ytiled:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-rkl-7/igt@kms_draw_crc@draw-method-render@rgb565-ytiled.html">DMESG-WARN</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-7/igt@kms_draw_crc@draw-method-render@rgb565-ytiled.html">DMESG-WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-5/igt@kms_draw_crc@draw-method-render@rgb565-ytiled.html">PASS</a>) +5 other tests ( 1 dmesg-warn, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-11/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-2/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a>) ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html">DMESG-WARN</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-2/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-3/igt@kms_pm_rpm@dpms-non-lpsp.html">DMESG-WARN</a>) ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@semaphore-wait-idle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-11/igt@perf_pmu@semaphore-wait-idle.html">SKIP</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@perf_pmu@semaphore-wait-idle.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-2/igt@perf_pmu@semaphore-wait-idle.html">PASS</a>) +2 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15721_full and Patchwork_141566v1_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-dp-4:<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [4.19, 4.46] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_141566v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@api_intel_bb@crc32.html">SKIP</a> ([i915#6230])</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@device_reset@cold-reset-bound.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@all-busy-idle-check-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@drm_fdinfo@all-busy-idle-check-all.html">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@drm_fdinfo@most-busy-check-all.html">SKIP</a> ([i915#8414]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-2/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html">SKIP</a> ([i915#8414]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@drm_fdinfo@virtual-busy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@drm_fdinfo@virtual-busy.html">SKIP</a>) ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@drm_fdinfo@virtual-busy-idle.html">SKIP</a> ([i915#12506]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-5/igt@fbdev@eof.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@fbdev@eof.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-8/igt@fbdev@eof.html">PASS</a>) ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-1/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@fbdev@nullptr.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_basic@multigpu-create-close.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-2/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-3/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a>) ([i915#9323])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-4/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-3/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a>) ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a>) ([i915#12392] / [i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-4/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-5/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-rkl-3/igt@gem_ctx_engines@invalid-engines.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-1/igt@gem_ctx_engines@invalid-engines.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-7/igt@gem_ctx_engines@invalid-engines.html">FAIL</a>) ([i915#12031])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_ctx_persistence@hang.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_ctx_persistence@hang.html">SKIP</a>) ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_ctx_persistence@heartbeat-close.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-hostile.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_eio@kms.html">FAIL</a> ([i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#12714] / [i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_exec_balancer@invalid-bonds.html">SKIP</a> ([i915#4036])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@gem_exec_capture@capture-recoverable.html">SKIP</a> ([i915#6344])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture@vecs0-lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_exec_capture@capture@vecs0-lmem0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_exec_capture@capture@vecs0-lmem0.html">FAIL</a>) ([i915#11965] / [i915#12558]) +2 other tests ( 2 fail )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_exec_fence@submit3.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_exec_flush@basic-batch-kernel-default-wb.html">SKIP</a> ([i915#3539] / [i915#4852]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-12/igt@gem_exec_flush@basic-uc-pro-default.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_exec_flush@basic-uc-pro-default.html">SKIP</a>) ([i915#3539] / [i915#4852]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_exec_flush@basic-uc-prw-default.html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-wc-active:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@gem_exec_reloc@basic-cpu-wc-active.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_exec_reloc@basic-gtt-read.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_exec_reloc@basic-gtt-wc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@gem_exec_reloc@basic-gtt-wc.html">SKIP</a>) ([i915#3281]) +8 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_exec_reloc@basic-wc-gtt-noreloc.html">SKIP</a> ([i915#3281]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_exec_schedule@preempt-queue-contexts.html">SKIP</a> ([i915#4812]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_exec_schedule@semaphore-power.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_exec_schedule@semaphore-power.html">SKIP</a>) ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@gem_fenced_exec_thrash@2-spare-fences.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html">SKIP</a> ([i915#4860]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_fenced_exec_thrash@too-many-fences.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_fenced_exec_thrash@too-many-fences.html">SKIP</a>) ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> ([i915#4613] / [i915#7582])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@gem_lmem_swapping@massive-random.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@gem_lmem_swapping@massive-random.html">SKIP</a>) ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-1/igt@gem_lmem_swapping@parallel-multi.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> ([i915#12936])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-5/igt@gem_lmem_swapping@parallel-random.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> ([i915#12193])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-5/igt@gem_lmem_swapping@random-engines.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@gem_lmem_swapping@random-engines.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-8/igt@gem_lmem_swapping@random-engines.html">PASS</a>) ([i915#12936])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-12/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a>) ([i915#12193])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-12/igt@gem_lmem_swapping@verify-ccs@lmem0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_lmem_swapping@verify-ccs@lmem0.html">SKIP</a>) ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-2/igt@gem_lmem_swapping@verify-random-ccs.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-1/igt@gem_lmem_swapping@verify-random-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-4/igt@gem_lmem_swapping@verify-random-ccs.html">SKIP</a>) ([i915#12936])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-offset:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_mmap@bad-offset.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_mmap@bad-offset.html">SKIP</a>) ([i915#4083]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-bo-tiledy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@gem_mmap_gtt@big-bo-tiledy.html">SKIP</a> ([i915#4077]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">SKIP</a>) ([i915#4077]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_mmap_gtt@zero-extend.html">SKIP</a> ([i915#4077]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-mtlp-2/igt@gem_mmap_offset@clear@smem0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-6/igt@gem_mmap_offset@clear@smem0.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-3/igt@gem_mmap_offset@clear@smem0.html">ABORT</a>) ([i915#10729]) +1 other test ( 2 abort )</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@gem_mmap_wc@copy.html">SKIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@gem_partial_pwrite_pread@reads-uncached.html">SKIP</a> ([i915#3282]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_pread@exhaustion.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_pread@exhaustion.html">SKIP</a>) ([i915#3282]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-self:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_pwrite@basic-self.html">SKIP</a> ([i915#3282]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@gem_pxp@display-protected-crc.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_pxp@protected-raw-src-copy-not-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html">SKIP</a>) ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html">SKIP</a> ([i915#8428]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html">SKIP</a> ([i915#2575] / [i915#5190]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_render_tiled_blits@basic.html">SKIP</a> ([i915#4079]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html">SKIP</a>) ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_softpin@evict-snoop.html">SKIP</a> ([i915#4885])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@gem_softpin@evict-snoop.html">SKIP</a> ([i915#4885])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@invalid:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-1/igt@gem_softpin@invalid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@gem_softpin@invalid.html">SKIP</a> ([i915#2575]) +40 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_tiled_pread_pwrite.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_unfence_active_buffers.html">SKIP</a> ([i915#4879])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-12/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a>) ([i915#3282] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-3/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a>) ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@gem_userptr_blits@map-fixed-invalidate.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_watchdog@default-physical:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@gem_watchdog@default-physical.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-3/igt@gem_watchdog@default-physical.html">SKIP</a>) ([i915#12961])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gem_watchdog@default-physical.html">SKIP</a> ([i915#12961])</li>
</ul>
</li>
<li>
<p>igt@gem_watchdog@default-virtual:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@gem_watchdog@default-virtual.html">SKIP</a> ([i915#12961])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-glk3/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-glk6/igt@gen9_exec_parse@allowed-all.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-glk8/igt@gen9_exec_parse@allowed-all.html">ABORT</a>) ([i915#5566])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@gen9_exec_parse@bb-large.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@gen9_exec_parse@bb-large.html">SKIP</a>) ([i915#2527] / [i915#2856]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gen9_exec_parse@bb-secure.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@gen9_exec_parse@bb-secure.html">SKIP</a>) ([i915#2527]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a> ([i915#2527] / [i915#2856]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([i915#2527]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-3/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>) ([i915#9820])</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-3/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>) ([i915#9820])</li>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>) ([i915#9820])</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-tglu-10/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>) ([i915#12817] / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@i915_module_load@resize-bar.html">SKIP</a> ([i915#6412])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@i915_module_load@resize-bar.html">SKIP</a> ([i915#7178])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">WARN</a> ([i915#2681]) +4 other tests warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@i915_pm_rps@thresholds.html">SKIP</a> ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@i915_pm_rps@thresholds-idle-park.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@i915_pm_rps@thresholds-idle-park.html">SKIP</a>) ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@i915_query@query-topology-known-pci-ids.html">SKIP</a> +59 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-glk5/igt@i915_query@query-topology-unsupported.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> ([i915#7443])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-tglu-9/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@i915_suspend@sysfs-reader.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-6/igt@i915_suspend@sysfs-reader.html">PASS</a>) ([i915#8213])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> ([i915#4212] / [i915#4215])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@clobberred-modifier:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_addfb_basic@clobberred-modifier.html">SKIP</a> ([i915#4212]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_addfb_basic@tile-pitch-mismatch.html">SKIP</a> ([i915#4212]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a>) ([i915#10991]) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html">SKIP</a> ([i915#8709]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html">SKIP</a> ([i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-1-y-rc-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-1-y-rc-ccs.html">SKIP</a> ([i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-glk6/igt@kms_atomic_transition@modeset-transition.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-glk8/igt@kms_atomic_transition@modeset-transition.html">FAIL</a> ([i915#12238])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition@2x-outputs:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-glk6/igt@kms_atomic_transition@modeset-transition@2x-outputs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-glk8/igt@kms_atomic_transition@modeset-transition@2x-outputs.html">FAIL</a> ([i915#11859])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">FAIL</a> ([i915#11808]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#5956]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-8/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-2/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">FAIL</a>) ([i915#5956]) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html">SKIP</a>) ([i915#4538] / [i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> ([i915#5286]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-3/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html">SKIP</a>) ([i915#5286]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([i915#4538] / [i915#5286]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a>) ([i915#5286])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_big_fb@linear-16bpp-rotate-270.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_big_fb@linear-16bpp-rotate-270.html">SKIP</a>) +38 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-5/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-3/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-12/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a>) ([i915#3638]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> ([i915#4538] / [i915#5190]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#3638]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-3/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a> +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html">SKIP</a>) ([i915#4538]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> ([i915#4538]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-4/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#6095]) +148 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-3/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a>) ([i915#6095]) +34 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3.html">SKIP</a> ([i915#6095]) +177 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-8/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#6095]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a>) ([i915#10307] / [i915#6095]) +12 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4.html">SKIP</a>) ([i915#6095]) +49 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-a-edp-1.html">SKIP</a> ([i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i915#6095]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-3/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a>) ([i915#12313]) +1 other test ( 2 skip )</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#6095]) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-1/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a>) ([i915#6095]) +14 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-4/igt@kms_ccs@random-ccs-data-y-tiled-ccs.html">SKIP</a> ([i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-2/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +123 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_cdclk@mode-transition.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_cdclk@mode-transition.html">SKIP</a>) ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#3742])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#7213] / [i915#9010])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html">SKIP</a>) ([i915#7828]) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-multiple:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-multiple.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm-disable:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html">SKIP</a>) ([i915#7828]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> ([i915#7828]) +6 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> ([i915#7828]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html">SKIP</a>) ([i915#7828])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-4/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_content_protection@content-type-change.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_content_protection@content-type-change.html">SKIP</a>) ([i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-10/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a>) ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_content_protection@legacy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_content_protection@legacy.html">SKIP</a>) ([i915#7116] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_content_protection@uevent.html">SKIP</a> ([i915#7116] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a>) ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> ([i915#11453] / [i915#3359]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_cursor_crc@cursor-random-max-size.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_cursor_crc@cursor-random-max-size.html">SKIP</a>) ([i915#3555]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#11453] / [i915#3359]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-12/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a>) ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg1-12/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-13/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html">DMESG-WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html">PASS</a>) ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a> ([i915#5354]) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a>) ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-4/igt@kms_display_modes@extended-mode-basic.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-7/igt@kms_display_modes@extended-mode-basic.html">SKIP</a>) ([i915#3555] / [i915#8827])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a>) ([i915#3555])</li>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a>) ([i915#1769] / [i915#3555] / [i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a>) ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a>) ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_dp_aux_dev.html">SKIP</a> ([i915#1257])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> ([i915#12402])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> ([i915#3555] / [i915#3840]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-12/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a>) ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-3/igt@kms_feature_discovery@chamelium.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@kms_feature_discovery@chamelium.html">SKIP</a>) ([i915#2065] / [i915#4854])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_feature_discovery@chamelium.html">SKIP</a> ([i915#4854])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_feature_discovery@display-2x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_feature_discovery@display-3x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_feature_discovery@dp-mst.html">SKIP</a> ([i915#9337])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_fence_pin_leak.html">SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@kms_flip@2x-blocking-absolute-wf_vblank.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-7/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a>) ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_flip@2x-nonexisting-fb.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_flip@2x-nonexisting-fb.html">SKIP</a>) ([i915#3637]) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_flip@2x-plain-flip.html">SKIP</a> ([i915#3637]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html">SKIP</a> ([i915#9934]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a>) ([i915#9934]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@absolute-wf_vblank-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-2/igt@kms_flip@absolute-wf_vblank-interruptible@b-hdmi-a1.html">DMESG-WARN</a> ([i915#12917]) +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-mtlp-6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-1/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-8/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html">FAIL</a>) ([i915#2122]) +7 other tests ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-mtlp-6/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-1/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-8/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1.html">FAIL</a>) ([i915#11989])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-tglu-4/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-10/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html">PASS</a>) ([i915#2122]) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-2/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-10/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html">PASS</a>) ([i915#2122]) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-snb5/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb5/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb1/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html">PASS</a>) ([i915#2122]) +3 other tests ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-2/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a3.html">FAIL</a> ([i915#10826])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-13/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a3.html">FAIL</a> ([i915#12517]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-10/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1.html">FAIL</a>) ([i915#2122]) +1 other test ( 2 fail )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-2/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a3.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-rkl-2/igt@kms_flip@plain-flip-ts-check.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-4/igt@kms_flip@plain-flip-ts-check.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-5/igt@kms_flip@plain-flip-ts-check.html">FAIL</a>) ([i915#11989] / [i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check-interruptible.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-6/igt@kms_flip@plain-flip-ts-check-interruptible.html">FAIL</a>) ([i915#11989] / [i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-snb1/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb4/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb7/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html">FAIL</a>) ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-2/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-1/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a3.html">FAIL</a> ([i915#2122]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-6/igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1.html">FAIL</a>) ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-5/igt@kms_flip@plain-flip-ts-check@b-hdmi-a2.html">FAIL</a> ([i915#11989]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html">SKIP</a> ([i915#2672] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html">SKIP</a>) ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a>) ([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html">SKIP</a>) ([i915#2672] / [i915#3555]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a>) ([i915#2587] / [i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a>) ([i915#2587] / [i915#2672]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a>) +8 other tests ( 1 pass, 1 skip )</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html">FAIL</a>) ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">PASS</a>) ([i915#6880]) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a>) +10 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html">SKIP</a>) ([i915#1825])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html">SKIP</a> +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a>) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">SKIP</a> ([i915#3458]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a>) ([i915#1825])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html">SKIP</a>) ([i915#3458]) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a>) ([i915#8708]) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#1825]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a>) ([i915#5354]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +26 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#3555] / [i915#8228]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-18/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-14/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a>) ([i915#12394])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a>) ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-dg2-5/igt@kms_pipe_crc_basic@suspend-read-crc.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a>) ([i915#2575]) +85 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15721/shard-tglu-4/igt@kms_plane@pixel-format-source-clamping.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-9/igt@kms_plane@pixel-format-source-clamping.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-10/igt@kms_plane@pixel-format-source-clamping.html">PASS</a>) ([i915#10354]) +1 other test ( 1 abort, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-1/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-dg1-17/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-2/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-5/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html">FAIL</a>) ([i915#8292]) +1 other test ( 2 fail )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a.html">SKIP</a> ([i915#12247]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141566v1/shard-tglu-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c.html">SKIP</a> ([i915#12247]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@k</p>
</li>
</ul>

</body>
</html>

--===============8511628003474758465==--
