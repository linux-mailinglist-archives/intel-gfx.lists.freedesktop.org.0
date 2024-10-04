Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2274E98FF08
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 10:47:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BDC3897D4;
	Fri,  4 Oct 2024 08:47:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EB9A897D4;
 Fri,  4 Oct 2024 08:47:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3800568771628348422=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915=3A_Allow_fastset_f?=
 =?utf-8?q?or_change_in_HDR_infoframe?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 04 Oct 2024 08:47:46 -0000
Message-ID: <172803166656.1172850.13199955929651987744@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240930113806.2297402-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20240930113806.2297402-1-chaitanya.kumar.borah@intel.com>
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

--===============3800568771628348422==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Allow fastset for change in HDR infoframe
URL   : https://patchwork.freedesktop.org/series/139293/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15461_full -> Patchwork_139293v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_139293v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139293v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 8)
------------------------------

  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139293v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-dg1:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-16/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-18/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@kms_flip@blocking-wf_vblank@a-hdmi-a4:
    - shard-dg1:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-14/igt@kms_flip@blocking-wf_vblank@a-hdmi-a4.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-14/igt@kms_flip@blocking-wf_vblank@a-hdmi-a4.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [INCOMPLETE][5] +3 other tests incomplete
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-4/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pipe-b-edp-1.html

  
#### Warnings ####

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1:
    - shard-tglu:         [FAIL][6] ([i915#2122]) -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-tglu-3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15461_full and Patchwork_139293v1_full:

### New IGT tests (4) ###

  * igt@kms_plane_multiple@tiling-y@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.78] s

  * igt@kms_plane_multiple@tiling-y@pipe-b-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.66] s

  * igt@kms_plane_multiple@tiling-y@pipe-c-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.69] s

  * igt@kms_plane_multiple@tiling-y@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.67] s

  

