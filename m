Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C0D9D692D
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Nov 2024 14:04:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E628D10E475;
	Sat, 23 Nov 2024 13:04:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F9B710E446;
 Sat, 23 Nov 2024 13:04:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9076791129842872342=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_Consider_joiner_calculat?=
 =?utf-8?q?ion_for_panel_fitting_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nemesa Garg" <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 23 Nov 2024 13:04:16 -0000
Message-ID: <173236705631.2085638.5575791543492876171@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241120053838.3794419-1-nemesa.garg@intel.com>
In-Reply-To: <20241120053838.3794419-1-nemesa.garg@intel.com>
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

--===============9076791129842872342==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Consider joiner calculation for panel fitting (rev5)
URL   : https://patchwork.freedesktop.org/series/136561/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15722_full -> Patchwork_136561v5_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_136561v5_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_136561v5_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_136561v5_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-dg1:          NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_ctx_persistence@engines-hang:
    - shard-dg1:          [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-12/igt@gem_ctx_persistence@engines-hang.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-17/igt@gem_ctx_persistence@engines-hang.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-tglu:         ([PASS][4], [PASS][5]) -> ([PASS][6], [TIMEOUT][7])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-tglu-4/igt@gem_eio@in-flight-contexts-10ms.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-tglu-7/igt@gem_eio@in-flight-contexts-10ms.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-9/igt@gem_eio@in-flight-contexts-10ms.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-2/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_wait@write-wait@vcs0:
    - shard-rkl:          ([PASS][8], [PASS][9]) -> ([PASS][10], [DMESG-WARN][11])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-2/igt@gem_wait@write-wait@vcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-7/igt@gem_wait@write-wait@vcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-4/igt@gem_wait@write-wait@vcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-5/igt@gem_wait@write-wait@vcs0.html

  * igt@i915_module_load@reload:
    - shard-dg2:          NOTRUN -> ([INCOMPLETE][12], [FAIL][13]) ([i915#12848])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-8/igt@i915_module_load@reload.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@gem-execbuf:
    - shard-dg2:          ([PASS][14], [PASS][15]) -> ([PASS][16], [SKIP][17])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-10/igt@i915_pm_rpm@gem-execbuf.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-4/igt@i915_pm_rpm@gem-execbuf.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-8/igt@i915_pm_rpm@gem-execbuf.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@i915_pm_rpm@gem-execbuf.html

  * igt@i915_selftest@live@objects:
    - shard-dg2:          [PASS][18] -> ([FAIL][19], [PASS][20]) +37 other tests ( 1 fail, 1 pass )
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-1/igt@i915_selftest@live@objects.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@i915_selftest@live@objects.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@i915_selftest@live@objects.html

  * igt@kms_addfb_basic@unused-pitches:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-12/igt@kms_addfb_basic@unused-pitches.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-snb:          [PASS][22] -> ([PASS][23], [FAIL][24])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-snb2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-rkl:          ([PASS][25], [PASS][26]) -> [DMESG-WARN][27] +3 other tests dmesg-warn
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-4/igt@kms_fbcon_fbt@fbc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-1/igt@kms_fbcon_fbt@fbc.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-2/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][28] +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-8/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
    - shard-dg2:          NOTRUN -> ([SKIP][29], [SKIP][30]) +1 other test ( 2 skip )
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html

  * igt@kms_plane@pixel-format@pipe-a-plane-3:
    - shard-tglu:         [PASS][31] -> ([ABORT][32], [PASS][33]) +1 other test ( 1 abort, 1 pass )
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-tglu-10/igt@kms_plane@pixel-format@pipe-a-plane-3.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-4/igt@kms_plane@pixel-format@pipe-a-plane-3.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-8/igt@kms_plane@pixel-format@pipe-a-plane-3.html

  * igt@perf@create-destroy-userspace-config:
    - shard-dg2:          [PASS][34] -> ([PASS][35], [SKIP][36]) +1 other test ( 1 pass, 1 skip )
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-3/igt@perf@create-destroy-userspace-config.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-3/igt@perf@create-destroy-userspace-config.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@perf@create-destroy-userspace-config.html

  * igt@perf_pmu@module-unload:
    - shard-tglu-1:       NOTRUN -> [ABORT][37]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@perf_pmu@module-unload.html

  * igt@syncobj_timeline@etime-multi-wait-available-unsubmitted:
    - shard-rkl:          [PASS][38] -> ([PASS][39], [DMESG-WARN][40])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-5/igt@syncobj_timeline@etime-multi-wait-available-unsubmitted.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-3/igt@syncobj_timeline@etime-multi-wait-available-unsubmitted.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-5/igt@syncobj_timeline@etime-multi-wait-available-unsubmitted.html

  
#### Warnings ####

  * igt@api_intel_allocator@fork-simple-once:
    - shard-rkl:          ([DMESG-WARN][41], [PASS][42]) -> [DMESG-WARN][43] +1 other test dmesg-warn
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-3/igt@api_intel_allocator@fork-simple-once.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-2/igt@api_intel_allocator@fork-simple-once.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-3/igt@api_intel_allocator@fork-simple-once.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-snb:          ([FAIL][44], [FAIL][45]) ([i915#12971]) -> ([FAIL][46], [FAIL][47])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-snb4/igt@gem_tiled_swapping@non-threaded.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-snb7/igt@gem_tiled_swapping@non-threaded.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb6/igt@gem_tiled_swapping@non-threaded.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb7/igt@gem_tiled_swapping@non-threaded.html
    - shard-tglu:         ([PASS][48], [FAIL][49]) ([i915#12971]) -> [FAIL][50]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-tglu-4/igt@gem_tiled_swapping@non-threaded.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-tglu-7/igt@gem_tiled_swapping@non-threaded.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-6/igt@gem_tiled_swapping@non-threaded.html
    - shard-glk:          ([FAIL][51], [FAIL][52], [FAIL][53]) ([i915#12971]) -> ([PASS][54], [FAIL][55])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-glk3/igt@gem_tiled_swapping@non-threaded.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-glk2/igt@gem_tiled_swapping@non-threaded.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-glk8/igt@gem_tiled_swapping@non-threaded.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-glk2/igt@gem_tiled_swapping@non-threaded.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-glk3/igt@gem_tiled_swapping@non-threaded.html

  * igt@kms_busy@basic-hang@flip-pipe-b:
    - shard-rkl:          [DMESG-WARN][56] -> ([PASS][57], [DMESG-WARN][58]) +1 other test ( 1 dmesg-warn, 1 pass )
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-5/igt@kms_busy@basic-hang@flip-pipe-b.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-3/igt@kms_busy@basic-hang@flip-pipe-b.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-5/igt@kms_busy@basic-hang@flip-pipe-b.html

  * igt@kms_draw_crc@draw-method-render@xrgb8888-ytiled:
    - shard-rkl:          ([DMESG-WARN][59], [DMESG-WARN][60]) -> ([PASS][61], [DMESG-WARN][62])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-2/igt@kms_draw_crc@draw-method-render@xrgb8888-ytiled.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-4/igt@kms_draw_crc@draw-method-render@xrgb8888-ytiled.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-1/igt@kms_draw_crc@draw-method-render@xrgb8888-ytiled.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-7/igt@kms_draw_crc@draw-method-render@xrgb8888-ytiled.html

  * igt@kms_flip@2x-absolute-wf_vblank-interruptible:
    - shard-dg2:          ([SKIP][63], [SKIP][64]) -> ([SKIP][65], [SKIP][66]) ([i915#2575]) +1 other test ( 2 skip )
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-8/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-10/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-2/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-dg2:          [SKIP][67] -> ([SKIP][68], [SKIP][69]) ([i915#2575]) +3 other tests ( 2 skip )
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-3/igt@kms_flip@2x-flip-vs-panning.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_flip@2x-flip-vs-panning.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-3/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-dg2:          ([SKIP][70], [SKIP][71]) ([i915#2575]) -> [SKIP][72]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-1/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-11/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-8/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-dg2:          ([SKIP][73], [SKIP][74]) ([i915#2575]) -> ([SKIP][75], [SKIP][76]) +1 other test ( 2 skip )
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-11/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-8/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-5/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-6/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - {shard-dg2-9}:      NOTRUN -> [SKIP][77] +5 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-9/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15722_full and Patchwork_136561v5_full:

### New IGT tests (3) ###

  * igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-dp-4:
    - Statuses : 2 pass(s)
    - Exec time: [2.61, 2.75] s

  * igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [2.61] s

  * igt@kms_cursor_crc@cursor-random-64x21@pipe-a-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [4.58] s

  

Known issues
------------

  Here are the changes found in Patchwork_136561v5_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-dg1:          NOTRUN -> [SKIP][78] ([i915#8411])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@debugfs_test@sysfs:
    - shard-dg1:          ([PASS][79], [PASS][80]) -> [DMESG-WARN][81] ([i915#4423])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-18/igt@debugfs_test@sysfs.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-14/igt@debugfs_test@sysfs.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-12/igt@debugfs_test@sysfs.html

  * igt@device_reset@cold-reset-bound:
    - shard-tglu-1:       NOTRUN -> [SKIP][82] ([i915#11078])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@virtual-busy-idle:
    - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#8414])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@drm_fdinfo@virtual-busy-idle.html

  * igt@fbdev@nullptr:
    - shard-dg2:          ([PASS][84], [PASS][85]) -> [SKIP][86] ([i915#2582])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-2/igt@fbdev@nullptr.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-7/igt@fbdev@nullptr.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@fbdev@nullptr.html

  * igt@gem_basic@multigpu-create-close:
    - shard-dg2:          NOTRUN -> ([SKIP][87], [SKIP][88]) ([i915#7697])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@gem_basic@multigpu-create-close.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-tglu:         NOTRUN -> ([SKIP][89], [SKIP][90]) ([i915#3555] / [i915#9323])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@gem_ccs@block-copy-compressed.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#9323])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-3/igt@gem_ccs@block-multicopy-compressed.html
    - shard-tglu-1:       NOTRUN -> [SKIP][92] ([i915#9323])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@gem_ccs@block-multicopy-compressed.html
    - shard-tglu:         NOTRUN -> [SKIP][93] ([i915#9323])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-4/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-tglu-1:       NOTRUN -> [SKIP][94] ([i915#7697])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-tglu-1:       NOTRUN -> [SKIP][95] ([i915#6335])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_param@invalid-param-set:
    - shard-dg2:          ([PASS][96], [PASS][97]) -> ([PASS][98], [SKIP][99]) ([i915#2575]) +86 other tests ( 1 pass, 1 skip )
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-8/igt@gem_ctx_param@invalid-param-set.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-10/igt@gem_ctx_param@invalid-param-set.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-2/igt@gem_ctx_param@invalid-param-set.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@gem_ctx_param@invalid-param-set.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> ([SKIP][100], [SKIP][101]) ([i915#8555])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@gem_ctx_persistence@heartbeat-hostile.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_persistence@hostile:
    - shard-tglu:         NOTRUN -> ([FAIL][102], [FAIL][103]) ([i915#11980] / [i915#12580])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@gem_ctx_persistence@hostile.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-dg2:          NOTRUN -> ([SKIP][104], [SKIP][105]) ([i915#280])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@gem_ctx_sseu@mmap-args.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@kms:
    - shard-dg1:          NOTRUN -> [FAIL][106] ([i915#5784])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          NOTRUN -> [FAIL][107] ([i915#12543] / [i915#5784])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_eio@reset-stress.html

  * igt@gem_eio@unwedge-stress:
    - shard-dg1:          NOTRUN -> [FAIL][108] ([i915#12714] / [i915#5784])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#4771])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg2:          NOTRUN -> ([SKIP][110], [SKIP][111]) ([i915#4036])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@gem_exec_balancer@invalid-bonds.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-tglu:         NOTRUN -> ([FAIL][112], [FAIL][113]) ([i915#6117])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@gem_exec_balancer@parallel-ordering.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> ([SKIP][114], [SKIP][115]) ([i915#6334]) +1 other test ( 2 skip )
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-6/igt@gem_exec_capture@capture-invisible@lmem0.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-5/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_flush@basic-uc-ro-default:
    - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#3539] / [i915#4852]) +2 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_exec_flush@basic-uc-ro-default.html

  * igt@gem_exec_reloc@basic-cpu-read-active:
    - shard-dg2:          NOTRUN -> ([SKIP][117], [SKIP][118]) ([i915#2575] / [i915#3281])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-read-active.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@gem_exec_reloc@basic-cpu-read-active.html

  * igt@gem_exec_reloc@basic-cpu-read-noreloc:
    - shard-dg2:          NOTRUN -> ([SKIP][119], [SKIP][120]) ([i915#3281]) +1 other test ( 2 skip )
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@gem_exec_reloc@basic-cpu-read-noreloc.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@gem_exec_reloc@basic-cpu-read-noreloc.html

  * igt@gem_exec_reloc@basic-wc:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#3281]) +4 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@gem_exec_reloc@basic-wc.html

  * igt@gem_exec_reloc@basic-wc-gtt-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][122] ([i915#3281]) +7 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_exec_reloc@basic-wc-gtt-noreloc.html

  * igt@gem_exec_schedule@preempt-queue-contexts:
    - shard-snb:          NOTRUN -> [SKIP][123] +4 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb5/igt@gem_exec_schedule@preempt-queue-contexts.html

  * igt@gem_exec_schedule@preempt-self:
    - shard-dg2:          [PASS][124] -> ([SKIP][125], [PASS][126]) ([i915#2575]) +76 other tests ( 1 pass, 1 skip )
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-3/igt@gem_exec_schedule@preempt-self.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@gem_exec_schedule@preempt-self.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-3/igt@gem_exec_schedule@preempt-self.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#4812])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          NOTRUN -> [ABORT][128] ([i915#7975] / [i915#8213])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-8/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - shard-dg2:          NOTRUN -> ([SKIP][129], [SKIP][130]) ([i915#4860])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@gem_fence_thrash@bo-write-verify-threaded-none.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@gem_fence_thrash@bo-write-verify-threaded-none.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#4860])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-dg2:          NOTRUN -> ([PASS][132], [SKIP][133]) ([i915#12936])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@gem_lmem_swapping@heavy-multi.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#12936])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-dg2:          [PASS][135] -> ([PASS][136], [SKIP][137]) ([i915#12936]) +1 other test ( 1 pass, 1 skip )
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-3/igt@gem_lmem_swapping@massive-random.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-3/igt@gem_lmem_swapping@massive-random.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-dg2:          ([PASS][138], [PASS][139]) -> [SKIP][140] ([i915#12936])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-7/igt@gem_lmem_swapping@parallel-multi.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-2/igt@gem_lmem_swapping@parallel-multi.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@gem_lmem_swapping@parallel-multi.html
    - shard-tglu:         NOTRUN -> ([SKIP][141], [SKIP][142]) ([i915#4613])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@gem_lmem_swapping@parallel-multi.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [PASS][143] -> [TIMEOUT][144] ([i915#5493]) +1 other test timeout
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][145] ([i915#4613]) +3 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_mmap_gtt@bad-object:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#4077])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@gem_mmap_gtt@bad-object.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-dg2:          NOTRUN -> ([SKIP][147], [SKIP][148]) ([i915#4077]) +3 other tests ( 2 skip )
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@gem_mmap_gtt@cpuset-big-copy.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_offset@clear@smem0:
    - shard-mtlp:         ([PASS][149], [PASS][150], [PASS][151], [PASS][152]) -> ([PASS][153], [ABORT][154]) ([i915#10729]) +1 other test ( 1 abort, 1 pass )
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-7/igt@gem_mmap_offset@clear@smem0.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-5/igt@gem_mmap_offset@clear@smem0.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-2/igt@gem_mmap_offset@clear@smem0.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-8/igt@gem_mmap_offset@clear@smem0.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-1/igt@gem_mmap_offset@clear@smem0.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-5/igt@gem_mmap_offset@clear@smem0.html

  * igt@gem_mmap_wc@copy:
    - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#4083]) +3 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_mmap_wc@copy.html

  * igt@gem_pread@display:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#3282])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@gem_pread@display.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-tglu-1:       NOTRUN -> [WARN][157] ([i915#2658])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pwrite@basic-self:
    - shard-dg2:          NOTRUN -> ([SKIP][158], [SKIP][159]) ([i915#3282]) +2 other tests ( 2 skip )
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@gem_pwrite@basic-self.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@gem_pwrite@basic-self.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#4270])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-tglu-1:       NOTRUN -> [SKIP][161] ([i915#4270])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#4270])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#2575] / [i915#5190])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-dg2:          NOTRUN -> ([SKIP][164], [SKIP][165]) ([i915#5190] / [i915#8428]) +1 other test ( 2 skip )
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> ([SKIP][166], [SKIP][167]) ([i915#2575] / [i915#5190] / [i915#8428])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#8428])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-3/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#5190] / [i915#8428])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-8/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html

  * igt@gem_softpin@invalid:
    - shard-dg2:          ([PASS][170], [PASS][171]) -> [SKIP][172] ([i915#2575]) +40 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-2/igt@gem_softpin@invalid.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-7/igt@gem_softpin@invalid.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@gem_softpin@invalid.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-dg1:          NOTRUN -> [SKIP][173] ([i915#3297]) +1 other test skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-tglu-1:       NOTRUN -> [SKIP][174] ([i915#3297]) +1 other test skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate:
    - shard-dg1:          NOTRUN -> [SKIP][175] ([i915#3297] / [i915#4880])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_userptr_blits@map-fixed-invalidate.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-dg2:          NOTRUN -> ([SKIP][176], [SKIP][177]) ([i915#3297])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@gem_userptr_blits@readonly-unsync.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-tglu-1:       NOTRUN -> [SKIP][178] ([i915#2527] / [i915#2856]) +1 other test skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-dg1:          NOTRUN -> [SKIP][179] ([i915#2527]) +2 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-tglu:         NOTRUN -> ([SKIP][180], [SKIP][181]) ([i915#2527] / [i915#2856])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@gen9_exec_parse@shadow-peek.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          ([PASS][182], [PASS][183]) -> ([ABORT][184], [PASS][185]) ([i915#9820])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg1:          [PASS][186] -> ([ABORT][187], [PASS][188]) ([i915#9820])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-12/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_module_load@resize-bar:
    - shard-dg1:          NOTRUN -> [SKIP][189] ([i915#7178])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-tglu-1:       NOTRUN -> [SKIP][190] ([i915#6590]) +1 other test skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-tglu-1:       NOTRUN -> [WARN][191] ([i915#2681]) +4 other tests warn
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#11681] / [i915#6621])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#4387])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@i915_pm_sseu@full-enable.html

  * igt@i915_power@sanity:
    - shard-mtlp:         ([PASS][194], [PASS][195], [PASS][196], [PASS][197], [PASS][198]) -> [SKIP][199] ([i915#7984])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-6/igt@i915_power@sanity.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-4/igt@i915_power@sanity.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-1/igt@i915_power@sanity.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-3/igt@i915_power@sanity.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-7/igt@i915_power@sanity.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-7/igt@i915_power@sanity.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-tglu-1:       NOTRUN -> [SKIP][200] ([i915#5723])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@i915_query@test-query-geometry-subslices.html

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - shard-dg2:          NOTRUN -> ([SKIP][201], [SKIP][202]) ([i915#2575] / [i915#4212])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@addfb25-y-tiled-legacy:
    - shard-dg2:          ([PASS][203], [PASS][204]) -> ([PASS][205], [SKIP][206]) ([i915#2575] / [i915#5190])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-4/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-10/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][207] ([i915#4215])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - shard-dg2:          NOTRUN -> ([SKIP][208], [SKIP][209]) ([i915#4212])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - shard-dg1:          NOTRUN -> [SKIP][210] ([i915#4212])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-dp-4-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#8709]) +11 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-dp-4-4-mc-ccs.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-tglu-1:       NOTRUN -> [SKIP][212] ([i915#9531])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:
    - shard-dg2:          NOTRUN -> ([SKIP][213], [PASS][214]) ([i915#2575]) +8 other tests ( 1 pass, 1 skip )
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-dg2:          [PASS][215] -> ([FAIL][216], [SKIP][217]) ([i915#2575] / [i915#5956])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_atomic_transition@plane-all-modeset-transition.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition.html
    - shard-dg1:          ([PASS][218], [PASS][219]) -> [FAIL][220] ([i915#5956])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-17/igt@kms_atomic_transition@plane-all-modeset-transition.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-12/igt@kms_atomic_transition@plane-all-modeset-transition.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-17/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1:
    - shard-mtlp:         ([PASS][221], [PASS][222], [PASS][223]) -> ([FAIL][224], [PASS][225]) ([i915#11808] / [i915#5956]) +1 other test ( 1 fail, 1 pass )
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-4/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-4/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][226] ([i915#5956])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-dp-4.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4:
    - shard-dg1:          [PASS][227] -> [FAIL][228] ([i915#5956]) +2 other tests fail
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-17/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-17/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3:
    - shard-dg2:          [PASS][229] -> ([FAIL][230], [PASS][231]) ([i915#5956])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-2/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-6/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-5/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-tglu:         NOTRUN -> ([SKIP][232], [SKIP][233]) ([i915#5286])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_big_fb@4-tiled-addfb.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][234] ([i915#4538] / [i915#5286]) +2 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-tglu-1:       NOTRUN -> [SKIP][235] ([i915#5286]) +2 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][236] ([i915#5286])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
    - shard-tglu:         NOTRUN -> [SKIP][237] ([i915#5286])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][238] ([i915#3638]) +1 other test skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> ([SKIP][239], [SKIP][240]) ([i915#4538] / [i915#5190]) +2 other tests ( 2 skip )
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-addfb:
    - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#5190]) +1 other test skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][242] +2 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][243] ([i915#4538])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#4538] / [i915#5190])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-mtlp:         NOTRUN -> ([SKIP][245], [SKIP][246])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_busy@basic-hang@modeset-pipe-a:
    - shard-rkl:          [PASS][247] -> ([DMESG-WARN][248], [PASS][249]) ([i915#12964])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-5/igt@kms_busy@basic-hang@modeset-pipe-a.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-3/igt@kms_busy@basic-hang@modeset-pipe-a.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-5/igt@kms_busy@basic-hang@modeset-pipe-a.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#10307] / [i915#6095]) +120 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> ([SKIP][251], [SKIP][252]) ([i915#6095]) +14 other tests ( 2 skip )
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][253] ([i915#10307] / [i915#10434] / [i915#6095]) +5 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][254] ([i915#12313])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> ([SKIP][255], [SKIP][256]) ([i915#6095]) +4 other tests ( 2 skip )
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-1/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-3/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1.html

  * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> ([SKIP][257], [SKIP][258]) ([i915#10307] / [i915#6095]) +37 other tests ( 2 skip )
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-6/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-hdmi-a-3.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-5/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][259] ([i915#12313])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> ([SKIP][260], [SKIP][261]) ([i915#6095]) +15 other tests ( 2 skip )
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-12/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][262] ([i915#12805])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][263] ([i915#6095]) +11 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-8/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> ([SKIP][264], [SKIP][265]) ([i915#6095]) +7 other tests ( 2 skip )
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#12313])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][267] ([i915#6095]) +20 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][268] ([i915#6095]) +103 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> ([SKIP][269], [SKIP][270]) ([i915#12313])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-y-tiled-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][271] ([i915#6095]) +9 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-4/igt@kms_ccs@random-ccs-data-y-tiled-ccs.html

  * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][272] ([i915#6095]) +74 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> ([SKIP][273], [SKIP][274]) ([i915#7213]) +3 other tests ( 2 skip )
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-5/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_cdclk@plane-scaling:
    - shard-dg1:          NOTRUN -> [SKIP][275] ([i915#3742])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-tglu-1:       NOTRUN -> [SKIP][276] ([i915#7828]) +8 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_color@ctm-red-to-blue:
    - shard-dg2:          NOTRUN -> ([SKIP][277], [SKIP][278]) +3 other tests ( 2 skip )
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_chamelium_color@ctm-red-to-blue.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_chamelium_color@ctm-red-to-blue.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-dg1:          NOTRUN -> [SKIP][279] ([i915#7828]) +6 other tests skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-tglu:         NOTRUN -> ([SKIP][280], [SKIP][281]) ([i915#7828]) +1 other test ( 2 skip )
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_chamelium_frames@hdmi-crc-fast.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_frames@hdmi-crc-single:
    - shard-dg2:          NOTRUN -> [SKIP][282] ([i915#7828]) +1 other test skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_chamelium_frames@hdmi-crc-single.html

  * igt@kms_chamelium_hpd@vga-hpd:
    - shard-dg2:          NOTRUN -> ([SKIP][283], [SKIP][284]) ([i915#7828]) +1 other test ( 2 skip )
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_chamelium_hpd@vga-hpd.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_chamelium_hpd@vga-hpd.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-rkl:          NOTRUN -> [SKIP][285] ([i915#7828])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
    - shard-tglu:         NOTRUN -> [SKIP][286] ([i915#7828])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-4/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_content_protection@atomic@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][287] ([i915#7173]) +2 other tests timeout
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_content_protection@atomic@pipe-a-dp-4.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][288] ([i915#3116] / [i915#3299])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-7/igt@kms_content_protection@dp-mst-lic-type-0.html
    - shard-tglu-1:       NOTRUN -> [SKIP][289] ([i915#3116] / [i915#3299])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg1:          NOTRUN -> [SKIP][290] ([i915#3299]) +1 other test skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@lic-type-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][291] ([i915#6944] / [i915#9424])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@srm:
    - shard-tglu:         NOTRUN -> ([SKIP][292], [SKIP][293]) ([i915#6944] / [i915#7116] / [i915#7118])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_content_protection@srm.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent:
    - shard-dg1:          NOTRUN -> [SKIP][294] ([i915#7116] / [i915#9424])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-alpha-transparent:
    - shard-dg1:          ([PASS][295], [PASS][296]) -> ([DMESG-WARN][297], [PASS][298]) ([i915#4423])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-17/igt@kms_cursor_crc@cursor-alpha-transparent.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-12/igt@kms_cursor_crc@cursor-alpha-transparent.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-17/igt@kms_cursor_crc@cursor-alpha-transparent.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-13/igt@kms_cursor_crc@cursor-alpha-transparent.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-tglu-1:       NOTRUN -> [SKIP][299] ([i915#12976])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-dg2:          NOTRUN -> ([SKIP][300], [SKIP][301]) ([i915#12976])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_cursor_crc@cursor-offscreen-512x512.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          NOTRUN -> ([SKIP][302], [SKIP][303]) ([i915#2575] / [i915#3555])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg1:          NOTRUN -> [SKIP][304] ([i915#12976]) +1 other test skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-tglu:         NOTRUN -> ([SKIP][305], [SKIP][306]) ([i915#4103]) +1 other test ( 2 skip )
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-tglu-1:       NOTRUN -> [SKIP][307] ([i915#4103]) +1 other test skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> ([SKIP][308], [SKIP][309]) ([i915#2575] / [i915#5354])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          NOTRUN -> ([SKIP][310], [SKIP][311]) ([i915#5354]) +9 other tests ( 2 skip )
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-snb:          ([PASS][312], [PASS][313]) -> ([FAIL][314], [PASS][315]) ([i915#2346])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-snb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-snb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg1:          NOTRUN -> [SKIP][316] ([i915#9067])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][317] ([i915#4213])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-mtlp:         NOTRUN -> ([SKIP][318], [SKIP][319]) ([i915#3555] / [i915#8827])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-8/igt@kms_display_modes@extended-mode-basic.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-4/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-tglu-1:       NOTRUN -> [SKIP][320] ([i915#8588])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-tglu-1:       NOTRUN -> [SKIP][321] ([i915#12402])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_draw_crc@draw-method-render@rgb565-ytiled:
    - shard-rkl:          ([PASS][322], [PASS][323]) -> ([DMESG-WARN][324], [PASS][325]) ([i915#12964])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-2/igt@kms_draw_crc@draw-method-render@rgb565-ytiled.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-4/igt@kms_draw_crc@draw-method-render@rgb565-ytiled.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-1/igt@kms_draw_crc@draw-method-render@rgb565-ytiled.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-7/igt@kms_draw_crc@draw-method-render@rgb565-ytiled.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-tglu-1:       NOTRUN -> [SKIP][326] ([i915#3840])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-dg1:          NOTRUN -> [SKIP][327] ([i915#3555] / [i915#3840])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-tglu-1:       NOTRUN -> [SKIP][328] ([i915#3555] / [i915#3840])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-tglu-1:       NOTRUN -> [SKIP][329] ([i915#3469])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-tglu:         NOTRUN -> ([SKIP][330], [SKIP][331]) ([i915#3469])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_fbcon_fbt@psr-suspend.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@display-2x:
    - shard-dg2:          NOTRUN -> ([SKIP][332], [SKIP][333]) ([i915#1839])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_feature_discovery@display-2x.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          NOTRUN -> ([SKIP][334], [SKIP][335]) ([i915#9337])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_feature_discovery@dp-mst.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_fence_pin_leak:
    - shard-dg1:          NOTRUN -> [SKIP][336] ([i915#4881])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-tglu-1:       NOTRUN -> [SKIP][337] ([i915#3637]) +7 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-mtlp:         NOTRUN -> ([SKIP][338], [SKIP][339]) ([i915#3637])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-tglu:         NOTRUN -> ([SKIP][340], [SKIP][341]) ([i915#3637]) +2 other tests ( 2 skip )
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-plain-flip:
    - shard-dg1:          NOTRUN -> [SKIP][342] ([i915#9934]) +5 other tests skip
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@absolute-wf_vblank@b-hdmi-a1:
    - shard-glk:          ([PASS][343], [PASS][344], [PASS][345]) -> [DMESG-WARN][346] ([i915#118]) +1 other test dmesg-warn
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-glk9/igt@kms_flip@absolute-wf_vblank@b-hdmi-a1.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-glk8/igt@kms_flip@absolute-wf_vblank@b-hdmi-a1.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-glk1/igt@kms_flip@absolute-wf_vblank@b-hdmi-a1.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-glk8/igt@kms_flip@absolute-wf_vblank@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1:
    - shard-tglu:         ([PASS][347], [PASS][348]) -> [FAIL][349] ([i915#2122])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-tglu-7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-tglu-4/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4:
    - shard-dg1:          [PASS][350] -> [FAIL][351] ([i915#2122])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-18/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-14/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1:
    - shard-snb:          ([PASS][352], [PASS][353]) -> ([FAIL][354], [FAIL][355]) ([i915#2122]) +1 other test ( 2 fail )
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-snb4/igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb6/igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1.html

  * igt@kms_flip@flip-vs-fences:
    - shard-dg2:          NOTRUN -> ([SKIP][356], [SKIP][357]) ([i915#2575] / [i915#8381])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_flip@flip-vs-fences.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip@flip-vs-panning-interruptible@a-hdmi-a2:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][358] ([i915#12964]) +4 other tests dmesg-warn
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-1/igt@kms_flip@flip-vs-panning-interruptible@a-hdmi-a2.html

  * igt@kms_flip@nonblocking-read:
    - shard-dg2:          [PASS][359] -> [SKIP][360] ([i915#2575]) +1 other test skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-10/igt@kms_flip@nonblocking-read.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_flip@nonblocking-read.html

  * igt@kms_flip@plain-flip-fb-recreate@a-vga1:
    - shard-snb:          [PASS][361] -> ([FAIL][362], [FAIL][363]) ([i915#2122]) +1 other test ( 2 fail )
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-snb5/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb6/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb7/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-vga1:
    - shard-snb:          [PASS][364] -> ([FAIL][365], [PASS][366]) ([i915#2122]) +3 other tests ( 1 fail, 1 pass )
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-snb5/igt@kms_flip@plain-flip-fb-recreate@b-vga1.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb7/igt@kms_flip@plain-flip-fb-recreate@b-vga1.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb6/igt@kms_flip@plain-flip-fb-recreate@b-vga1.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-tglu:         ([PASS][367], [PASS][368]) -> ([FAIL][369], [FAIL][370]) ([i915#2122]) +1 other test ( 2 fail )
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-tglu-4/igt@kms_flip@plain-flip-ts-check.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-tglu-7/igt@kms_flip@plain-flip-ts-check.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-3/igt@kms_flip@plain-flip-ts-check.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-6/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-dg1:          ([PASS][371], [PASS][372]) -> ([PASS][373], [FAIL][374]) ([i915#11989] / [i915#12517] / [i915#2122])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-14/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-18/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-12/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a3:
    - shard-dg2:          NOTRUN -> ([FAIL][375], [FAIL][376]) ([i915#2122]) +2 other tests ( 2 fail )
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-3/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a3.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-6/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a3.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@d-hdmi-a4:
    - shard-dg1:          ([PASS][377], [PASS][378]) -> [FAIL][379] ([i915#2122])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-14/igt@kms_flip@plain-flip-ts-check-interruptible@d-hdmi-a4.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-18/igt@kms_flip@plain-flip-ts-check-interruptible@d-hdmi-a4.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_flip@plain-flip-ts-check-interruptible@d-hdmi-a4.html

  * igt@kms_flip@plain-flip-ts-check@b-hdmi-a1:
    - shard-tglu:         ([PASS][380], [PASS][381]) -> ([FAIL][382], [PASS][383]) ([i915#2122]) +1 other test ( 1 fail, 1 pass )
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-tglu-7/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-tglu-4/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-6/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-3/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a3:
    - shard-dg2:          NOTRUN -> ([PASS][384], [FAIL][385]) ([i915#2122])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-6/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a3.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-5/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a3.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> ([SKIP][386], [SKIP][387]) ([i915#2672]) +1 other test ( 2 skip )
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][388] ([i915#2672] / [i915#3555])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][389] ([i915#2587] / [i915#2672])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-dg2:          NOTRUN -> ([SKIP][390], [SKIP][391]) ([i915#2672] / [i915#3555] / [i915#5190])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-dg1:          NOTRUN -> [SKIP][392] ([i915#2587] / [i915#2672] / [i915#3555])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-dg1:          NOTRUN -> [SKIP][393] ([i915#2672] / [i915#3555]) +2 other tests skip
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][394] ([i915#2587] / [i915#2672]) +3 other tests skip
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-dg2:          ([PASS][395], [PASS][396]) -> ([SKIP][397], [PASS][398]) +15 other tests ( 1 pass, 1 skip )
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-tglu:         NOTRUN -> ([SKIP][399], [SKIP][400]) ([i915#2672] / [i915#3555])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> ([SKIP][401], [SKIP][402]) ([i915#2587] / [i915#2672])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling:
    - shard-dg2:          NOTRUN -> ([SKIP][403], [PASS][404])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][405] ([i915#2672] / [i915#3555]) +2 other tests skip
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][406] ([i915#2672])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          ([PASS][407], [PASS][408]) -> [SKIP][409] +3 other tests skip
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-glk:          ([PASS][410], [PASS][411], [PASS][412]) -> ([DMESG-FAIL][413], [PASS][414]) ([i915#118])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][415] +87 other tests skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> ([SKIP][416], [SKIP][417]) ([i915#8708]) +5 other tests ( 2 skip )
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:
    - shard-mtlp:         NOTRUN -> ([SKIP][418], [SKIP][419]) ([i915#1825])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][420] +29 other tests skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][421] ([i915#8708]) +2 other tests skip
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:
    - shard-dg2:          [PASS][422] -> ([PASS][423], [SKIP][424]) +10 other tests ( 1 pass, 1 skip )
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][425] ([i915#5439])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglu:         NOTRUN -> ([SKIP][426], [SKIP][427]) +17 other tests ( 2 skip )
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> ([SKIP][428], [SKIP][429]) ([i915#10433] / [i915#3458])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][430] ([i915#1825])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][431] ([i915#5354]) +6 other tests skip
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][432] ([i915#3458]) +11 other tests skip
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][433] ([i915#8708]) +10 other tests skip
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][434] ([i915#3458]) +4 other tests skip
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-tglu:         NOTRUN -> ([SKIP][435], [SKIP][436]) ([i915#9766])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> ([SKIP][437], [SKIP][438]) ([i915#3458]) +2 other tests ( 2 skip )
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][439] +16 other tests skip
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-tglu-1:       NOTRUN -> [SKIP][440] ([i915#3555] / [i915#8228])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-tglu:         NOTRUN -> ([SKIP][441], [SKIP][442]) ([i915#3555] / [i915#8228])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_hdr@bpc-switch-suspend.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][443] ([i915#3555] / [i915#8228])
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][444] ([i915#12394])
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][445] ([i915#10656])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg1:          NOTRUN -> [SKIP][446] ([i915#12388])
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][447] ([i915#12339])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-tglu:         NOTRUN -> ([SKIP][448], [SKIP][449]) ([i915#6301])
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_panel_fitting@atomic-fastset.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-dg1:          NOTRUN -> [SKIP][450] ([i915#3555]) +5 other tests skip
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-tglu-1:       NOTRUN -> [SKIP][451] ([i915#3555]) +4 other tests skip
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers:
    - shard-dg2:          NOTRUN -> [SKIP][452] ([i915#2575] / [i915#9423])
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][453] ([i915#12247]) +4 other tests skip
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:
    - shard-dg2:          NOTRUN -> [SKIP][454] ([i915#12247] / [i915#9423])
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers:
    - shard-dg2:          ([PASS][455], [PASS][456]) -> [SKIP][457] ([i915#2575] / [i915#9423]) +1 other test skip
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-7/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
    - shard-dg2:          ([PASS][458], [PASS][459]) -> ([SKIP][460], [PASS][461]) ([i915#2575] / [i915#9423]) +1 other test ( 1 pass, 1 skip )
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-10/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:
    - shard-dg2:          [PASS][462] -> ([SKIP][463], [PASS][464]) ([i915#2575] / [i915#9423]) +1 other test ( 1 pass, 1 skip )
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-dg1:          NOTRUN -> [SKIP][465] ([i915#12247] / [i915#6953])
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][466] ([i915#12247]) +7 other tests skip
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:
    - shard-dg1:          NOTRUN -> [SKIP][467] ([i915#12247]) +3 other tests skip
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-tglu-1:       NOTRUN -> [SKIP][468] ([i915#9812])
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][469] ([i915#12343])
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu-1:       NOTRUN -> [SKIP][470] ([i915#9685])
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][471] ([i915#4281])
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg1:          NOTRUN -> [SKIP][472] ([i915#9340])
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-tglu:         NOTRUN -> ([SKIP][473], [SKIP][474]) ([i915#8430])
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_pm_lpsp@screens-disabled.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - shard-dg2:          ([PASS][475], [PASS][476]) -> ([PASS][477], [SKIP][478]) ([i915#12937])
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-8/igt@kms_pm_rpm@basic-pci-d3-state.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-10/igt@kms_pm_rpm@basic-pci-d3-state.html
   [477]: https://intel-gfx-ci.01.org/t

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/index.html

--===============9076791129842872342==
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
<tr><td><b>Series:</b></td><td>Consider joiner calculation for panel fitting (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/136561/">https://patchwork.freedesktop.org/series/136561/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15722_full -&gt; Patchwork_136561v5_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_136561v5_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_136561v5_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_136561v5_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-12/igt@gem_ctx_persistence@engines-hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-17/igt@gem_ctx_persistence@engines-hang.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-tglu-4/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-tglu-7/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-9/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-2/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_wait@write-wait@vcs0:</p>
<ul>
<li>shard-rkl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-2/igt@gem_wait@write-wait@vcs0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-7/igt@gem_wait@write-wait@vcs0.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-4/igt@gem_wait@write-wait@vcs0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-5/igt@gem_wait@write-wait@vcs0.html">DMESG-WARN</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-8/igt@i915_module_load@reload.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@i915_module_load@reload.html">FAIL</a>) ([i915#12848])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-10/igt@i915_pm_rpm@gem-execbuf.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-4/igt@i915_pm_rpm@gem-execbuf.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-8/igt@i915_pm_rpm@gem-execbuf.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@i915_pm_rpm@gem-execbuf.html">SKIP</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-1/igt@i915_selftest@live@objects.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@i915_selftest@live@objects.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@i915_selftest@live@objects.html">PASS</a>) +37 other tests ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@unused-pitches:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-12/igt@kms_addfb_basic@unused-pitches.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-snb2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">FAIL</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-rkl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-4/igt@kms_fbcon_fbt@fbc.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-1/igt@kms_fbcon_fbt@fbc.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-2/igt@kms_fbcon_fbt@fbc.html">DMESG-WARN</a> +3 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-8/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html">SKIP</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-a-plane-3:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-tglu-10/igt@kms_plane@pixel-format@pipe-a-plane-3.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-4/igt@kms_plane@pixel-format@pipe-a-plane-3.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-8/igt@kms_plane@pixel-format@pipe-a-plane-3.html">PASS</a>) +1 other test ( 1 abort, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@perf@create-destroy-userspace-config:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-3/igt@perf@create-destroy-userspace-config.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-3/igt@perf@create-destroy-userspace-config.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@perf@create-destroy-userspace-config.html">SKIP</a>) +1 other test ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@perf_pmu@module-unload.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-available-unsubmitted:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-5/igt@syncobj_timeline@etime-multi-wait-available-unsubmitted.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-3/igt@syncobj_timeline@etime-multi-wait-available-unsubmitted.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-5/igt@syncobj_timeline@etime-multi-wait-available-unsubmitted.html">DMESG-WARN</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_allocator@fork-simple-once:</p>
<ul>
<li>shard-rkl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-3/igt@api_intel_allocator@fork-simple-once.html">DMESG-WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-2/igt@api_intel_allocator@fork-simple-once.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-3/igt@api_intel_allocator@fork-simple-once.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-snb:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-snb4/igt@gem_tiled_swapping@non-threaded.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-snb7/igt@gem_tiled_swapping@non-threaded.html">FAIL</a>) ([i915#12971]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb6/igt@gem_tiled_swapping@non-threaded.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb7/igt@gem_tiled_swapping@non-threaded.html">FAIL</a>)</li>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-tglu-4/igt@gem_tiled_swapping@non-threaded.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-tglu-7/igt@gem_tiled_swapping@non-threaded.html">FAIL</a>) ([i915#12971]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-6/igt@gem_tiled_swapping@non-threaded.html">FAIL</a></li>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-glk3/igt@gem_tiled_swapping@non-threaded.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-glk2/igt@gem_tiled_swapping@non-threaded.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-glk8/igt@gem_tiled_swapping@non-threaded.html">FAIL</a>) ([i915#12971]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-glk2/igt@gem_tiled_swapping@non-threaded.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-glk3/igt@gem_tiled_swapping@non-threaded.html">FAIL</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic-hang@flip-pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-5/igt@kms_busy@basic-hang@flip-pipe-b.html">DMESG-WARN</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-3/igt@kms_busy@basic-hang@flip-pipe-b.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-5/igt@kms_busy@basic-hang@flip-pipe-b.html">DMESG-WARN</a>) +1 other test ( 1 dmesg-warn, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-render@xrgb8888-ytiled:</p>
<ul>
<li>shard-rkl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-2/igt@kms_draw_crc@draw-method-render@xrgb8888-ytiled.html">DMESG-WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-4/igt@kms_draw_crc@draw-method-render@xrgb8888-ytiled.html">DMESG-WARN</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-1/igt@kms_draw_crc@draw-method-render@xrgb8888-ytiled.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-7/igt@kms_draw_crc@draw-method-render@xrgb8888-ytiled.html">DMESG-WARN</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-8/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-10/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html">SKIP</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-2/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html">SKIP</a>) ([i915#2575]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-3/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-3/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a>) ([i915#2575]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-1/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-11/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">SKIP</a>) ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-8/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-11/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-8/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a>) ([i915#2575]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-5/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-6/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:<ul>
<li>{shard-dg2-9}:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-9/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15722_full and Patchwork_136561v5_full:</p>
<h3>New IGT tests (3)</h3>
<ul>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-dp-4:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [2.61, 2.75] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.61] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-64x21@pipe-a-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [4.58] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_136561v5_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@sysfs:</p>
<ul>
<li>shard-dg1:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-18/igt@debugfs_test@sysfs.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-14/igt@debugfs_test@sysfs.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-12/igt@debugfs_test@sysfs.html">DMESG-WARN</a> ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@device_reset@cold-reset-bound.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-idle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@drm_fdinfo@virtual-busy-idle.html">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-2/igt@fbdev@nullptr.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-7/igt@fbdev@nullptr.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@fbdev@nullptr.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@gem_basic@multigpu-create-close.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@gem_basic@multigpu-create-close.html">SKIP</a>) ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@gem_ccs@block-copy-compressed.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@gem_ccs@block-copy-compressed.html">SKIP</a>) ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-3/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> ([i915#9323])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> ([i915#9323])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-4/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@invalid-param-set:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-8/igt@gem_ctx_param@invalid-param-set.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-10/igt@gem_ctx_param@invalid-param-set.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-2/igt@gem_ctx_param@invalid-param-set.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@gem_ctx_param@invalid-param-set.html">SKIP</a>) ([i915#2575]) +86 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@gem_ctx_persistence@heartbeat-hostile.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@gem_ctx_persistence@heartbeat-hostile.html">SKIP</a>) ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@gem_ctx_persistence@hostile.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@gem_ctx_persistence@hostile.html">FAIL</a>) ([i915#11980] / [i915#12580])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@gem_ctx_sseu@mmap-args.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@gem_ctx_sseu@mmap-args.html">SKIP</a>) ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_eio@kms.html">FAIL</a> ([i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#12543] / [i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#12714] / [i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@gem_exec_balancer@bonded-dual.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@gem_exec_balancer@invalid-bonds.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@gem_exec_balancer@invalid-bonds.html">SKIP</a>) ([i915#4036])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@gem_exec_balancer@parallel-ordering.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@gem_exec_balancer@parallel-ordering.html">FAIL</a>) ([i915#6117])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-6/igt@gem_exec_capture@capture-invisible@lmem0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-5/igt@gem_exec_capture@capture-invisible@lmem0.html">SKIP</a>) ([i915#6334]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-ro-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_exec_flush@basic-uc-ro-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-read-active.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@gem_exec_reloc@basic-cpu-read-active.html">SKIP</a>) ([i915#2575] / [i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@gem_exec_reloc@basic-cpu-read-noreloc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@gem_exec_reloc@basic-cpu-read-noreloc.html">SKIP</a>) ([i915#3281]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@gem_exec_reloc@basic-wc.html">SKIP</a> ([i915#3281]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_exec_reloc@basic-wc-gtt-noreloc.html">SKIP</a> ([i915#3281]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb5/igt@gem_exec_schedule@preempt-queue-contexts.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-self:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-3/igt@gem_exec_schedule@preempt-self.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@gem_exec_schedule@preempt-self.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-3/igt@gem_exec_schedule@preempt-self.html">PASS</a>) ([i915#2575]) +76 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_exec_schedule@reorder-wide.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-8/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-none:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@gem_fence_thrash@bo-write-verify-threaded-none.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@gem_fence_thrash@bo-write-verify-threaded-none.html">SKIP</a>) ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@gem_lmem_swapping@heavy-multi.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@gem_lmem_swapping@heavy-multi.html">SKIP</a>) ([i915#12936])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@gem_lmem_swapping@heavy-verify-multi.html">SKIP</a> ([i915#12936])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-3/igt@gem_lmem_swapping@massive-random.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-3/igt@gem_lmem_swapping@massive-random.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@gem_lmem_swapping@massive-random.html">SKIP</a>) ([i915#12936]) +1 other test ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-7/igt@gem_lmem_swapping@parallel-multi.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-2/igt@gem_lmem_swapping@parallel-multi.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> ([i915#12936])</li>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a>) ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> ([i915#5493]) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@gem_lmem_swapping@verify-random-ccs.html">SKIP</a> ([i915#4613]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@bad-object:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@gem_mmap_gtt@bad-object.html">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@gem_mmap_gtt@cpuset-big-copy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@gem_mmap_gtt@cpuset-big-copy.html">SKIP</a>) ([i915#4077]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p>
<ul>
<li>shard-mtlp:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-7/igt@gem_mmap_offset@clear@smem0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-5/igt@gem_mmap_offset@clear@smem0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-2/igt@gem_mmap_offset@clear@smem0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-8/igt@gem_mmap_offset@clear@smem0.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-1/igt@gem_mmap_offset@clear@smem0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-5/igt@gem_mmap_offset@clear@smem0.html">ABORT</a>) ([i915#10729]) +1 other test ( 1 abort, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_mmap_wc@copy.html">SKIP</a> ([i915#4083]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@display:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@gem_pread@display.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-self:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@gem_pwrite@basic-self.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@gem_pwrite@basic-self.html">SKIP</a>) ([i915#3282]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@gem_pxp@create-protected-buffer.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html">SKIP</a> ([i915#2575] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html">SKIP</a>) ([i915#5190] / [i915#8428]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html">SKIP</a>) ([i915#2575] / [i915#5190] / [i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-3/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html">SKIP</a> ([i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-8/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html">SKIP</a> ([i915#5190] / [i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@invalid:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-2/igt@gem_softpin@invalid.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-7/igt@gem_softpin@invalid.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@gem_softpin@invalid.html">SKIP</a> ([i915#2575]) +40 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gem_userptr_blits@map-fixed-invalidate.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@gem_userptr_blits@readonly-unsync.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@gem_userptr_blits@readonly-unsync.html">SKIP</a>) ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> ([i915#2527]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@gen9_exec_parse@shadow-peek.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@gen9_exec_parse@shadow-peek.html">SKIP</a>) ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>) ([i915#9820])</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-12/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>) ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@i915_module_load@resize-bar.html">SKIP</a> ([i915#7178])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> ([i915#6590]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">WARN</a> ([i915#2681]) +4 other tests warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@i915_pm_rps@min-max-config-idle.html">SKIP</a> ([i915#11681] / [i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-6/igt@i915_power@sanity.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-4/igt@i915_power@sanity.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-1/igt@i915_power@sanity.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-3/igt@i915_power@sanity.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-7/igt@i915_power@sanity.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-7/igt@i915_power@sanity.html">SKIP</a> ([i915#7984])</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">SKIP</a>) ([i915#2575] / [i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-legacy:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-4/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-10/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">SKIP</a>) ([i915#2575] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> ([i915#4215])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a>) ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_addfb_basic@tile-pitch-mismatch.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-dp-4-4-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-dp-4-4-mc-ccs.html">SKIP</a> ([i915#8709]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html">PASS</a>) ([i915#2575]) +8 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_atomic_transition@plane-all-modeset-transition.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition.html">SKIP</a>) ([i915#2575] / [i915#5956])</li>
<li>shard-dg1:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-17/igt@kms_atomic_transition@plane-all-modeset-transition.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-12/igt@kms_atomic_transition@plane-all-modeset-transition.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-17/igt@kms_atomic_transition@plane-all-modeset-transition.html">FAIL</a> ([i915#5956])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-4/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-mtlp-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-4/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1.html">PASS</a>) ([i915#11808] / [i915#5956]) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-dp-4.html">FAIL</a> ([i915#5956])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-17/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-17/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#5956]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-2/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-6/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-5/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html">PASS</a>) ([i915#5956])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a>) ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#4538] / [i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#5286])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP</a> ([i915#3638]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a>) ([i915#4538] / [i915#5190]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb.html">SKIP</a> ([i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html">SKIP</a> ([i915#4538])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic-hang@modeset-pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-5/igt@kms_busy@basic-hang@modeset-pipe-a.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-3/igt@kms_busy@basic-hang@modeset-pipe-a.html">DMESG-WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-5/igt@kms_busy@basic-hang@modeset-pipe-a.html">PASS</a>) ([i915#12964])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#10307] / [i915#6095]) +120 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1.html">SKIP</a>) ([i915#6095]) +14 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i915#6095]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-1/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-3/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1.html">SKIP</a>) ([i915#6095]) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-6/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-hdmi-a-3.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-5/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-hdmi-a-3.html">SKIP</a>) ([i915#10307] / [i915#6095]) +37 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-12/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a>) ([i915#6095]) +15 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12805])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-8/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#6095]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3.html">SKIP</a>) ([i915#6095]) +7 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#6095]) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html">SKIP</a> ([i915#6095]) +103 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a>) ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-4/igt@kms_ccs@random-ccs-data-y-tiled-ccs.html">SKIP</a> ([i915#6095]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#6095]) +74 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-5/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html">SKIP</a>) ([i915#7213]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_cdclk@plane-scaling.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_chamelium_audio@hdmi-audio-edid.html">SKIP</a> ([i915#7828]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-red-to-blue:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_chamelium_color@ctm-red-to-blue.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_chamelium_color@ctm-red-to-blue.html">SKIP</a>) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_chamelium_frames@dp-crc-single.html">SKIP</a> ([i915#7828]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a>) ([i915#7828]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-single:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_chamelium_frames@hdmi-crc-single.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_chamelium_hpd@vga-hpd.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_chamelium_hpd@vga-hpd.html">SKIP</a>) ([i915#7828]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html">SKIP</a> ([i915#7828])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-4/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_content_protection@atomic@pipe-a-dp-4.html">TIMEOUT</a> ([i915#7173]) +2 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-7/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3299]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_content_protection@srm.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_content_protection@srm.html">SKIP</a>) ([i915#6944] / [i915#7116] / [i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_content_protection@uevent.html">SKIP</a> ([i915#7116] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-alpha-transparent:</p>
<ul>
<li>shard-dg1:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-17/igt@kms_cursor_crc@cursor-alpha-transparent.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-12/igt@kms_cursor_crc@cursor-alpha-transparent.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-17/igt@kms_cursor_crc@cursor-alpha-transparent.html">DMESG-WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-13/igt@kms_cursor_crc@cursor-alpha-transparent.html">PASS</a>) ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> ([i915#12976])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a>) ([i915#12976])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a>) ([i915#2575] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#12976]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a>) ([i915#4103]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html">SKIP</a>) ([i915#2575] / [i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a>) ([i915#5354]) +9 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-snb:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-snb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-snb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a>) ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-8/igt@kms_display_modes@extended-mode-basic.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-4/igt@kms_display_modes@extended-mode-basic.html">SKIP</a>) ([i915#3555] / [i915#8827])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> ([i915#12402])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-render@rgb565-ytiled:</p>
<ul>
<li>shard-rkl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-2/igt@kms_draw_crc@draw-method-render@rgb565-ytiled.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-rkl-4/igt@kms_draw_crc@draw-method-render@rgb565-ytiled.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-1/igt@kms_draw_crc@draw-method-render@rgb565-ytiled.html">DMESG-WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-7/igt@kms_draw_crc@draw-method-render@rgb565-ytiled.html">PASS</a>) ([i915#12964])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a>) ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_feature_discovery@display-2x.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_feature_discovery@display-2x.html">SKIP</a>) ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_feature_discovery@dp-mst.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_feature_discovery@dp-mst.html">SKIP</a>) ([i915#9337])</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_fence_pin_leak.html">SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> ([i915#3637]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a>) ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_flip@2x-flip-vs-panning-vs-hang.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_flip@2x-flip-vs-panning-vs-hang.html">SKIP</a>) ([i915#3637]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_flip@2x-plain-flip.html">SKIP</a> ([i915#9934]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@absolute-wf_vblank@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-glk9/igt@kms_flip@absolute-wf_vblank@b-hdmi-a1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-glk8/igt@kms_flip@absolute-wf_vblank@b-hdmi-a1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-glk1/igt@kms_flip@absolute-wf_vblank@b-hdmi-a1.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-glk8/igt@kms_flip@absolute-wf_vblank@b-hdmi-a1.html">DMESG-WARN</a> ([i915#118]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1:</p>
<ul>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-tglu-7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-tglu-4/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-18/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-14/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1:</p>
<ul>
<li>shard-snb:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-snb4/igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb6/igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1.html">FAIL</a>) ([i915#2122]) +1 other test ( 2 fail )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_flip@flip-vs-fences.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_flip@flip-vs-fences.html">SKIP</a>) ([i915#2575] / [i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-1/igt@kms_flip@flip-vs-panning-interruptible@a-hdmi-a2.html">DMESG-WARN</a> ([i915#12964]) +4 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@nonblocking-read:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-10/igt@kms_flip@nonblocking-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_flip@nonblocking-read.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-snb5/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb6/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb7/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html">FAIL</a>) ([i915#2122]) +1 other test ( 2 fail )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-snb5/igt@kms_flip@plain-flip-fb-recreate@b-vga1.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb7/igt@kms_flip@plain-flip-fb-recreate@b-vga1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-snb6/igt@kms_flip@plain-flip-fb-recreate@b-vga1.html">PASS</a>) ([i915#2122]) +3 other tests ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check:</p>
<ul>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-tglu-4/igt@kms_flip@plain-flip-ts-check.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-tglu-7/igt@kms_flip@plain-flip-ts-check.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-3/igt@kms_flip@plain-flip-ts-check.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-6/igt@kms_flip@plain-flip-ts-check.html">FAIL</a>) ([i915#2122]) +1 other test ( 2 fail )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-dg1:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-14/igt@kms_flip@plain-flip-ts-check-interruptible.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-18/igt@kms_flip@plain-flip-ts-check-interruptible.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-12/igt@kms_flip@plain-flip-ts-check-interruptible.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_flip@plain-flip-ts-check-interruptible.html">FAIL</a>) ([i915#11989] / [i915#12517] / [i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-3/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a3.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-6/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a3.html">FAIL</a>) ([i915#2122]) +2 other tests ( 2 fail )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@d-hdmi-a4:</p>
<ul>
<li>shard-dg1:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-14/igt@kms_flip@plain-flip-ts-check-interruptible@d-hdmi-a4.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg1-18/igt@kms_flip@plain-flip-ts-check-interruptible@d-hdmi-a4.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_flip@plain-flip-ts-check-interruptible@d-hdmi-a4.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-hdmi-a1:</p>
<ul>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-tglu-7/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-tglu-4/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-6/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-3/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html">PASS</a>) ([i915#2122]) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-6/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a3.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-5/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a3.html">FAIL</a>) ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a>) ([i915#2672]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a>) ([i915#2672] / [i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#2587] / [i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">PASS</a>) +15 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a>) ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a>) ([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">DMESG-FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">PASS</a>) ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> +87 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>) ([i915#8708]) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html">SKIP</a>) ([i915#1825])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html">SKIP</a> +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html">SKIP</a>) +10 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html">SKIP</a>) +17 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a>) ([i915#10433] / [i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#1825])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html">SKIP</a> ([i915#3458]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">SKIP</a> ([i915#3458]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a>) ([i915#9766])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a>) ([i915#3458]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_hdr@bpc-switch.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a>) ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_joiner@basic-force-ultra-joiner.html">SKIP</a> ([i915#12394])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_joiner@invalid-modeset-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a>) ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> ([i915#3555]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers.html">SKIP</a> ([i915#2575] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c.html">SKIP</a> ([i915#12247]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html">SKIP</a> ([i915#12247] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-7/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers.html">SKIP</a> ([i915#2575] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-10/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">PASS</a>) ([i915#2575] / [i915#9423]) +1 other test ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-10/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html">PASS</a>) ([i915#2575] / [i915#9423]) +1 other test ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html">SKIP</a> ([i915#12247]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#12247]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> ([i915#9812])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> ([i915#12343])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-1/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-dg1-18/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> ([i915#9340])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-5/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/shard-tglu-10/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a>) ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-8/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/shard-dg2-10/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/t">PASS</a>, [SKIP][478]) ([i915#12937])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============9076791129842872342==--
