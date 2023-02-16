Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 437156998F5
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 16:34:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C91610EDDC;
	Thu, 16 Feb 2023 15:34:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A2BB10E33B;
 Thu, 16 Feb 2023 15:34:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 43254AADF0;
 Thu, 16 Feb 2023 15:34:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4819895635798203343=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Thu, 16 Feb 2023 15:34:18 -0000
Message-ID: <167656165824.17990.13708428239456503029@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230215161405.187368-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20230215161405.187368-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_a_TTM_shrinker?=
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

--===============4819895635798203343==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add a TTM shrinker
URL   : https://patchwork.freedesktop.org/series/114060/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12744_full -> Patchwork_114060v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_114060v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_114060v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/index.html

Participating hosts (10 -> 11)
------------------------------

  Additional (1): shard-rkl0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_114060v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          [PASS][1] -> [INCOMPLETE][2] +5 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-apl1/igt@gem_eio@in-flight-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-apl7/igt@gem_eio@in-flight-suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-snb:          [PASS][3] -> [INCOMPLETE][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-snb6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-snb6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@kms_content_protection@lic@pipe-a-dp-1:
    - shard-apl:          [TIMEOUT][5] ([i915#7173]) -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-apl1/igt@kms_content_protection@lic@pipe-a-dp-1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-apl1/igt@kms_content_protection@lic@pipe-a-dp-1.html

  
New tests
---------

  New tests have been introduced between CI_DRM_12744_full and Patchwork_114060v1_full:

### New IGT tests (2) ###

  * igt@gem_tiled_swapping:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_114060v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@suspend:
    - shard-snb:          [PASS][7] -> [INCOMPLETE][8] ([i915#7850])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-snb2/igt@gem_eio@suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-snb1/igt@gem_eio@suspend.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][9] ([i915#3318])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-apl4/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-vga:
    - shard-snb:          NOTRUN -> [SKIP][10] ([fdo#109271]) +22 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-snb6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-vga.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [PASS][11] -> [DMESG-FAIL][12] ([i915#5334])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-apl4/igt@i915_selftest@live@gt_heartbeat.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#79])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-glk:          NOTRUN -> [SKIP][15] ([fdo#109271]) +7 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-glk8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][16] ([i915#4573]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-apl4/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-b-dp-1:
    - shard-apl:          NOTRUN -> [SKIP][17] ([fdo#109271]) +32 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-apl4/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-b-dp-1.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@virtual-idle:
    - {shard-rkl}:        [FAIL][18] ([i915#7742]) -> [PASS][19] +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-1/igt@drm_fdinfo@virtual-idle.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html

  * igt@fbdev@eof:
    - {shard-tglu}:       [SKIP][20] ([i915#2582]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-tglu-6/igt@fbdev@eof.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-tglu-3/igt@fbdev@eof.html

  * igt@fbdev@pan:
    - {shard-rkl}:        [SKIP][22] ([i915#2582]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-5/igt@fbdev@pan.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-6/igt@fbdev@pan.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-apl:          [ABORT][24] -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-apl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-apl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_persistence@hang:
    - {shard-rkl}:        [SKIP][26] ([i915#6252]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-5/igt@gem_ctx_persistence@hang.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-3/igt@gem_ctx_persistence@hang.html

  * igt@gem_eio@in-flight-external:
    - {shard-rkl}:        [ABORT][28] ([i915#7811]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-1/igt@gem_eio@in-flight-external.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-4/igt@gem_eio@in-flight-external.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - {shard-rkl}:        [FAIL][30] ([i915#2842]) -> [PASS][31] +3 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-3/igt@gem_exec_fair@basic-none@vcs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-5/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][32] ([i915#2842]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_reloc@basic-gtt-read-noreloc:
    - {shard-rkl}:        [SKIP][34] ([i915#3281]) -> [PASS][35] +9 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - {shard-rkl}:        [ABORT][36] ([i915#5122]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-4/igt@gem_exec_suspend@basic-s3@smem.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-2/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_mmap_gtt@coherency:
    - {shard-rkl}:        [SKIP][38] ([fdo#111656]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-3/igt@gem_mmap_gtt@coherency.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-5/igt@gem_mmap_gtt@coherency.html

  * igt@gem_userptr_blits@forbidden-operations:
    - {shard-rkl}:        [SKIP][40] ([i915#3282]) -> [PASS][41] +6 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-3/igt@gem_userptr_blits@forbidden-operations.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-5/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [ABORT][42] ([i915#5566]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-glk6/igt@gen9_exec_parse@allowed-single.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-glk9/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-chained:
    - {shard-rkl}:        [SKIP][44] ([i915#2527]) -> [PASS][45] +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-3/igt@gen9_exec_parse@bb-chained.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-5/igt@gen9_exec_parse@bb-chained.html

  * igt@i915_pm_dc@dc6-dpms:
    - {shard-tglu}:       [FAIL][46] ([i915#3989] / [i915#454]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-tglu-6/igt@i915_pm_dc@dc6-dpms.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-tglu-4/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - {shard-rkl}:        [SKIP][48] ([fdo#109308]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-5/igt@i915_pm_rpm@drm-resources-equal.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - {shard-rkl}:        [SKIP][50] ([i915#1397]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress.html
    - {shard-dg1}:        [SKIP][52] ([i915#1397]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-dg1-16/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-dg1-14/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs:
    - {shard-tglu}:       [SKIP][54] ([i915#1845] / [i915#7651]) -> [PASS][55] +28 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-tglu-6/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-tglu-3/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [FAIL][56] ([i915#2346]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt:
    - {shard-tglu}:       [SKIP][58] ([i915#1849]) -> [PASS][59] +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-tglu-4/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
    - {shard-rkl}:        [SKIP][60] ([i915#1849] / [i915#4098]) -> [PASS][61] +6 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_properties@crtc-properties-atomic:
    - {shard-rkl}:        [SKIP][62] ([i915#1849]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-5/igt@kms_properties@crtc-properties-atomic.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-6/igt@kms_properties@crtc-properties-atomic.html

  * igt@kms_psr@cursor_plane_onoff:
    - {shard-rkl}:        [SKIP][64] ([i915#1072]) -> [PASS][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-5/igt@kms_psr@cursor_plane_onoff.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-6/igt@kms_psr@cursor_plane_onoff.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - {shard-rkl}:        [SKIP][66] ([i915#1845] / [i915#4098]) -> [PASS][67] +7 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-5/igt@kms_rotation_crc@primary-rotation-90.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - {shard-rkl}:        [SKIP][68] ([i915#2436]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-3/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@polling-small-buf:
    - {shard-rkl}:        [FAIL][70] ([i915#1722]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-3/igt@perf@polling-small-buf.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-5/igt@perf@polling-small-buf.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
  [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7294]: https://gitlab.freedesktop.org/drm/intel/issues/7294
  [i915#7330]: https://gitlab.freedesktop.org/drm/intel/issues/7330
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7811]: https://gitlab.freedesktop.org/drm/intel/issues/7811
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7850]: https://gitlab.freedesktop.org/drm/intel/issues/7850
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
  [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
  [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
  [i915#8018]: https://gitlab.freedesktop.org/drm/intel/issues/8018
  [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152


Build changes
-------------

  * Linux: CI_DRM_12744 -> Patchwork_114060v1

  CI-20190529: 20190529
  CI_DRM_12744: 2e4cac06e4de01a35626de676b9eeb474ae7ab5d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7160: 45da871dd2684227e93a2fc002b87dfc58bd5fd9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114060v1: 2e4cac06e4de01a35626de676b9eeb474ae7ab5d @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/index.html

--===============4819895635798203343==
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
<tr><td><b>Series:</b></td><td>Add a TTM shrinker</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114060/">https://patchwork.freedesktop.org/series/114060/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12744_full -&gt; Patchwork_114060v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_114060v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_114060v1_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/index.html</p>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): shard-rkl0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_114060v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-apl1/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-apl7/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-snb6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-snb6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_content_protection@lic@pipe-a-dp-1:<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-apl1/igt@kms_content_protection@lic@pipe-a-dp-1.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7173">i915#7173</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-apl1/igt@kms_content_protection@lic@pipe-a-dp-1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_12744_full and Patchwork_114060v1_full:</p>
<h3>New IGT tests (2)</h3>
<ul>
<li>
<p>igt@gem_tiled_swapping:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114060v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-snb2/igt@gem_eio@suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-snb1/igt@gem_eio@suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7850">i915#7850</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-apl4/igt@gem_userptr_blits@vma-merge.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-vga:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-snb6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-vga.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-apl4/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-glk8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-apl4/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4573">i915#4573</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-b-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-apl4/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-b-dp-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +32 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-1/igt@drm_fdinfo@virtual-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-tglu-6/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-tglu-3/igt@fbdev@eof.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-5/igt@fbdev@pan.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-6/igt@fbdev@pan.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-apl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-apl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-5/igt@gem_ctx_persistence@hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6252">i915#6252</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-3/igt@gem_ctx_persistence@hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-external:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-1/igt@gem_eio@in-flight-external.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7811">i915#7811</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-4/igt@gem_eio@in-flight-external.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-5/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-read-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html">PASS</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-4/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5122">i915#5122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-2/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-3/igt@gem_mmap_gtt@coherency.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111656">fdo#111656</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-5/igt@gem_mmap_gtt@coherency.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-3/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-5/igt@gem_userptr_blits@forbidden-operations.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-glk6/igt@gen9_exec_parse@allowed-single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-glk9/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-3/igt@gen9_exec_parse@bb-chained.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-5/igt@gen9_exec_parse@bb-chained.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-tglu-6/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-tglu-4/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-5/igt@i915_pm_rpm@drm-resources-equal.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109308">fdo#109308</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress.html">PASS</a></p>
</li>
<li>
<p>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-dg1-16/igt@i915_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-dg1-14/igt@i915_pm_rpm@modeset-lpsp-stress.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-tglu-6/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-tglu-3/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs.html">PASS</a> +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-tglu-4/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-5/igt@kms_properties@crtc-properties-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-6/igt@kms_properties@crtc-properties-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_onoff:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-5/igt@kms_psr@cursor_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-6/igt@kms_psr@cursor_plane_onoff.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-5/igt@kms_rotation_crc@primary-rotation-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-90.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-3/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2436">i915#2436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/shard-rkl-3/igt@perf@polling-small-buf.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1722">i915#1722</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/shard-rkl-5/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12744 -&gt; Patchwork_114060v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12744: 2e4cac06e4de01a35626de676b9eeb474ae7ab5d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7160: 45da871dd2684227e93a2fc002b87dfc58bd5fd9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114060v1: 2e4cac06e4de01a35626de676b9eeb474ae7ab5d @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4819895635798203343==--