Known issues
------------

  Here are the changes found in Patchwork_139293v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-dg1:          ([PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [FAIL][30], [PASS][31]) -> ([PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-15/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-19/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-12/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-12/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-12/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-13/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-13/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-19/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-19/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-18/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-18/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-18/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-17/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-17/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-17/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-16/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-14/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-16/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-16/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-14/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-14/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-16/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-15/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-15/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-19/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-12/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-12/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-12/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-12/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-13/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-13/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-13/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-14/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-14/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-15/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-15/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-15/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-16/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-16/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-16/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-18/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-18/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-18/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-18/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-19/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-19/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@cold-reset-bound:
    - shard-tglu:         NOTRUN -> [SKIP][57] ([i915#11078])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@busy@vcs1:
    - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#8414]) +11 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@drm_fdinfo@busy@vcs1.html

  * igt@fbdev@info:
    - shard-dg2:          [PASS][59] -> [SKIP][60] ([i915#1849] / [i915#2582])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-7/igt@fbdev@info.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@fbdev@info.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-tglu:         NOTRUN -> [SKIP][61] ([i915#9323])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-dg1:          NOTRUN -> [SKIP][62] ([i915#3555] / [i915#9323])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#9323]) +1 other test skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@gem_ccs@suspend-resume.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-tglu:         NOTRUN -> [SKIP][64] ([i915#7697])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#7697])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-tglu:         NOTRUN -> [SKIP][66] ([i915#6335])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#280])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_eio@hibernate:
    - shard-dg1:          [PASS][68] -> [ABORT][69] ([i915#7975] / [i915#8213])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-18/igt@gem_eio@hibernate.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-16/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#4525]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#6344])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglu:         NOTRUN -> [FAIL][72] ([i915#2842]) +3 other tests fail
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          ([PASS][73], [PASS][74]) -> [FAIL][75] ([i915#2842]) +1 other test fail
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-glk:          NOTRUN -> [FAIL][76] ([i915#2842]) +1 other test fail
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk3/igt@gem_exec_fair@basic-pace-solo.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [PASS][77] -> [FAIL][78] ([i915#2842]) +1 other test fail
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-rkl-2/igt@gem_exec_fair@basic-pace@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg1:          NOTRUN -> [SKIP][79] ([i915#3539] / [i915#4852]) +2 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#3281])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-gtt.html
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#3281])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-3/igt@gem_exec_reloc@basic-cpu-gtt.html

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#3281]) +10 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-cpu-active.html

  * igt@gem_exec_reloc@basic-wc-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#3281]) +3 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@gem_exec_reloc@basic-wc-gtt.html

  * igt@gem_exec_schedule@preempt-queue:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#4537] / [i915#4812])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-1/igt@gem_exec_schedule@preempt-queue.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-snb:          NOTRUN -> [SKIP][85] +14 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-snb4/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg1:          NOTRUN -> [SKIP][86] ([i915#4860])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#4860])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-1/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#4613] / [i915#7582])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-tglu:         NOTRUN -> [SKIP][89] ([i915#4613]) +2 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#4613])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#12193])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_lmem_swapping@verify-random-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][92] ([i915#4565])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html

  * igt@gem_media_fill@media-fill:
    - shard-mtlp:         NOTRUN -> [SKIP][93] ([i915#8289])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-4/igt@gem_media_fill@media-fill.html

  * igt@gem_mmap_gtt@basic-small-copy-odd:
    - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#4077]) +2 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@gem_mmap_gtt@basic-small-copy-odd.html

  * igt@gem_mmap_gtt@basic-write-read-distinct:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#4077])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-1/igt@gem_mmap_gtt@basic-write-read-distinct.html

  * igt@gem_mmap_wc@set-cache-level:
    - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#4083])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#3282]) +3 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#4270]) +2 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@gem_pxp@protected-raw-src-copy-not-readible.html
    - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#4270])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-1/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-tglu:         NOTRUN -> [SKIP][100] ([i915#4270])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_readwrite@beyond-eob:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#3282]) +4 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@gem_readwrite@beyond-eob.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#8411])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#4079])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-1/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#3297]) +1 other test skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#3297] / [i915#4880])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@relocations:
    - shard-dg1:          NOTRUN -> [SKIP][106] ([i915#3281] / [i915#3297])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@gem_userptr_blits@relocations.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-tglu:         NOTRUN -> [SKIP][107] ([i915#2527] / [i915#2856]) +2 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#2527]) +3 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#2856])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-3/igt@gen9_exec_parse@unaligned-jump.html
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#2856])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-11/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [PASS][111] -> [ABORT][112] ([i915#9820])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg1:          [PASS][113] -> [ABORT][114] ([i915#9820])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [PASS][115] -> [ABORT][116] ([i915#10131] / [i915#9697])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rps@engine-order:
    - shard-glk:          ([PASS][117], [PASS][118]) -> [FAIL][119] ([i915#12308])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk3/igt@i915_pm_rps@engine-order.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk1/igt@i915_pm_rps@engine-order.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk7/igt@i915_pm_rps@engine-order.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#4387])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@mock:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][121] ([i915#1982] / [i915#9311])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@i915_selftest@mock.html

  * igt@i915_selftest@mock@memory_region:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][122] ([i915#9311])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@i915_selftest@mock@memory_region.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [PASS][123] -> [INCOMPLETE][124] ([i915#4817])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-rkl-5/igt@i915_suspend@basic-s3-without-i915.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html

  * igt@intel_hwmon@hwmon-read:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#7707])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@intel_hwmon@hwmon-read.html

  * igt@intel_hwmon@hwmon-write:
    - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#7707])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@intel_hwmon@hwmon-write.html

  * igt@kms_atomic@plane-cursor-legacy:
    - shard-dg2:          [PASS][127] -> [SKIP][128] ([i915#9197]) +40 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-8/igt@kms_atomic@plane-cursor-legacy.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_atomic@plane-cursor-legacy.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-glk:          NOTRUN -> [SKIP][129] ([i915#1769])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][130] ([i915#5286]) +2 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#5286]) +2 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#4538] / [i915#5286]) +3 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#4538] / [i915#5190])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-3/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
    - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#3638]) +2 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
    - shard-mtlp:         NOTRUN -> [SKIP][135] +1 other test skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-8/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#3638]) +2 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#4538]) +2 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][138] ([i915#6095]) +123 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-15/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][139] ([i915#6095]) +24 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][140] ([i915#12313]) +2 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#12313])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#10307] / [i915#6095]) +103 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-3/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#6095]) +4 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-1/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-edp-1.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#6095]) +66 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-4/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#12313])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-3/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
    - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#12313])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
    - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#12313])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-8/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#3742])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_chamelium_frames@hdmi-crc-multiple:
    - shard-tglu:         NOTRUN -> [SKIP][149] ([i915#7828]) +3 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@kms_chamelium_frames@hdmi-crc-multiple.html

  * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
    - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#7828]) +4 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html

  * igt@kms_chamelium_hpd@vga-hpd:
    - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#7828])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-3/igt@kms_chamelium_hpd@vga-hpd.html
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#7828])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-11/igt@kms_chamelium_hpd@vga-hpd.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#7828]) +5 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#3116])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#3299]) +1 other test skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@lic-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#9424])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@type1:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#7118] / [i915#9424])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent:
    - shard-tglu:         NOTRUN -> [SKIP][158] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#3555]) +1 other test skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#11453])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#11453])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#3555]) +3 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#3555]) +3 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#11453])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-3/igt@kms_cursor_crc@cursor-sliding-512x512.html
    - shard-dg1:          NOTRUN -> [SKIP][165] ([i915#11453]) +1 other test skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_cursor_crc@cursor-sliding-512x512.html
    - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#11453])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-8/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#4103]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          ([PASS][168], [PASS][169]) -> [FAIL][170] ([i915#2346])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#3555] / [i915#3804])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#3804])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dp_aux_dev:
    - shard-dg1:          NOTRUN -> [SKIP][173] ([i915#1257])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_dp_aux_dev.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#3555] / [i915#3840])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#3840] / [i915#9688])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-3/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-dg2:          [PASS][176] -> [SKIP][177] ([i915#1849])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-8/igt@kms_fbcon_fbt@fbc.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#3955])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@display-2x:
    - shard-dg1:          NOTRUN -> [SKIP][179] ([i915#1839])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@display-3x:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#1839]) +1 other test skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-tglu:         NOTRUN -> [SKIP][181] ([i915#9337])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-dg2:          NOTRUN -> [SKIP][182]
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-3/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
    - shard-dg1:          NOTRUN -> [SKIP][183] ([i915#9934])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
    - shard-mtlp:         NOTRUN -> [SKIP][184] ([i915#3637])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-8/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          NOTRUN -> [SKIP][185] +19 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][186] ([i915#3637]) +4 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-snb:          [PASS][187] -> [FAIL][188] ([i915#2122]) +4 other tests fail
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-snb6/igt@kms_flip@2x-plain-flip-ts-check.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-snb6/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-glk:          NOTRUN -> [FAIL][189] ([i915#2122]) +1 other test fail
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk3/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@blocking-wf_vblank@b-hdmi-a4:
    - shard-dg1:          [PASS][190] -> [FAIL][191] ([i915#2122]) +2 other tests fail
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-14/igt@kms_flip@blocking-wf_vblank@b-hdmi-a4.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-14/igt@kms_flip@blocking-wf_vblank@b-hdmi-a4.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-hdmi-a1:
    - shard-tglu:         [PASS][192] -> [FAIL][193] ([i915#2122]) +3 other tests fail
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-tglu-3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-hdmi-a1.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:
    - shard-glk:          [PASS][194] -> [INCOMPLETE][195] ([i915#4839])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
    - shard-snb:          [PASS][196] -> [INCOMPLETE][197] ([i915#4839]) +1 other test incomplete
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-wf_vblank-interruptible:
    - shard-glk:          ([PASS][198], [PASS][199]) -> [FAIL][200] ([i915#2122]) +6 other tests fail
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk2/igt@kms_flip@flip-vs-wf_vblank-interruptible.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk9/igt@kms_flip@flip-vs-wf_vblank-interruptible.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk5/igt@kms_flip@flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@d-edp1:
    - shard-mtlp:         [PASS][201] -> [FAIL][202] ([i915#2122])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-mtlp-8/igt@kms_flip@plain-flip-fb-recreate-interruptible@d-edp1.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-7/igt@kms_flip@plain-flip-fb-recreate-interruptible@d-edp1.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-rkl:          [PASS][203] -> [FAIL][204] ([i915#2122])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-rkl-4/igt@kms_flip@plain-flip-ts-check.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-6/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_flip@plain-flip-ts-check@a-hdmi-a2:
    - shard-rkl:          NOTRUN -> [FAIL][205] ([i915#11989])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-6/igt@kms_flip@plain-flip-ts-check@a-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-dg1:          NOTRUN -> [SKIP][206] ([i915#2672] / [i915#3555]) +2 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-dg2:          [PASS][207] -> [SKIP][208] ([i915#3555]) +3 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
    - shard-tglu:         NOTRUN -> [SKIP][209] ([i915#2672] / [i915#3555]) +1 other test skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][210] ([i915#2587] / [i915#2672]) +1 other test skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][211] ([i915#2672] / [i915#3555] / [i915#8813])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html
    - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#2672] / [i915#3555])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][213] ([i915#2672])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#2672]) +4 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
    - shard-dg1:          NOTRUN -> [SKIP][215] ([i915#2587] / [i915#2672]) +2 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#2672]) +1 other test skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#2672] / [i915#3555]) +1 other test skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg2:          [PASS][218] -> [SKIP][219] ([i915#5354]) +16 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#8708])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][221] +15 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html
    - shard-mtlp:         NOTRUN -> [SKIP][222] ([i915#1825])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html
    - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#5354])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:
    - shard-dg2:          [PASS][224] -> [FAIL][225] ([i915#6880])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#8708]) +9 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#3023]) +16 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][228] ([i915#3458]) +5 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-mtlp:         NOTRUN -> [SKIP][229] ([i915#10055])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][230] +40 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][231] ([i915#4423] / [i915#8708])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][232] ([i915#1825]) +23 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_hdr@invalid-hdr:
    - shard-dg1:          NOTRUN -> [SKIP][233] ([i915#3555] / [i915#8228])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-tglu:         NOTRUN -> [SKIP][234] ([i915#3555] / [i915#8228]) +1 other test skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#12339])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][236] ([i915#6301])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane@pixel-format:
    - shard-dg2:          [PASS][237] -> [SKIP][238] ([i915#8825]) +1 other test skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-10/igt@kms_plane@pixel-format.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_plane@pixel-format.html

  * igt@kms_plane_alpha_blend@alpha-basic:
    - shard-dg2:          [PASS][239] -> [SKIP][240] ([i915#7294]) +1 other test skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-8/igt@kms_plane_alpha_blend@alpha-basic.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-basic.html
    - shard-glk:          NOTRUN -> [FAIL][241] ([i915#12178])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk3/igt@kms_plane_alpha_blend@alpha-basic.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][242] ([i915#7862]) +1 other test fail
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk3/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:
    - shard-rkl:          NOTRUN -> [SKIP][243] ([i915#12247]) +5 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
    - shard-dg2:          [PASS][244] -> [SKIP][245] ([i915#3555] / [i915#8152] / [i915#9423])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a:
    - shard-mtlp:         NOTRUN -> [SKIP][246] ([i915#12247])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
    - shard-dg2:          [PASS][247] -> [SKIP][248] ([i915#8152] / [i915#9423]) +1 other test skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c:
    - shard-dg2:          [PASS][249] -> [SKIP][250] ([i915#12247]) +20 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d:
    - shard-dg2:          [PASS][251] -> [SKIP][252] ([i915#8152]) +1 other test skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:
    - shard-dg2:          [PASS][253] -> [SKIP][254] ([i915#12247] / [i915#8152] / [i915#9423]) +1 other test skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-7/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling:
    - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#12247] / [i915#9423])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#12247]) +3 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5:
    - shard-dg2:          [PASS][257] -> [SKIP][258] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-5.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-dg2:          [PASS][259] -> [SKIP][260] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) +1 other test skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
    - shard-tglu:         NOTRUN -> [SKIP][261] ([i915#12247] / [i915#3555] / [i915#6953])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b:
    - shard-tglu:         NOTRUN -> [SKIP][262] ([i915#12247]) +8 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:
    - shard-dg2:          [PASS][263] -> [SKIP][264] ([i915#12247] / [i915#8152]) +4 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-dg1:          NOTRUN -> [SKIP][265] ([i915#12247] / [i915#6953])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b:
    - shard-dg1:          NOTRUN -> [SKIP][266] ([i915#12247]) +3 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-rkl:          NOTRUN -> [SKIP][267] ([i915#9685]) +1 other test skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-tglu:         NOTRUN -> [SKIP][268] ([i915#8430])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          [PASS][269] -> [SKIP][270] ([i915#9519]) +3 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-8/igt@kms_pm_rpm@dpms-lpsp.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#9519])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg2:          [PASS][272] -> [SKIP][273]
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-10/igt@kms_pm_rpm@i2c.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg1:          NOTRUN -> [SKIP][274] ([i915#9519])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [PASS][275] -> [SKIP][276] ([i915#9519]) +1 other test skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-mtlp:         NOTRUN -> [SKIP][277] ([i915#9519])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-dg2:          [PASS][278] -> [SKIP][279] ([i915#3547])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-8/igt@kms_pm_rpm@system-suspend-modeset.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][280] ([i915#6524])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_properties@crtc-properties-atomic:
    - shard-dg2:          [PASS][281] -> [SKIP][282] ([i915#11521])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-7/igt@kms_properties@crtc-properties-atomic.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_properties@crtc-properties-atomic.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][283] ([i915#9808])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-4/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pipe-a-edp-1.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][284] ([i915#11520]) +2 other tests skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-glk:          NOTRUN -> [SKIP][285] ([i915#11520]) +2 other tests skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk3/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][286] ([i915#11520]) +5 other tests skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-dg1:          NOTRUN -> [SKIP][287] ([i915#11520]) +2 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-tglu:         NOTRUN -> [SKIP][288] ([i915#9683]) +1 other test skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-dg1:          NOTRUN -> [SKIP][289] ([i915#9683])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-psr-no-drrs:
    - shard-tglu:         NOTRUN -> [SKIP][290] ([i915#9732]) +8 other tests skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@kms_psr@fbc-psr-no-drrs.html

  * igt@kms_psr@psr-cursor-plane-onoff:
    - shard-dg1:          NOTRUN -> [SKIP][291] ([i915#1072] / [i915#9732]) +7 other tests skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_psr@psr-cursor-plane-onoff.html

  * igt@kms_psr@psr-no-drrs:
    - shard-glk:          NOTRUN -> [SKIP][292] +41 other tests skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk3/igt@kms_psr@psr-no-drrs.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-rkl:          NOTRUN -> [SKIP][293] ([i915#1072] / [i915#9732]) +15 other tests skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_psr@psr2-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][294] ([i915#1072] / [i915#9732])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-3/igt@kms_psr@psr2-dpms.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-rkl:          NOTRUN -> [ABORT][295] ([i915#12231]) +1 other test abort
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_setmode@basic@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [FAIL][296] ([i915#5465]) +2 other tests fail
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-4/igt@kms_setmode@basic@pipe-b-edp-1.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          [PASS][297] -> [FAIL][298] ([IGT#2])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_sysfs_edid_timing.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_sysfs_edid_timing.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-tglu:         NOTRUN -> [SKIP][299] ([i915#8623])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-tglu:         NOTRUN -> [SKIP][300] ([i915#9906])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@negative-basic:
    - shard-dg1:          NOTRUN -> [SKIP][301] ([i915#3555] / [i915#9906])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-rkl:          NOTRUN -> [SKIP][302] ([i915#2437] / [i915#9412])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-dg1:          NOTRUN -> [SKIP][303] ([i915#2437])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-dg1:          NOTRUN -> [SKIP][304] ([i915#2437] / [i915#9412])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-dg1:          NOTRUN -> [SKIP][305] ([i915#2433])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@perf@per-context-mode-unprivileged.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [PASS][306] -> [FAIL][307] ([i915#4349]) +4 other tests fail
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-1/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-tglu:         NOTRUN -> [SKIP][308] ([i915#8850])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@perf_pmu@cpu-hotplug.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-tglu:         NOTRUN -> [SKIP][309] ([i915#8516])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-write:
    - shard-rkl:          NOTRUN -> [SKIP][310] ([i915#3291] / [i915#3708])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@prime_vgem@basic-write.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-rkl:          NOTRUN -> [SKIP][311] ([i915#9917])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
#### Possible fixes ####

  * igt@fbdev@pan:
    - shard-dg2:          [SKIP][312] ([i915#2582]) -> [PASS][313]
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@fbdev@pan.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@fbdev@pan.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-rkl:          [FAIL][314] ([i915#12027]) -> [PASS][315]
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         [FAIL][316] ([i915#2842]) -> [PASS][317] +1 other test pass
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [FAIL][318] ([i915#2842]) -> [PASS][319] +1 other test pass
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          ([ABORT][320], [PASS][321]) ([i915#5566]) -> [PASS][322]
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk4/igt@gen9_exec_parse@allowed-all.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk1/igt@gen9_exec_parse@allowed-all.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk2/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [ABORT][323] ([i915#5566]) -> [PASS][324]
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk8/igt@gen9_exec_parse@allowed-single.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk3/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - shard-mtlp:         [INCOMPLETE][325] -> [PASS][326] +1 other test pass
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-mtlp-1/igt@i915_pm_rc6_residency@rc6-accuracy.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-3/igt@i915_pm_rc6_residency@rc6-accuracy.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-dg1:          [DMESG-WARN][327] ([i915#4423]) -> [PASS][328]
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-13/igt@i915_pm_rpm@system-suspend-execbuf.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-19/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_selftest@live@active:
    - shard-dg2:          [ABORT][329] ([i915#12305]) -> [PASS][330]
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-4/igt@i915_selftest@live@active.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-6/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@workarounds:
    - shard-dg2:          [DMESG-FAIL][331] ([i915#12304]) -> [PASS][332]
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-4/igt@i915_selftest@live@workarounds.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_atomic_interruptible@atomic-setmode:
    - shard-dg2:          [SKIP][333] ([i915#9197]) -> [PASS][334] +22 other tests pass
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_atomic_interruptible@atomic-setmode.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_atomic_interruptible@atomic-setmode.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [FAIL][335] ([i915#5138]) -> [PASS][336] +1 other test pass
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180:
    - shard-dg1:          [FAIL][337] ([i915#5138]) -> [PASS][338]
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-12/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-13/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          ([PASS][339], [FAIL][340]) ([i915#2346]) -> [PASS][341]
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-snb:          [FAIL][342] -> [PASS][343]
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-snb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-snb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fb_coherency@memset-crc:
    - shard-dg2:          [SKIP][344] -> [PASS][345]
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_fb_coherency@memset-crc.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-1/igt@kms_fb_coherency@memset-crc.html

  * igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          ([FAIL][346], [PASS][347]) -> [PASS][348] +4 other tests pass
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk3/igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk4/igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk2/igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          ([FAIL][349], [PASS][350]) ([i915#2122]) -> [PASS][351] +3 other tests pass
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk1/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@blocking-wf_vblank:
    - shard-rkl:          [FAIL][352] ([i915#10826]) -> [PASS][353]
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-rkl-2/igt@kms_flip@blocking-wf_vblank.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_flip@blocking-wf_vblank.html
    - shard-snb:          [FAIL][354] ([i915#10826] / [i915#2122]) -> [PASS][355]
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-snb2/igt@kms_flip@blocking-wf_vblank.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-snb5/igt@kms_flip@blocking-wf_vblank.html

  * igt@kms_flip@blocking-wf_vblank@a-vga1:
    - shard-snb:          [FAIL][356] ([i915#10826]) -> [PASS][357]
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-snb2/igt@kms_flip@blocking-wf_vblank@a-vga1.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-snb5/igt@kms_flip@blocking-wf_vblank@a-vga1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1:
    - shard-snb:          [FAIL][358] ([i915#2122]) -> [PASS][359] +5 other tests pass
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-snb2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@d-hdmi-a3:
    - shard-dg2:          [FAIL][360] ([i915#2122]) -> [PASS][361] +2 other tests pass
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@d-hdmi-a3.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@d-hdmi-a3.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1:
    - shard-tglu:         [FAIL][362] ([i915#2122]) -> [PASS][363] +1 other test pass
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-tglu-6/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-3/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a4:
    - shard-dg1:          [FAIL][364] ([i915#2122]) -> [PASS][365] +3 other tests pass
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-14/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a4.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-19/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a4.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][366] ([i915#5354]) -> [PASS][367] +5 other tests pass
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt:
    - shard-dg2:          [FAIL][368] ([i915#6880]) -> [PASS][369]
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt:
    - shard-snb:          [SKIP][370] -> [PASS][371] +3 other tests pass
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_invalid_mode@bad-vtotal:
    - shard-dg2:          [SKIP][372] ([i915#3555]) -> [PASS][373]
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_invalid_mode@bad-vtotal.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_invalid_mode@bad-vtotal.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-dg2:          [SKIP][374] ([i915#7294]) -> [PASS][375]
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-dg2:          [SKIP][376] ([i915#3555] / [i915#8152] / [i915#9423]) -> [PASS][377]
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
    - shard-dg2:          [SKIP][378] ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][379]
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-c:
    - shard-dg2:          [SKIP][380] ([i915#12247]) -> [PASS][381] +5 other tests pass
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-c.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-c.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d:
    - shard-dg2:          [SKIP][382] ([i915#12247] / [i915#8152]) -> [PASS][383] +1 other test pass
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-dg2:          [FAIL][384] ([i915#7330]) -> [PASS][385]
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_pm_dc@dc9-dpms.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][386] ([i915#9340]) -> [PASS][387]
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [SKIP][388] ([i915#9519]) -> [PASS][389] +1 other test pass
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [SKIP][390] ([i915#9519]) -> [PASS][391]
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_properties@plane-properties-legacy:
    - shard-dg2:          [SKIP][392] ([i915#11521]) -> [PASS][393]
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_properties@plane-properties-legacy.html

  * igt@kms_vrr@negative-basic:
    - shard-mtlp:         [FAIL][394] ([i915#10393]) -> [PASS][395] +1 other test pass
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-mtlp-8/igt@kms_vrr@negative-basic.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-5/igt@kms_vrr@negative-basic.html

  
#### Warnings ####

  * igt@gem_ctx_engines@invalid-engines:
    - shard-glk:          ([FAIL][396], [PASS][397]) ([i915#12027]) -> [FAIL][398] ([i915#12027])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk4/igt@gem_ctx_engines@invalid-engines.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk5/igt@gem_ctx_engines@invalid-engines.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk9/igt@gem_ctx_engines@invalid-engines.html

  * igt@i915_selftest@mock:
    - shard-dg2:          [DMESG-WARN][399] ([i915#9311]) -> [DMESG-WARN][400] ([i915#1982] / [i915#9311])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-6/igt@i915_selftest@mock.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-11/igt@i915_selftest@mock.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg2:          [SKIP][401] ([i915#1769] / [i915#3555]) -> [SKIP][402] ([i915#9197])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-dg2:          [SKIP][403] -> [SKIP][404] ([i915#9197]) +6 other tests skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-8/igt@kms_big_fb@linear-16bpp-rotate-90.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          [SKIP][405] ([i915#9197]) -> [SKIP][406] +1 other test skip
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-dg2:          [SKIP][407] ([i915#5190] / [i915#9197]) -> [SKIP][408] ([i915#4538] / [i915#5190]) +4 other tests skip
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg2:          [SKIP][409] ([i915#4538] / [i915#5190]) -> [SKIP][410] ([i915#5190] / [i915#9197]) +9 other tests skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-dg2:          [SKIP][411] ([i915#5190]) -> [SKIP][412] ([i915#5190] / [i915#9197])
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-8/igt@kms_big_fb@yf-tiled-addfb.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-dg2:          [SKIP][413] ([i915#12313]) -> [SKIP][414] ([i915#9197]) +2 other tests skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-10/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs:
    - shard-dg2:          [SKIP][415] ([i915#9197]) -> [SKIP][416] ([i915#10307] / [i915#6095]) +4 other tests skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc:
    - shard-dg2:          [SKIP][417] ([i915#10307] / [i915#6095]) -> [SKIP][418] ([i915#9197]) +10 other tests skip
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-10/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_cdclk@plane-scaling:
    - shard-dg2:          [SKIP][419] ([i915#4087]) -> [SKIP][420] ([i915#9197])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-7/igt@kms_cdclk@plane-scaling.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium_hpd@hdmi-hpd-after-suspend:
    - shard-mtlp:         [INCOMPLETE][421] ([i915#2295]) -> [SKIP][422] ([i915#7828])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-mtlp-2/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-mtlp-4/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.html

  * igt@kms_content_protection@content-type-change:
    - shard-dg2:          [SKIP][423] ([i915#9424]) -> [SKIP][424] ([i915#9197])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-8/igt@kms_content_protection@content-type-change.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          [FAIL][425] ([i915#1339] / [i915#7173]) -> [SKIP][426] ([i915#9197])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-10/igt@kms_content_protection@uevent.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          [SKIP][427] ([i915#11453]) -> [SKIP][428] ([i915#9197]) +1 other test skip
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-10/igt@kms_cursor_crc@cursor-random-512x512.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-dg2:          [SKIP][429] ([i915#9197]) -> [SKIP][430] ([i915#11453])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          [SKIP][431] ([i915#3555]) -> [SKIP][432] ([i915#9197]) +4 other tests skip
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-10/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-dg2:          [SKIP][433] ([i915#5354]) -> [SKIP][434] ([i915#9197]) +5 other tests skip
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-dg2:          [SKIP][435] ([i915#9197]) -> [SKIP][436] ([i915#5354]) +2 other tests skip
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg2:          [SKIP][437] ([i915#9067]) -> [SKIP][438] ([i915#9197])
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg2:          [SKIP][439] ([i915#9833]) -> [SKIP][440] ([i915#9197])
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-8/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg2:          [SKIP][441] ([i915#8812]) -> [SKIP][442] ([i915#9197])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-8/igt@kms_draw_crc@draw-method-mmap-gtt.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-dg2:          [SKIP][443] ([i915#9197]) -> [SKIP][444] ([i915#3555] / [i915#3840])
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_dsc@dsc-with-formats.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-dg1:          [SKIP][445] -> [SKIP][446] ([i915#9934]) +28 other tests skip
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-16/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-12/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@blocking-wf_vblank:
    - shard-glk:          ([PASS][447], [FAIL][448]) ([i915#2122]) -> [FAIL][449] ([i915#2122]) +3 other tests fail
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk4/igt@kms_flip@blocking-wf_vblank.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk5/igt@kms_flip@blocking-wf_vblank.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk9/igt@kms_flip@blocking-wf_vblank.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-dg2:          [FAIL][450] ([i915#2122]) -> [SKIP][451] ([i915#5354])
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
    - shard-dg2:          [SKIP][452] ([i915#3555]) -> [SKIP][453] ([i915#2672] / [i915#3555]) +1 other test skip
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-dg2:          [SKIP][454] ([i915#2672] / [i915#3555] / [i915#5190]) -> [SKIP][455] ([i915#3555] / [i915#5190])
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
    - shard-dg2:          [SKIP][456] ([i915#2672] / [i915#3555]) -> [SKIP][457] ([i915#3555]) +1 other test skip
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-dg2:          [SKIP][458] ([i915#3555] / [i915#5190]) -> [SKIP][459] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][460] ([i915#5354]) -> [SKIP][461] ([i915#3458]) +7 other tests skip
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][462] ([i915#8708]) -> [SKIP][463] ([i915#5354]) +21 other tests skip
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][464] ([i915#5354]) -> [SKIP][465] ([i915#8708]) +7 other tests skip
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
    - shard-dg2:          [SKIP][466] ([i915#10433] / [i915#3458]) -> [SKIP][467] ([i915#3458])
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][468] ([i915#3458]) -> [SKIP][469] ([i915#5354]) +15 other tests skip
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][470] ([i915#5354]) -> [SKIP][471] ([i915#10433] / [i915#3458]) +1 other test skip
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          [SKIP][472] ([i915#9197]) -> [SKIP][473] ([i915#3555] / [i915#8228])
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_hdr@invalid-metadata-sizes.html
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [SKIP][474] ([i915#3555] / [i915#8228]) -> [SKIP][475] ([i915#9197]) +1 other test skip
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-7/igt@kms_hdr@static-toggle-suspend.html
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-d

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/index.html

--===============3800568771628348422==
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
<tr><td><b>Series:</b></td><td>drm/i915: Allow fastset for change in HDR in=
foframe</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/139293/">https://patchwork.freedesktop.org/series/139293/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_139293v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_139293v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15461_full -&gt; Patchwork_139293v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_139293v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_139293v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 8)</h2>
<p>Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
139293v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg1-16/igt@gem_ctx_isolation@preservation-s3@vcs0.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_139293v1/shard-dg1-18/igt@gem_ctx_isolation@preservation-s3@vcs0.html">I=
NCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@a-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg1-14/igt@kms_flip@blocking-wf_vblank@a-hdmi-a4.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_139293v1/shard-dg1-14/igt@kms_flip@blocking-wf_vblank@a-hdmi-a4.html">FAI=
L</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pi=
pe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-mtlp-4/igt@kms_psr2_sf@fbc-psr2-curs=
or-plane-move-continuous-exceed-fully-sf@pipe-b-edp-1.html">INCOMPLETE</a> =
+3 other tests incomplete</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1:<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-tglu-3/igt@kms_flip@flip-vs-absolute-wf_vblank-interrup=
tible@a-hdmi-a1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-tglu-5/igt@kms_flip@fl=
ip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15461_full and Patchwork_1=
39293v1_full:</p>
<h3>New IGT tests (4)</h3>
<ul>
<li>
<p>igt@kms_plane_multiple@tiling-y@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.78] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.66] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.69] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.67] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139293v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-19/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-12=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15461/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-12/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-13/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15461/shard-dg1-13/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-19/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-19/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15461/shard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15461/shard-dg1-18/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-18/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15=
461/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_15461/shard-dg1-17/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-17/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461=
/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_15461/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-16/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/sh=
ard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_15461/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-14/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard=
-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_15461/shard-dg1-15/boot.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-15/boot.html">PASS</a>=
) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1392=
93v1/shard-dg1-19/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139293v1/shard-dg1-12/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-=
12/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_139293v1/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-12/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1392=
93v1/shard-dg1-13/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139293v1/shard-dg1-13/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-=
13/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_139293v1/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-14/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1392=
93v1/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139293v1/shard-dg1-15/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-=
15/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_139293v1/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-16/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1392=
93v1/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-=
17/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_139293v1/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-18/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1392=
93v1/shard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139293v1/shard-dg1-18/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-=
18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_139293v1/shard-dg1-19/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-19/boot.html">P=
ASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@device_reset@cold-reset-b=
ound.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@vcs1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@drm_fdinfo@busy@vcs1.html=
">SKIP</a> ([i915#8414]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-7/igt@fbdev@info.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@f=
bdev@info.html">SKIP</a> ([i915#1849] / [i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@gem_ccs@block-multicopy-c=
ompressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@gem_ccs@ctrl-surf-copy.ht=
ml">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@gem_ccs@suspend-resume.htm=
l">SKIP</a> ([i915#9323]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@gem_close_race@multigpu-b=
asic-process.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@gem_close_race@multigpu-ba=
sic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@gem_create@create-ext-cpu=
-access-big.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@gem_ctx_sseu@invalid-args.=
html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg1-18/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1=
-16/igt@gem_eio@hibernate.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@gem_exec_balancer@parallel=
-contexts.html">SKIP</a> ([i915#4525]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@gem_exec_capture@capture-r=
ecoverable.html">SKIP</a> ([i915#6344])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@gem_exec_fair@basic-none-=
share@rcs0.html">FAIL</a> ([i915#2842]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/sha=
rd-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk=
7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) +1 o=
ther test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-glk3/igt@gem_exec_fair@basic-pace-so=
lo.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-rkl-2/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v=
1/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]=
) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@gem_exec_flush@basic-uc-p=
ro-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +2 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-=
gtt.html">SKIP</a> ([i915#3281])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-mtlp-3/igt@gem_exec_reloc@basic-cpu-=
gtt.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-c=
pu-active.html">SKIP</a> ([i915#3281]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@gem_exec_reloc@basic-wc-g=
tt.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg2-1/igt@gem_exec_schedule@preempt-=
queue.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@smoketest-all:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-snb4/igt@gem_exec_schedule@smoketest=
-all.html">SKIP</a> +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@gem_fence_thrash@bo-copy.=
html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg2-1/igt@gem_fenced_exec_thrash@no-=
spare-fences-interruptible.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@gem_lmem_evict@dontneed-e=
vict-race.html">SKIP</a> ([i915#4613] / [i915#7582])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@gem_lmem_swapping@paralle=
l-multi.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@gem_lmem_swapping@parallel=
-random-verify.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@gem_lmem_swapping@verify-=
random-ccs.html">SKIP</a> ([i915#12193])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@gem_lmem_swapping@verify-=
random-ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-mtlp-4/igt@gem_media_fill@media-fill=
.html">SKIP</a> ([i915#8289])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy-odd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@gem_mmap_gtt@basic-small-=
copy-odd.html">SKIP</a> ([i915#4077]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-read-distinct:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg2-1/igt@gem_mmap_gtt@basic-write-r=
ead-distinct.html">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@gem_mmap_wc@set-cache-lev=
el.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@gem_partial_pwrite_pread@=
writes-after-reads-snoop.html">SKIP</a> ([i915#3282]) +3 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@gem_pxp@protected-raw-src-=
copy-not-readible.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-mtlp-1/igt@gem_pxp@protected-raw-src=
-copy-not-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@gem_pxp@verify-pxp-stale-=
ctx-execution.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@gem_readwrite@beyond-eob.h=
tml">SKIP</a> ([i915#3282]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@gem_set_tiling_vs_blt@tile=
d-to-untiled.html">SKIP</a> ([i915#8411])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-mtlp-1/igt@gem_set_tiling_vs_blt@til=
ed-to-untiled.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@gem_userptr_blits@coheren=
cy-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@gem_userptr_blits@map-fix=
ed-invalidate-overlap.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@gem_userptr_blits@relocat=
ions.html">SKIP</a> ([i915#3281] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@gen9_exec_parse@bb-oversi=
ze.html">SKIP</a> ([i915#2527] / [i915#2856]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@gen9_exec_parse@shadow-pee=
k.html">SKIP</a> ([i915#2527]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-mtlp-3/igt@gen9_exec_parse@unaligned=
-jump.html">SKIP</a> ([i915#2856])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg2-11/igt@gen9_exec_parse@unaligned=
-jump.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139293v1/shard-dg2-10/igt@i915_module_load@reload-with-fault-inject=
ion.html">ABORT</a> ([i915#9820])</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_139293v1/shard-dg1-14/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a> ([i915#9820])</li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_139293v1/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a> ([i915#10131] / [i915#9697])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-glk3/igt@i915_pm_rps@engine-order.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk1/igt=
@i915_pm_rps@engine-order.html">PASS</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk7/igt@i915_pm_rps@engi=
ne-order.html">FAIL</a> ([i915#12308])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@i915_selftest@mock.html">=
DMESG-WARN</a> ([i915#1982] / [i915#9311])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@i915_selftest@mock@memory=
_region.html">DMESG-WARN</a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-rkl-5/igt@i915_suspend@basic-s3-without-i915.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9293v1/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE<=
/a> ([i915#4817])</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@intel_hwmon@hwmon-read.htm=
l">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@intel_hwmon@hwmon-write.h=
tml">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-cursor-legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-8/igt@kms_atomic@plane-cursor-legacy.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293=
v1/shard-dg2-2/igt@kms_atomic@plane-cursor-legacy.html">SKIP</a> ([i915#919=
7]) +40 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-glk3/igt@kms_atomic_transition@plane=
-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@kms_big_fb@4-tiled-64bpp-=
rotate-0.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286]) +2 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([i915#4538] / [i915#5286]) +3 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg2-3/igt@kms_big_fb@y-tiled-8bpp-ro=
tate-270.html">SKIP</a> ([i915#4538] / [i915#5190])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_big_fb@y-tiled-8bpp-r=
otate-270.html">SKIP</a> ([i915#3638]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-mtlp-8/igt@kms_big_fb@y-tiled-8bpp-r=
otate-270.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-ro=
tate-90.html">SKIP</a> ([i915#3638]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-16bpp=
-rotate-180.html">SKIP</a> ([i915#4538]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-15/igt@kms_ccs@bad-aux-stride-4-=
tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html">SKIP</a> ([i915#6095]) +123 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_ccs@bad-aux-stride-y-=
tiled-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#6095]) +24 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +2 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg2-3/igt@kms_ccs@crc-primary-rotati=
on-180-y-tiled-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#10307] / [i915#609=
5]) +103 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-edp-1:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-mtlp-1/igt@kms_ccs@crc-primary-rotat=
ion-180-y-tiled-gen12-rc-ccs@pipe-a-edp-1.html">SKIP</a> ([i915#6095]) +4 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-4/igt@kms_ccs@missing-ccs-buffer=
-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#6095]) +66 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg2-3/igt@kms_ccs@random-ccs-data-4-=
tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_ccs@random-ccs-data-4=
-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-mtlp-8/igt@kms_ccs@random-ccs-data-4=
-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-multiple:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@kms_chamelium_frames@hdmi=
-crc-multiple.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_chamelium_frames@hdmi=
-crc-nonplanar-formats.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-mtlp-3/igt@kms_chamelium_hpd@vga-hpd=
.html">SKIP</a> ([i915#7828])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg2-11/igt@kms_chamelium_hpd@vga-hpd=
.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-=
fast.html">SKIP</a> ([i915#7828]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@kms_content_protection@dp-=
mst-type-0.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_content_protection@dp=
-mst-type-1.html">SKIP</a> ([i915#3299]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@kms_content_protection@lic=
-type-1.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_content_protection@typ=
e1.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_content_protection@ue=
vent.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_cursor_crc@cursor-ons=
creen-32x32.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@kms_cursor_crc@cursor-rand=
om-512x170.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_cursor_crc@cursor-ran=
dom-512x512.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_cursor_crc@cursor-rapi=
d-movement-32x10.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_cursor_crc@cursor-sli=
ding-32x10.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg2-3/igt@kms_cursor_crc@cursor-slid=
ing-512x512.html">SKIP</a> ([i915#11453])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_cursor_crc@cursor-sli=
ding-512x512.html">SKIP</a> ([i915#11453]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-mtlp-8/igt@kms_cursor_crc@cursor-sli=
ding-512x512.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103]) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions-varying-size.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_15461/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-a=
tomic-transitions-varying-size.html">PASS</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk8/igt@kms_cursor_=
legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915=
#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc.html">SKIP</a> ([i915#3555] / [i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_dp_aux_dev.html">SKIP=
</a> ([i915#1257])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_dsc@dsc-basic.html">SK=
IP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-mtlp-3/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a> ([i915#3840] / [i915#9688])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-8/igt@kms_fbcon_fbt@fbc.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-=
2/igt@kms_fbcon_fbt@fbc.html">SKIP</a> ([i915#1849])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.=
html">SKIP</a> ([i915#3955])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_feature_discovery@dis=
play-2x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@kms_feature_discovery@disp=
lay-3x.html">SKIP</a> ([i915#1839]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_feature_discovery@dp-=
mst.html">SKIP</a> ([i915#9337])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg2-3/igt@kms_flip@2x-flip-vs-pannin=
g-vs-hang.html">SKIP</a></li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_flip@2x-flip-vs-panni=
ng-vs-hang.html">SKIP</a> ([i915#9934])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-mtlp-8/igt@kms_flip@2x-flip-vs-panni=
ng-vs-hang.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_flip@2x-plain-flip.htm=
l">SKIP</a> +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@kms_flip@2x-plain-flip-fb=
-recreate-interruptible.html">SKIP</a> ([i915#3637]) +4 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-snb6/igt@kms_flip@2x-plain-flip-ts-check.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293=
v1/shard-snb6/igt@kms_flip@2x-plain-flip-ts-check.html">FAIL</a> ([i915#212=
2]) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-glk3/igt@kms_flip@2x-wf_vblank-ts-ch=
eck-interruptible.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@b-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg1-14/igt@kms_flip@blocking-wf_vblank@b-hdmi-a4.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_139293v1/shard-dg1-14/igt@kms_flip@blocking-wf_vblank@b-hdmi-a4.html">FAI=
L</a> ([i915#2122]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-tglu-3/igt@kms_flip@flip-vs-absolute-wf_vblank-interrup=
tible@c-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-5/igt@kms_flip@flip-vs-absolute=
-wf_vblank-interruptible@c-hdmi-a1.html">FAIL</a> ([i915#2122]) +3 other te=
sts fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-=
a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_139293v1/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible@a=
-hdmi-a2.html">INCOMPLETE</a> ([i915#4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-=
a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_139293v1/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible@b=
-hdmi-a1.html">INCOMPLETE</a> ([i915#4839]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-glk2/igt@kms_flip@flip-vs-wf_vblank-interruptible.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1546=
1/shard-glk9/igt@kms_flip@flip-vs-wf_vblank-interruptible.html">PASS</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1=
/shard-glk5/igt@kms_flip@flip-vs-wf_vblank-interruptible.html">FAIL</a> ([i=
915#2122]) +6 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@d-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-mtlp-8/igt@kms_flip@plain-flip-fb-recreate-interruptibl=
e@d-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_139293v1/shard-mtlp-7/igt@kms_flip@plain-flip-fb-recreate-=
interruptible@d-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-rkl-4/igt@kms_flip@plain-flip-ts-check.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1=
/shard-rkl-6/igt@kms_flip@plain-flip-ts-check.html">FAIL</a> ([i915#2122])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-6/igt@kms_flip@plain-flip-ts-che=
ck@a-hdmi-a2.html">FAIL</a> ([i915#11989])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> ([i915#2672] =
/ [i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bp=
p-4tiledg2rcccs-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_flip_scaled_=
crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915=
#3555]) +3 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#2672] / =
[i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</=
a> ([i915#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-downscaling.html">SKIP</a> ([i915#2672] / [=
i915#3555] / [i915#8813])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-downscaling.html">SKIP</a> ([i915#2672] / [i=
915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html">SKIP<=
/a> ([i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 ([i915#2672]) +4 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a=
> ([i915#2587] / [i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#2672] / [=
i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_frontbuffer_tracki=
ng@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) +16=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a> +15 other tests skip</=
li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([i915#1825])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg2-3/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprim=
ary.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_139293v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-indfb-sca=
ledprimary.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_frontbuffer_tracking@=
fbc-rgb565-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +9 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-cur-indfb-move.html">SKIP</a> ([i915#3023]) +16 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb101010-draw-blt.html">SKIP</a> ([i915#3458]) +5 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-mtlp-1/igt@kms_frontbuffer_tracking@=
fbcpsr-tiling-y.html">SKIP</a> ([i915#10055])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@kms_frontbuffer_tracking@=
psr-1p-offscren-pri-indfb-draw-render.html">SKIP</a> +40 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#4423] / [i915=
#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([i915#1825]) +23 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_hdr@invalid-hdr.html"=
>SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@kms_joiner@invalid-modeset=
-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@kms_panel_fitting@atomic-f=
astset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-10/igt@kms_plane@pixel-format.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shar=
d-dg2-2/igt@kms_plane@pixel-format.html">SKIP</a> ([i915#8825]) +1 other te=
st skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-8/igt@kms_plane_alpha_blend@alpha-basic.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139=
293v1/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-basic.html">SKIP</a> ([i9=
15#7294]) +1 other test skip</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-glk3/igt@kms_plane_alpha_blend@alpha=
-basic.html">FAIL</a> ([i915#12178])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-glk3/igt@kms_plane_alpha_blend@alpha=
-basic@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#7862]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-rotation.html">SKIP</a> ([i915#12247]) +5 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-modifiers.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_plane_scaling@plane=
-scaler-with-clipping-clamping-modifiers.html">SKIP</a> ([i915#3555] / [i91=
5#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@=
pipe-a:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-mtlp-3/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-pixel-formats@pipe-a.html">SKIP</a> ([i915#122=
47])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-modifiers.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_plane_scaling@plane-upsc=
ale-factor-0-25-with-modifiers.html">SKIP</a> ([i915#8152] / [i915#9423]) +=
1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c:</=
p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-modifiers@pipe-c.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_plane_scaling@pla=
ne-upscale-factor-0-25-with-modifiers@pipe-c.html">SKIP</a> ([i915#12247]) =
+20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d:</=
p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-modifiers@pipe-d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_plane_scaling@pla=
ne-upscale-factor-0-25-with-modifiers@pipe-d.html">SKIP</a> ([i915#8152]) +=
1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-7/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-rotation.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_plane_scaling@plane-upsca=
le-factor-0-25-with-rotation.html">SKIP</a> ([i915#12247] / [i915#8152] / [=
i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg2-1/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-unity-scaling.html">SKIP</a> ([i915#12247] / [i915#942=
3])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg2-1/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-unity-scaling@pipe-d.html">SKIP</a> ([i915#12247]) +3 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-5=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_139293v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor=
-0-5.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-20x20-downs=
cale-factor-0-5.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#3555=
] / [i915#6953] / [i915#8152] / [i915#9423]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#355=
5] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-5@pipe-b.html">SKIP</a> ([i915#12247]) +8 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-20x20-downs=
cale-factor-0-5@pipe-d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_plane_scaling@p=
lanes-upscale-20x20-downscale-factor-0-5@pipe-d.html">SKIP</a> ([i915#12247=
] / [i915#8152]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i=
915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-b:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#1224=
7]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@kms_pm_dc@dc6-psr.html">SK=
IP</a> ([i915#9685]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@kms_pm_lpsp@screens-disab=
led.html">SKIP</a> ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-8/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-d=
g2-2/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519]) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_pm_rpm@dpms-mode-unset=
-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-10/igt@kms_pm_rpm@i2c.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2=
/igt@kms_pm_rpm@i2c.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_pm_rpm@modeset-lpsp.h=
tml">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9293v1/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([=
i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-mtlp-3/igt@kms_pm_rpm@modeset-non-lp=
sp-stress-no-wait.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-8/igt@kms_pm_rpm@system-suspend-modeset.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139=
293v1/shard-dg2-2/igt@kms_pm_rpm@system-suspend-modeset.html">SKIP</a> ([i9=
15#3547])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_prime@basic-crc-hybri=
d.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-7/igt@kms_properties@crtc-properties-atomic.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_139293v1/shard-dg2-2/igt@kms_properties@crtc-properties-atomic.html">SKIP<=
/a> ([i915#11521])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pi=
pe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-mtlp-4/igt@kms_psr2_sf@fbc-psr2-curs=
or-plane-move-continuous-exceed-fully-sf@pipe-a-edp-1.html">SKIP</a> ([i915=
#9808])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_psr2_sf@fbc-psr2-curs=
or-plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +2 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf:<=
/p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-glk3/igt@kms_psr2_sf@fbc-psr2-overla=
y-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +2 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@kms_psr2_sf@psr2-overlay-p=
lane-update-continuous-sf.html">SKIP</a> ([i915#11520]) +5 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_psr2_sf@psr2-overlay-=
plane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +2 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_psr2_su@frontbuffer-x=
rgb8888.html">SKIP</a> ([i915#9683]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_psr2_su@page_flip-nv1=
2.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-no-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-2/igt@kms_psr@fbc-psr-no-drrs.h=
tml">SKIP</a> ([i915#9732]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-onoff:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_psr@psr-cursor-plane-=
onoff.html">SKIP</a> ([i915#1072] / [i915#9732]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-no-drrs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-glk3/igt@kms_psr@psr-no-drrs.html">S=
KIP</a> +41 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-1/igt@kms_psr@psr-sprite-plane-m=
ove.html">SKIP</a> ([i915#1072] / [i915#9732]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg2-3/igt@kms_psr@psr2-dpms.html">SK=
IP</a> ([i915#1072] / [i915#9732])</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-3/igt@kms_selftest@drm_framebuff=
er.html">ABORT</a> ([i915#12231]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-mtlp-4/igt@kms_setmode@basic@pipe-b-=
edp-1.html">FAIL</a> ([i915#5465]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_sysfs_edid_timing.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-=
dg2-4/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_tiled_display@basic-t=
est-pattern.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@kms_vrr@flip-basic-fastse=
t.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_vrr@negative-basic.ht=
ml">SKIP</a> ([i915#3555] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@kms_writeback@writeback-ch=
eck-output-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_writeback@writeback-f=
b-id.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@kms_writeback@writeback-p=
ixel-formats.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg1-17/igt@perf@per-context-mode-unp=
rivileged.html">SKIP</a> ([i915#2433])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139=
293v1/shard-dg2-1/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> ([i91=
5#4349]) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@perf_pmu@cpu-hotplug.html=
">SKIP</a> ([i915#8850])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-4/igt@perf_pmu@rc6@other-idle-g=
t0.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@prime_vgem@basic-write.htm=
l">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-rkl-5/igt@sriov_basic@enable-vfs-bin=
d-unbind-each-numvfs-all.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@fbdev@pan.html">SKIP</a> ([i915#2582]) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shar=
d-dg2-4/igt@fbdev@pan.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html">FAIL</a=
> ([i915#12027]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_139293v1/shard-rkl-1/igt@gem_ctx_engines@invalid-engines.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FA=
IL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_139293v1/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0=
.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_139293v1/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.htm=
l">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-glk4/igt@gen9_exec_parse@allowed-all.html">ABORT</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk1=
/igt@gen9_exec_parse@allowed-all.html">PASS</a>) ([i915#5566]) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk2=
/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-glk8/igt@gen9_exec_parse@allowed-single.html">ABORT</a>=
 ([i915#5566]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139293v1/shard-glk3/igt@gen9_exec_parse@allowed-single.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-accuracy:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-mtlp-1/igt@i915_pm_rc6_residency@rc6-accuracy.html">INC=
OMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_139293v1/shard-mtlp-3/igt@i915_pm_rc6_residency@rc6-accuracy.html">PAS=
S</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg1-13/igt@i915_pm_rpm@system-suspend-execbuf.html">DME=
SG-WARN</a> ([i915#4423]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_139293v1/shard-dg1-19/igt@i915_pm_rpm@system-suspend-exe=
cbuf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-4/igt@i915_selftest@live@active.html">ABORT</a> ([i=
915#12305]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_139293v1/shard-dg2-6/igt@i915_selftest@live@active.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-4/igt@i915_selftest@live@workarounds.html">DMESG-FA=
IL</a> ([i915#12304]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_139293v1/shard-dg2-6/igt@i915_selftest@live@workarounds.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@atomic-setmode:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_atomic_interruptible@atomic-setmode.html"=
>SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_atomic_interruptible@atomic-s=
etmode.html">PASS</a> +22 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FA=
IL</a> ([i915#5138]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_139293v1/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-180=
.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg1-12/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate=
-180.html">FAIL</a> ([i915#5138]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_139293v1/shard-dg1-13/igt@kms_big_fb@linear-max-=
hw-stride-32bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_15461/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions.html">FAIL</a>) ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_139293v1/shard-glk2/igt@kms_cursor_legacy@flip-=
vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-snb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_139293v1/shard-snb6/igt@kms_cursor_legacy@flip-v=
s-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fb_coherency@memset-crc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_fb_coherency@memset-crc.html">SKIP</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/=
shard-dg2-1/igt@kms_fb_coherency@memset-crc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-glk3/igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi=
-a2.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_15461/shard-glk4/igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2.h=
tml">PASS</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139293v1/shard-glk2/igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hd=
mi-a2.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hd=
mi-a2.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15461/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-=
a2.html">PASS</a>) ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139293v1/shard-glk1/igt@kms_flip@2x-plain-flip-ts=
-check@ac-hdmi-a1-hdmi-a2.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-rkl-2/igt@kms_flip@blocking-wf_vblank.html">FAIL</a> ([=
i915#10826]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_139293v1/shard-rkl-1/igt@kms_flip@blocking-wf_vblank.html">PASS</a></=
li>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-snb2/igt@kms_flip@blocking-wf_vblank.html">FAIL</a> ([i=
915#10826] / [i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_139293v1/shard-snb5/igt@kms_flip@blocking-wf_vblank.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@a-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-snb2/igt@kms_flip@blocking-wf_vblank@a-vga1.html">FAIL<=
/a> ([i915#10826]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_139293v1/shard-snb5/igt@kms_flip@blocking-wf_vblank@a-vga1.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble@a-vga1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-snb2/igt@kms_flip@flip-vs-a=
bsolute-wf_vblank-interruptible@a-vga1.html">PASS</a> +5 other tests pass</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@d-hdmi-a3:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupt=
ible@d-hdmi-a3.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-5/igt@kms_flip@flip=
-vs-absolute-wf_vblank-interruptible@d-hdmi-a3.html">PASS</a> +2 other test=
s pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-tglu-6/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a=
1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-tglu-3/igt@kms_flip@flip-vs-blocking=
-wf-vblank@a-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg1-14/igt@kms_flip@plain-flip-fb-recreate-interruptibl=
e@c-hdmi-a4.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg1-19/igt@kms_flip@plain-=
flip-fb-recreate-interruptible@c-hdmi-a4.html">PASS</a> +3 other tests pass=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-=
indfb-move.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_frontbuffer_t=
racking@fbc-1p-primscrn-cur-indfb-move.html">PASS</a> +5 other tests pass</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
shrfb-draw-blt.html">FAIL</a> ([i915#6880]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-6/igt@kms_frontbuff=
er_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb=
-msflip-blt.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_139293v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p=
-scndscrn-indfb-msflip-blt.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_invalid_mode@bad-vtotal.html">SKIP</a> ([=
i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_139293v1/shard-dg2-4/igt@kms_invalid_mode@bad-vtotal.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.ht=
ml">SKIP</a> ([i915#7294]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_plane_alpha_blend@alpha-tr=
ansparent-fb.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-rotation.html">SKIP</a> ([i915#3555] / [i915#8152] / [i915#9423]) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v=
1/shard-dg2-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rot=
ation.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-75.html">SKIP</a> ([i915#3555] / [i915#6953] / [i915#8152] / [=
i915#9423]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_139293v1/shard-dg2-4/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-c:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-75@pipe-c.html">SKIP</a> ([i915#12247]) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_=
plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-c.html">PASS<=
/a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-75@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-=
dg2-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe=
-d.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_pm_dc@dc9-dpms.html">FAIL</a> ([i915#7330=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1392=
93v1/shard-dg2-4/igt@kms_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> ([i915#93=
40]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9293v1/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a>=
 ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139293v1/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS<=
/a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP=
</a> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_139293v1/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html">=
SKIP</a> ([i915#11521]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_properties@plane-properties-l=
egacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-mtlp-8/igt@kms_vrr@negative-basic.html">FAIL</a> ([i915=
#10393]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_139293v1/shard-mtlp-5/igt@kms_vrr@negative-basic.html">PASS</a> +1 other =
test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-glk4/igt@gem_ctx_engines@invalid-engines.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-g=
lk5/igt@gem_ctx_engines@invalid-engines.html">PASS</a>) ([i915#12027]) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/sh=
ard-glk9/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12027])<=
/li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-6/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i91=
5#9311]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_139293v1/shard-dg2-11/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#=
1982] / [i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555]) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/=
shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-=
internal-panels.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-8/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139=
293v1/shard-dg2-2/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a> ([i9=
15#9197]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKI=
P</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_139293v1/shard-dg2-4/igt@kms_big_fb@x-tiled-32bpp-rotate-270.h=
tml">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate=
-0-async-flip.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@=
kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> (=
[i915#4538] / [i915#5190]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate=
-0-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@=
kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (=
[i915#5190] / [i915#9197]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-8/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> ([i9=
15#5190]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_139293v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> ([i915=
#5190] / [i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-10/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html=
">SKIP</a> ([i915#12313]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled=
-lnl-ccs.html">SKIP</a> ([i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs.html">SK=
IP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_139293v1/shard-dg2-4/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs=
.html">SKIP</a> ([i915#10307] / [i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-10/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs=
-cc.html">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_ccs@r=
andom-ccs-data-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> ([i915#9197]) +10 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-7/igt@kms_cdclk@plane-scaling.html">SKIP</a> ([i915=
#4087]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_139293v1/shard-dg2-2/igt@kms_cdclk@plane-scaling.html">SKIP</a> ([i915#919=
7])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-after-suspend:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-mtlp-2/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.htm=
l">INCOMPLETE</a> ([i915#2295]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_139293v1/shard-mtlp-4/igt@kms_chamelium_hpd@hdmi-h=
pd-after-suspend.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-8/igt@kms_content_protection@content-type-change.ht=
ml">SKIP</a> ([i915#9424]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_content_protection@content=
-type-change.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-10/igt@kms_content_protection@uevent.html">FAIL</a>=
 ([i915#1339] / [i915#7173]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_content_protection@ueven=
t.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-10/igt@kms_cursor_crc@cursor-random-512x512.html">S=
KIP</a> ([i915#11453]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x5=
12.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x512.=
html">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_cursor_crc@cursor-rapid-=
movement-512x512.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-10/igt@kms_cursor_crc@cursor-sliding-32x10.html">SK=
IP</a> ([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_139293v1/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-32x10.=
html">SKIP</a> ([i915#9197]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.ht=
ml">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_cursor_legacy@2x-flip-vs-c=
ursor-atomic.html">SKIP</a> ([i915#9197]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.htm=
l">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_cursor_legacy@cursorb-vs-fl=
ipb-atomic.html">SKIP</a> ([i915#5354]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotsp=
ot.html">SKIP</a> ([i915#9067]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-8/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> =
([i915#9833]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_139293v1/shard-dg2-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a=
> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-8/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP<=
/a> ([i915#8812]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_139293v1/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html"=
>SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i91=
5#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_139293v1/shard-dg2-4/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#3=
555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg1-16/igt@kms_flip@2x-plain-flip-fb-recreate-interrupt=
ible.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_139293v1/shard-dg1-12/igt@kms_flip@2x-plain-flip-fb-recreate-i=
nterruptible.html">SKIP</a> ([i915#9934]) +28 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-glk4/igt@kms_flip@blocking-wf_vblank.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk5/=
igt@kms_flip@blocking-wf_vblank.html">FAIL</a>) ([i915#2122]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-glk9/=
igt@kms_flip@blocking-wf_vblank.html">FAIL</a> ([i915#2122]) +3 other tests=
 fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-10/igt@kms_flip@plain-flip-fb-recreate-interruptibl=
e.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_flip@plain-flip-fb-rec=
reate-interruptible.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-6=
4bpp-yftile-downscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-1/igt@kms_=
flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP=
</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1=
/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscal=
ing.html">SKIP</a> ([i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bp=
p-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2=
/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html">=
SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp=
-ytile-downscaling.html">SKIP</a> ([i915#3555] / [i915#5190]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4=
/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html">=
SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-c=
ur-indfb-draw-pwrite.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_fro=
ntbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (=
[i915#3458]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-p=
ri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_fr=
ontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a>=
 ([i915#5354]) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-p=
ri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_fr=
ontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a>=
 ([i915#8708]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-dra=
w-pwrite.html">SKIP</a> ([i915#10433] / [i915#3458]) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-1/igt@kms_=
frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html">SKIP</a> ([i915#345=
8])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
indfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-2/igt@kms_fron=
tbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> ([i=
915#5354]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-=
indfb-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_139293v1/shard-dg2-4/igt@kms_fron=
tbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([i=
915#10433] / [i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a>=
 ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139293v1/shard-dg2-4/igt@kms_hdr@invalid-metadata-sizes.html">SKIP<=
/a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-7/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> =
([i915#3555] / [i915#8228]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_139293v1/shard-d">SKIP</a> ([i915#9197]) +1 other test=
 skip</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3800568771628348422==--
