Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EFB6BC253
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 01:20:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AE5810EA3B;
	Thu, 16 Mar 2023 00:20:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7C99F10EA2D;
 Thu, 16 Mar 2023 00:20:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 75914A0003;
 Thu, 16 Mar 2023 00:20:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0953699500851025480=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Thu, 16 Mar 2023 00:20:17 -0000
Message-ID: <167892601746.19095.9140202145051896607@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230309131701.65312-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20230309131701.65312-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/ttm=3A_Small_fixes_/_cleanups_in_prep_for_shrinking_=28rev2=29?=
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

--===============0953699500851025480==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/ttm: Small fixes / cleanups in prep for shrinking (rev2)
URL   : https://patchwork.freedesktop.org/series/114774/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12829_full -> Patchwork_114774v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_114774v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_114774v2_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 7)
------------------------------

  Missing    (1): shard-tglu0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_114774v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_reloc@basic-write-cpu:
    - shard-glk:          [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-glk1/igt@gem_exec_reloc@basic-write-cpu.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-glk7/igt@gem_exec_reloc@basic-write-cpu.html

  
#### Warnings ####

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          [SKIP][3] ([fdo#109271] / [i915#3886]) -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-glk1/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-glk7/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-render:
    - shard-glk:          [SKIP][5] ([fdo#109271]) -> [TIMEOUT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-glk1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-render.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-glk7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-render.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@cursor-dpms:
    - {shard-tglu}:       [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-tglu-1/igt@i915_pm_rpm@cursor-dpms.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-6/igt@i915_pm_rpm@cursor-dpms.html

  * igt@i915_suspend@basic-s3-without-i915:
    - {shard-tglu}:       NOTRUN -> [INCOMPLETE][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-9/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - {shard-tglu}:       [PASS][10] -> [DMESG-WARN][11] +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-tglu-1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_114774v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#2842]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-glk7/igt@gem_exec_fair@basic-none@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-glk6/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-apl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-apl7/igt@gem_lmem_swapping@heavy-random.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_dg2_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][15] ([fdo#109271]) +34 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-apl7/igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#3886])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-apl7/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_content_protection@uevent@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][17] ([i915#1339])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-apl7/igt@kms_content_protection@uevent@pipe-a-dp-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [PASS][18] -> [FAIL][19] ([i915#2346])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#2122])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:
    - shard-glk:          [PASS][22] -> [FAIL][23] ([i915#79])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#533])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-apl7/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@perf@enable-disable:
    - shard-glk:          [PASS][25] -> [TIMEOUT][26] ([i915#6943])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-glk1/igt@perf@enable-disable.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-glk7/igt@perf@enable-disable.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@virtual-idle:
    - {shard-rkl}:        [FAIL][27] ([i915#7742]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-1/igt@drm_fdinfo@virtual-idle.html

  * igt@fbdev@read:
    - {shard-rkl}:        [SKIP][29] ([i915#2582]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-1/igt@fbdev@read.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-6/igt@fbdev@read.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-tglu}:       [FAIL][31] ([i915#6268]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_eio@reset-stress:
    - {shard-dg1}:        [FAIL][33] ([i915#5784]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-dg1-12/igt@gem_eio@reset-stress.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-dg1-17/igt@gem_eio@reset-stress.html

  * igt@gem_eio@suspend:
    - {shard-rkl}:        [FAIL][35] ([i915#5115] / [i915#7052]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-3/igt@gem_eio@suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-2/igt@gem_eio@suspend.html

  * igt@gem_exec_balancer@fairslice:
    - {shard-rkl}:        [SKIP][37] ([i915#6259]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-5/igt@gem_exec_balancer@fairslice.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-1/igt@gem_exec_balancer@fairslice.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][39] ([i915#2842]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-glk:          [FAIL][41] ([i915#2842]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-glk4/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-glk2/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - {shard-tglu}:       [FAIL][43] ([i915#2842]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-tglu-3/igt@gem_exec_fair@basic-throttle@rcs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-8/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_reloc@basic-write-gtt:
    - {shard-rkl}:        [SKIP][45] ([i915#3281]) -> [PASS][46] +4 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-4/igt@gem_exec_reloc@basic-write-gtt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-5/igt@gem_exec_reloc@basic-write-gtt.html

  * igt@gem_exec_schedule@semaphore-power:
    - {shard-rkl}:        [SKIP][47] ([i915#7276]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-3/igt@gem_exec_schedule@semaphore-power.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - {shard-dg1}:        [DMESG-WARN][49] ([i915#4936]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gen9_exec_parse@batch-zero-length:
    - {shard-rkl}:        [SKIP][51] ([i915#2527]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-3/igt@gen9_exec_parse@batch-zero-length.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-5/igt@gen9_exec_parse@batch-zero-length.html

  * {igt@i915_pm_dc@dc5-dpms-negative}:
    - {shard-tglu}:       [SKIP][53] ([i915#8018]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-tglu-6/igt@i915_pm_dc@dc5-dpms-negative.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-1/igt@i915_pm_dc@dc5-dpms-negative.html

  * igt@i915_pm_dc@dc6-dpms:
    - {shard-rkl}:        [SKIP][55] ([i915#3361]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-5/igt@i915_pm_dc@dc6-dpms.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - {shard-rkl}:        [SKIP][57] ([i915#658]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-3/igt@i915_pm_dc@dc6-psr.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - {shard-dg1}:        [SKIP][59] ([i915#1397]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-dg1-13/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-dg1-14/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_pm_rpm@system-suspend:
    - {shard-rkl}:        [FAIL][61] ([fdo#103375]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-3/igt@i915_pm_rpm@system-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-2/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [ABORT][63] ([i915#180]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-apl4/igt@i915_suspend@forcewake.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-apl7/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - {shard-rkl}:        [SKIP][65] ([i915#1845] / [i915#4098]) -> [PASS][66] +30 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
    - {shard-tglu}:       [SKIP][67] ([i915#1845]) -> [PASS][68] +7 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-tglu-6/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-8/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html

  * igt@kms_cursor_legacy@torture-bo@pipe-c:
    - {shard-tglu}:       [INCOMPLETE][69] ([i915#8011]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-tglu-1/igt@kms_cursor_legacy@torture-bo@pipe-c.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-6/igt@kms_cursor_legacy@torture-bo@pipe-c.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:
    - {shard-tglu}:       [SKIP][71] ([i915#1849]) -> [PASS][72] +21 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - {shard-rkl}:        [SKIP][73] ([i915#1849] / [i915#4098]) -> [PASS][74] +13 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:
    - {shard-tglu}:       [SKIP][75] ([i915#1849] / [i915#3558]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-tglu-6/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-8/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html

  * igt@kms_plane@plane-position-covered@pipe-a-planes:
    - {shard-rkl}:        [SKIP][77] ([i915#1849]) -> [PASS][78] +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-5/igt@kms_plane@plane-position-covered@pipe-a-planes.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-6/igt@kms_plane@plane-position-covered@pipe-a-planes.html

  * igt@kms_psr@primary_render:
    - {shard-rkl}:        [SKIP][79] ([i915#1072]) -> [PASS][80] +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-1/igt@kms_psr@primary_render.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-6/igt@kms_psr@primary_render.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - {shard-rkl}:        [SKIP][81] ([i915#5461]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-d:
    - {shard-tglu}:       [SKIP][83] ([fdo#109274]) -> [PASS][84] +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html

  * igt@kms_vblank@pipe-d-wait-forked-busy:
    - {shard-tglu}:       [SKIP][85] ([i915#1845] / [i915#7651]) -> [PASS][86] +51 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-tglu-6/igt@kms_vblank@pipe-d-wait-forked-busy.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-5/igt@kms_vblank@pipe-d-wait-forked-busy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1339]: https://gitlab.freedesktop.org/drm/intel/issues/1339
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6355]: https://gitlab.freedesktop.org/drm/intel/issues/6355
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6943]: https://gitlab.freedesktop.org/drm/intel/issues/6943
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
  [i915#7276]: https://gitlab.freedesktop.org/drm/intel/issues/7276
  [i915#7294]: https://gitlab.freedesktop.org/drm/intel/issues/7294
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
  [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8018]: https://gitlab.freedesktop.org/drm/intel/issues/8018
  [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
  [i915#8211]: https://gitlab.freedesktop.org/drm/intel/issues/8211
  [i915#8275]: https://gitlab.freedesktop.org/drm/intel/issues/8275


Build changes
-------------

  * Linux: CI_DRM_12829 -> Patchwork_114774v2

  CI-20190529: 20190529
  CI_DRM_12829: d947159409deea43f404f35cc758740c714c8888 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7185: 6707461ddb214bb8a75c5fcf2747941c9d9b11ae @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114774v2: d947159409deea43f404f35cc758740c714c8888 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/index.html

--===============0953699500851025480==
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
<tr><td><b>Series:</b></td><td>drm/ttm: Small fixes / cleanups in prep for shrinking (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114774/">https://patchwork.freedesktop.org/series/114774/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12829_full -&gt; Patchwork_114774v2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_114774v2_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_114774v2_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (8 -&gt; 7)</h2>
<p>Missing    (1): shard-tglu0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_114774v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_reloc@basic-write-cpu:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-glk1/igt@gem_exec_reloc@basic-write-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-glk7/igt@gem_exec_reloc@basic-write-cpu.html">TIMEOUT</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-glk1/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-glk7/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-glk1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-glk7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-render.html">TIMEOUT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_pm_rpm@cursor-dpms:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-tglu-1/igt@i915_pm_rpm@cursor-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-6/igt@i915_pm_rpm@cursor-dpms.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-9/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-tglu-1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">DMESG-WARN</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114774v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-glk7/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-glk6/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-apl7/igt@gem_lmem_swapping@heavy-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-apl7/igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-apl7/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-apl7/igt@kms_content_protection@uevent@pipe-a-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1339">i915#1339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-apl7/igt@kms_vblank@pipe-d-wait-idle.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@enable-disable:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-glk1/igt@perf@enable-disable.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-glk7/igt@perf@enable-disable.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6943">i915#6943</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-1/igt@drm_fdinfo@virtual-idle.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-1/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-6/igt@fbdev@read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-dg1-12/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-dg1-17/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-3/igt@gem_eio@suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5115">i915#5115</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7052">i915#7052</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-2/igt@gem_eio@suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@fairslice:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-5/igt@gem_exec_balancer@fairslice.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6259">i915#6259</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-1/igt@gem_exec_balancer@fairslice.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-glk4/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-glk2/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-tglu-3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-8/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-4/igt@gem_exec_reloc@basic-write-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-5/igt@gem_exec_reloc@basic-write-gtt.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-3/igt@gem_exec_schedule@semaphore-power.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7276">i915#7276</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4936">i915#4936</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-3/igt@gen9_exec_parse@batch-zero-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-5/igt@gen9_exec_parse@batch-zero-length.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@i915_pm_dc@dc5-dpms-negative}:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-tglu-6/igt@i915_pm_dc@dc5-dpms-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8018">i915#8018</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-1/igt@i915_pm_dc@dc5-dpms-negative.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-5/igt@i915_pm_dc@dc6-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3361">i915#3361</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-2/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-3/igt@i915_pm_dc@dc6-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-dg1-13/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-dg1-14/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-3/igt@i915_pm_rpm@system-suspend.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-2/igt@i915_pm_rpm@system-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-apl4/igt@i915_suspend@forcewake.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-apl7/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-0.html">PASS</a> +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-varying-size:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-tglu-6/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-8/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@torture-bo@pipe-c:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-tglu-1/igt@kms_cursor_legacy@torture-bo@pipe-c.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-6/igt@kms_cursor_legacy@torture-bo@pipe-c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html">PASS</a> +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html">PASS</a> +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-tglu-6/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3558">i915#3558</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-8/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered@pipe-a-planes:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-5/igt@kms_plane@plane-position-covered@pipe-a-planes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-6/igt@kms_plane@plane-position-covered@pipe-a-planes.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_render:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-1/igt@kms_psr@primary_render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-6/igt@kms_psr@primary_render.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-rkl-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5461">i915#5461</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-d:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-busy:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/shard-tglu-6/igt@kms_vblank@pipe-d-wait-forked-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114774v2/shard-tglu-5/igt@kms_vblank@pipe-d-wait-forked-busy.html">PASS</a> +51 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12829 -&gt; Patchwork_114774v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12829: d947159409deea43f404f35cc758740c714c8888 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7185: 6707461ddb214bb8a75c5fcf2747941c9d9b11ae @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114774v2: d947159409deea43f404f35cc758740c714c8888 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============0953699500851025480==--
