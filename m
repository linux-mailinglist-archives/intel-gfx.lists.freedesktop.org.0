Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 703871EA25A
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 13:00:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D983389F89;
	Mon,  1 Jun 2020 11:00:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2023089F82;
 Mon,  1 Jun 2020 11:00:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 195ABA363B;
 Mon,  1 Jun 2020 11:00:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 01 Jun 2020 11:00:40 -0000
Message-ID: <159100924007.14888.836552676635186270@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200601072446.19548-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200601072446.19548-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/36=5D_drm/i915=3A_Handle_very_early_eng?=
 =?utf-8?q?ine_initialisation_failure_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [01/36] drm/i915: Handle very early engine initialisation failure (rev2)
URL   : https://patchwork.freedesktop.org/series/77857/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8560_full -> Patchwork_17828_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17828_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17828_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17828_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-hsw:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-hsw6/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_fence@parallel@vecs0}:
    - shard-hsw:          [PASS][2] -> [FAIL][3] +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-hsw1/igt@gem_exec_fence@parallel@vecs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-hsw2/igt@gem_exec_fence@parallel@vecs0.html

  * {igt@gem_exec_fence@syncobj-invalid-wait}:
    - shard-snb:          [PASS][4] -> [FAIL][5] +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-snb5/igt@gem_exec_fence@syncobj-invalid-wait.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-snb5/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-tglb:         [PASS][6] -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-tglb6/igt@gem_exec_fence@syncobj-invalid-wait.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-tglb8/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-skl:          [PASS][8] -> [FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-skl8/igt@gem_exec_fence@syncobj-invalid-wait.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-skl8/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-glk:          [PASS][10] -> [FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-glk6/igt@gem_exec_fence@syncobj-invalid-wait.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-glk1/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-apl:          [PASS][12] -> [FAIL][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-apl1/igt@gem_exec_fence@syncobj-invalid-wait.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-apl1/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-kbl:          [PASS][14] -> [FAIL][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-kbl3/igt@gem_exec_fence@syncobj-invalid-wait.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-kbl4/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-iclb:         [PASS][16] -> [FAIL][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-iclb2/igt@gem_exec_fence@syncobj-invalid-wait.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-iclb2/igt@gem_exec_fence@syncobj-invalid-wait.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8560_full and Patchwork_17828_full:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 8 pass(s)
    - Exec time: [0.04, 0.10] s

  

Known issues
------------

  Here are the changes found in Patchwork_17828_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-snb:          [PASS][18] -> [SKIP][19] ([fdo#109271])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-snb5/igt@gem_ctx_param@set-priority-not-supported.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-snb1/igt@gem_ctx_param@set-priority-not-supported.html
    - shard-hsw:          [PASS][20] -> [SKIP][21] ([fdo#109271])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-hsw1/igt@gem_ctx_param@set-priority-not-supported.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-hsw2/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@i915_pm_rps@waitboost:
    - shard-hsw:          [PASS][22] -> [FAIL][23] ([i915#39]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-hsw1/igt@i915_pm_rps@waitboost.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-hsw2/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][24] -> [INCOMPLETE][25] ([i915#300])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
    - shard-glk:          [PASS][26] -> [INCOMPLETE][27] ([i915#58] / [k.org#198133])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-glk2/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-glk9/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][28] -> [DMESG-WARN][29] ([i915#180]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][30] -> [FAIL][31] ([fdo#108145] / [i915#265]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][32] -> [SKIP][33] ([fdo#109441]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-iclb4/igt@kms_psr@psr2_primary_mmap_gtt.html

  
#### Possible fixes ####

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-tglb:         [FAIL][34] ([i915#1930]) -> [PASS][35] +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-tglb1/igt@gem_exec_reloc@basic-concurrent0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-tglb7/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-hsw:          [FAIL][36] ([i915#1930]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-hsw2/igt@gem_exec_reloc@basic-concurrent0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-hsw1/igt@gem_exec_reloc@basic-concurrent0.html

  * {igt@gem_exec_reloc@basic-concurrent16}:
    - shard-snb:          [FAIL][38] ([i915#1930]) -> [PASS][39] +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-snb1/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-iclb:         [FAIL][40] ([i915#1930]) -> [PASS][41] +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-iclb3/igt@gem_exec_reloc@basic-concurrent16.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-iclb8/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-skl:          [FAIL][42] ([i915#1930]) -> [PASS][43] +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-skl9/igt@gem_exec_reloc@basic-concurrent16.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-skl4/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-kbl:          [FAIL][44] ([i915#1930]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-kbl4/igt@gem_exec_reloc@basic-concurrent16.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-kbl6/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-apl:          [FAIL][46] ([i915#1930]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-apl8/igt@gem_exec_reloc@basic-concurrent16.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-apl2/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-hsw:          [SKIP][48] ([fdo#109271]) -> [PASS][49] +34 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-hsw2/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-hsw5/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-apl:          [FAIL][50] ([i915#54]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][52] ([i915#180]) -> [PASS][53] +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][54] ([i915#72]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * {igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][56] ([i915#1928]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-glk1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-hdmi-a1-hdmi-a2.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-glk4/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][58] ([i915#180]) -> [PASS][59] +7 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * {igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1}:
    - shard-skl:          [FAIL][60] ([i915#1928]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][62] ([i915#1188]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - shard-skl:          [FAIL][64] ([i915#53]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-skl9/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-skl4/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][66] ([fdo#108145] / [i915#265]) -> [PASS][67] +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][68] ([fdo#109642] / [fdo#111068]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-iclb7/igt@kms_psr2_su@frontbuffer.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][70] ([fdo#109441]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-iclb6/igt@kms_psr@psr2_cursor_plane_move.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-kbl:          [INCOMPLETE][72] ([i915#155]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * {igt@perf@polling-parameterized}:
    - shard-iclb:         [FAIL][74] ([i915#1542]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-iclb6/igt@perf@polling-parameterized.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-iclb8/igt@perf@polling-parameterized.html

  * {igt@perf_pmu@busy-accuracy-2@bcs0}:
    - shard-snb:          [SKIP][76] ([fdo#109271]) -> [PASS][77] +33 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-snb5/igt@perf_pmu@busy-accuracy-2@bcs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-snb6/igt@perf_pmu@busy-accuracy-2@bcs0.html

  
#### Warnings ####

  * igt@kms_content_protection@lic:
    - shard-apl:          [FAIL][78] ([fdo#110321]) -> [TIMEOUT][79] ([i915#1319] / [i915#1635])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-apl2/igt@kms_content_protection@lic.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-apl8/igt@kms_content_protection@lic.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][80] ([i915#1188]) -> [INCOMPLETE][81] ([i915#198])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8560 -> Patchwork_17828

  CI-20190529: 20190529
  CI_DRM_8560: 02fe287fdb4a3d6bceb1bb61b3c8538b4b941b3c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5687: 668a5be752186b6e08f361bac34da37309d08393 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17828: d2ba95a40d8a1c2731ac575e5183770cbb118343 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
