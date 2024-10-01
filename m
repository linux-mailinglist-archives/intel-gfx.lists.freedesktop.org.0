Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFCC498BDAE
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 15:31:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28E8110E0F9;
	Tue,  1 Oct 2024 13:31:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CEA810E0F9;
 Tue,  1 Oct 2024 13:31:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5248055595043237242=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/display=3A_Workaro?=
 =?utf-8?q?und_for_odd_panning_for_planar_yuv_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nemesa Garg" <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 01 Oct 2024 13:31:14 -0000
Message-ID: <172778947442.1141969.12799309590860595417@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240930112343.2673244-1-nemesa.garg@intel.com>
In-Reply-To: <20240930112343.2673244-1-nemesa.garg@intel.com>
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

--===============5248055595043237242==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Workaround for odd panning for planar yuv (rev5)
URL   : https://patchwork.freedesktop.org/series/136416/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15461_full -> Patchwork_136416v5_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_136416v5_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_136416v5_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 8)
------------------------------

  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_136416v5_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-dg1:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-16/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-15/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-snb:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-snb4/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_whisper@basic-fds-all:
    - shard-mtlp:         NOTRUN -> [INCOMPLETE][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@gem_exec_whisper@basic-fds-all.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-3/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-hdmi-a3:
    - shard-dg1:          [PASS][6] -> [FAIL][7] +2 other tests fail
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-12/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-hdmi-a3.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-13/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-hdmi-a3.html

  * igt@kms_flip@flip-vs-wf_vblank-interruptible:
    - shard-glk:          ([PASS][8], [PASS][9]) -> [FAIL][10] +1 other test fail
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk9/igt@kms_flip@flip-vs-wf_vblank-interruptible.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk2/igt@kms_flip@flip-vs-wf_vblank-interruptible.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk4/igt@kms_flip@flip-vs-wf_vblank-interruptible.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][11] +1 other test skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@kms_joiner@basic-big-joiner.html

  * igt@prime_vgem@coherency-blt:
    - shard-glk:          NOTRUN -> [INCOMPLETE][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk6/igt@prime_vgem@coherency-blt.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_joiner@basic-force-ultra-joiner:
    - {shard-tglu-1}:     NOTRUN -> [SKIP][13] +1 other test skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-1/igt@kms_joiner@basic-force-ultra-joiner.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15461_full and Patchwork_136416v5_full:

### New IGT tests (1) ###

  * igt@kms_lease@lease-again@pipe-d-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  

Known issues
------------

  Here are the changes found in Patchwork_136416v5_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-dg1:          ([PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [FAIL][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37]) -> ([PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-15/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-12/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-12/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-12/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-13/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-13/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-14/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-14/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-14/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-15/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-15/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-16/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-16/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-16/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-16/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-17/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-17/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-17/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-18/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-18/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-18/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-19/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-19/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-19/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-19/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-19/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-19/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-13/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-13/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-13/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-14/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-14/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-14/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-15/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-15/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-15/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-15/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-16/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-16/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-16/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-16/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-17/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-17/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@cold-reset-bound:
    - shard-tglu:         NOTRUN -> [SKIP][63] ([i915#11078])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@busy@vcs1:
    - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#8414]) +11 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@drm_fdinfo@busy@vcs1.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-tglu:         NOTRUN -> [SKIP][65] ([i915#9323])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-dg1:          NOTRUN -> [SKIP][66] ([i915#3555] / [i915#9323])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#9323]) +1 other test skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][68] ([i915#7297])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-10/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-tglu:         NOTRUN -> [SKIP][69] ([i915#7697])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#7697])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-tglu:         NOTRUN -> [SKIP][71] ([i915#6335]) +1 other test skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_ctx_persistence@hang:
    - shard-snb:          NOTRUN -> [SKIP][72] ([i915#1099])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-snb4/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_persistence@hostile:
    - shard-tglu:         [PASS][73] -> [FAIL][74] ([i915#11980])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-tglu-5/igt@gem_ctx_persistence@hostile.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-9/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#280])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#4525]) +2 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-tglu:         NOTRUN -> [FAIL][77] ([i915#6117])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#6344])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_fair@basic-none-rrul:
    - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#4473] / [i915#4771])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@gem_exec_fair@basic-none-rrul.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglu:         NOTRUN -> [FAIL][80] ([i915#2842]) +5 other tests fail
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          NOTRUN -> [FAIL][81] ([i915#2842]) +4 other tests fail
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          ([PASS][82], [PASS][83]) -> [FAIL][84] ([i915#2842]) +1 other test fail
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-glk:          NOTRUN -> [FAIL][85] ([i915#2842]) +1 other test fail
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk7/igt@gem_exec_fair@basic-pace-solo.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg1:          NOTRUN -> [SKIP][86] ([i915#3539] / [i915#4852]) +2 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#3281])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-8/igt@gem_exec_reloc@basic-cpu-gtt.html
    - shard-mtlp:         NOTRUN -> [SKIP][88] ([i915#3281])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@gem_exec_reloc@basic-cpu-gtt.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#3281]) +12 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_reloc@basic-wc-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#3281]) +3 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@gem_exec_reloc@basic-wc-gtt.html

  * igt@gem_exec_schedule@preempt-queue:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#4537] / [i915#4812])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@gem_exec_schedule@preempt-queue.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg1:          [PASS][92] -> [ABORT][93] ([i915#7975] / [i915#8213]) +1 other test abort
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-17/igt@gem_exec_suspend@basic-s4-devices.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#4860])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#4860])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-tglu:         NOTRUN -> [SKIP][96] ([i915#4613] / [i915#7582])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#4613]) +1 other test skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][98] ([i915#12193])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@gem_lmem_swapping@verify-random-ccs.html
    - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#4613]) +4 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_lmem_swapping@verify-random-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#4565])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html

  * igt@gem_media_fill@media-fill:
    - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#8289])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-8/igt@gem_media_fill@media-fill.html

  * igt@gem_mmap_gtt@basic-small-copy-odd:
    - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#4077]) +2 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@gem_mmap_gtt@basic-small-copy-odd.html

  * igt@gem_mmap_gtt@basic-write-read-distinct:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#4077])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@gem_mmap_gtt@basic-write-read-distinct.html

  * igt@gem_mmap_wc@set-cache-level:
    - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#4083])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#3282]) +3 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#4270]) +3 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@gem_pxp@protected-raw-src-copy-not-readible.html
    - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#4270])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-2/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-tglu:         NOTRUN -> [SKIP][108] ([i915#4270])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_readwrite@beyond-eob:
    - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#3282]) +6 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@gem_readwrite@beyond-eob.html

  * igt@gem_render_copy@y-tiled-ccs-to-x-tiled:
    - shard-snb:          NOTRUN -> [SKIP][110] +15 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-snb4/igt@gem_render_copy@y-tiled-ccs-to-x-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#8411])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
    - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#4079])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][113] ([i915#3297]) +2 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#3297] / [i915#4880])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@relocations:
    - shard-dg1:          NOTRUN -> [SKIP][115] ([i915#3281] / [i915#3297])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@gem_userptr_blits@relocations.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#2527]) +4 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#2527] / [i915#2856]) +3 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@gen9_exec_parse@unaligned-jump.html
    - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#2856])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@gen9_exec_parse@unaligned-jump.html
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#2856])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-8/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [PASS][120] -> [ABORT][121] ([i915#9820])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html
    - shard-rkl:          [PASS][122] -> [ABORT][123] ([i915#9820])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-rkl-2/igt@i915_module_load@reload-with-fault-injection.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg1:          [PASS][124] -> [ABORT][125] ([i915#9820])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [PASS][126] -> [ABORT][127] ([i915#10131] / [i915#9820])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-tglu:         NOTRUN -> [SKIP][128] ([i915#8399])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_rps@engine-order:
    - shard-glk:          ([PASS][129], [PASS][130]) -> [FAIL][131] ([i915#12308])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk3/igt@i915_pm_rps@engine-order.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk1/igt@i915_pm_rps@engine-order.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk5/igt@i915_pm_rps@engine-order.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglu:         NOTRUN -> [SKIP][132] ([i915#4387])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@mock:
    - shard-tglu:         NOTRUN -> [DMESG-WARN][133] ([i915#9311]) +1 other test dmesg-warn
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@i915_selftest@mock.html

  * igt@i915_selftest@mock@memory_region:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][134] ([i915#9311]) +1 other test dmesg-warn
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@i915_selftest@mock@memory_region.html

  * igt@intel_hwmon@hwmon-read:
    - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#7707])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@intel_hwmon@hwmon-read.html

  * igt@intel_hwmon@hwmon-write:
    - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#7707])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@intel_hwmon@hwmon-write.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-glk:          NOTRUN -> [SKIP][137] ([i915#1769])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#5286]) +6 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#5286]) +4 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#4538] / [i915#5286]) +4 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#4538] / [i915#5190])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-7/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
    - shard-dg1:          NOTRUN -> [SKIP][142] ([i915#3638]) +2 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-16/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
    - shard-mtlp:         NOTRUN -> [SKIP][143] +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-3/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#3638]) +3 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#4538]) +2 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#10307] / [i915#6095]) +124 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-4/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#6095]) +47 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#12313])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][149] ([i915#6095]) +4 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-2/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-edp-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#6095]) +49 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#10307] / [i915#10434] / [i915#6095]) +6 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#12313])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-7/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
    - shard-dg1:          NOTRUN -> [SKIP][153] ([i915#12313])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-16/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][154] ([i915#12313]) +3 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
    - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#12313]) +1 other test skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#6095]) +96 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#3742])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#11616] / [i915#7213]) +3 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-8/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-tglu:         NOTRUN -> [SKIP][159] ([i915#7828]) +8 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
    - shard-dg1:          NOTRUN -> [SKIP][160] ([i915#7828]) +3 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html

  * igt@kms_chamelium_hpd@vga-hpd:
    - shard-mtlp:         NOTRUN -> [SKIP][161] ([i915#7828])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@kms_chamelium_hpd@vga-hpd.html
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#7828])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-8/igt@kms_chamelium_hpd@vga-hpd.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#7828]) +6 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][164] ([i915#3116] / [i915#3299]) +1 other test skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#3116])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg1:          NOTRUN -> [SKIP][166] ([i915#3299]) +1 other test skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#9424]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@type1:
    - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#7118] / [i915#9424])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent:
    - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-dg1:          NOTRUN -> [SKIP][170] ([i915#3555]) +1 other test skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#11453]) +1 other test skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#11453])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#3555]) +6 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#3555]) +5 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#11453])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-7/igt@kms_cursor_crc@cursor-sliding-512x512.html
    - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#11453]) +1 other test skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-16/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          ([PASS][177], [PASS][178]) -> [FAIL][179] ([i915#72])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#4103]) +1 other test skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#8588])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#3555] / [i915#3804])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#3804])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dp_aux_dev:
    - shard-dg1:          NOTRUN -> [SKIP][184] ([i915#1257])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@kms_dp_aux_dev.html
    - shard-tglu:         NOTRUN -> [SKIP][185] ([i915#1257])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@kms_dp_aux_dev.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#3555] / [i915#3840])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-tglu:         NOTRUN -> [SKIP][187] ([i915#3840])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-mtlp:         NOTRUN -> [SKIP][188] ([i915#3840] / [i915#9688])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][189] ([i915#9878])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#3955])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@display-2x:
    - shard-dg1:          NOTRUN -> [SKIP][191] ([i915#1839])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@display-3x:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#1839]) +1 other test skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-tglu:         NOTRUN -> [SKIP][193] ([i915#9337])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][194] ([i915#3637]) +5 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@kms_flip@2x-blocking-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-dg2:          NOTRUN -> [SKIP][195]
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-7/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
    - shard-mtlp:         NOTRUN -> [SKIP][196] ([i915#3637])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-3/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-modeset-vs-vblank-race@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][197] -> [FAIL][198] ([i915#10826]) +1 other test fail
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-snb7/igt@kms_flip@2x-modeset-vs-vblank-race@ab-vga1-hdmi-a1.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-snb6/igt@kms_flip@2x-modeset-vs-vblank-race@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          NOTRUN -> [SKIP][199] +22 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-glk:          NOTRUN -> [FAIL][200] ([i915#2122]) +1 other test fail
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk7/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@blocking-wf_vblank@b-hdmi-a1:
    - shard-tglu:         [PASS][201] -> [FAIL][202] ([i915#2122]) +1 other test fail
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-tglu-7/igt@kms_flip@blocking-wf_vblank@b-hdmi-a1.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@kms_flip@blocking-wf_vblank@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-dg1:          [PASS][203] -> [FAIL][204] ([i915#2122]) +3 other tests fail
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-12/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-13/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1:
    - shard-snb:          [PASS][205] -> [FAIL][206] ([i915#2122]) +3 other tests fail
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-snb2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-dg1:          NOTRUN -> [ABORT][207] ([i915#4423]) +1 other test abort
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][208] ([i915#9878])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk9/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-tglu:         NOTRUN -> [FAIL][209] ([i915#2122]) +1 other test fail
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
    - shard-glk:          ([PASS][210], [PASS][211]) -> [FAIL][212] ([i915#2122]) +2 other tests fail
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk5/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@d-edp1:
    - shard-mtlp:         [PASS][213] -> [FAIL][214] ([i915#2122])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-mtlp-8/igt@kms_flip@plain-flip-fb-recreate-interruptible@d-edp1.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-7/igt@kms_flip@plain-flip-fb-recreate-interruptible@d-edp1.html

  * igt@kms_flip@wf_vblank-ts-check:
    - shard-dg2:          [PASS][215] -> [SKIP][216] ([i915#5354]) +1 other test skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-4/igt@kms_flip@wf_vblank-ts-check.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_flip@wf_vblank-ts-check.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-dg1:          NOTRUN -> [SKIP][217] ([i915#2672] / [i915#3555]) +2 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][218] ([i915#2672] / [i915#3555]) +1 other test skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-upscaling:
    - shard-dg2:          [PASS][219] -> [SKIP][220] ([i915#3555]) +1 other test skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-upscaling.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][221] ([i915#2672] / [i915#3555] / [i915#8813])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html
    - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#2672] / [i915#3555])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][223] ([i915#2672])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#2672]) +4 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
    - shard-dg1:          NOTRUN -> [SKIP][225] ([i915#2587] / [i915#2672]) +2 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-16/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][226] ([i915#2587] / [i915#2672] / [i915#3555])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][227] ([i915#2587] / [i915#2672]) +2 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][228] ([i915#2672]) +3 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#2672] / [i915#3555]) +3 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#5354]) +1 other test skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][231] +17 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html
    - shard-mtlp:         NOTRUN -> [SKIP][232] ([i915#1825]) +2 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][233] ([i915#8708]) +9 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][234] ([i915#8708])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-tglu:         NOTRUN -> [SKIP][235] +78 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][236] ([i915#3458]) +5 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#3023]) +22 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#5439])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-mtlp:         NOTRUN -> [SKIP][239] ([i915#10055])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][240] ([i915#1825]) +33 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_hdr@invalid-hdr:
    - shard-dg1:          NOTRUN -> [SKIP][241] ([i915#3555] / [i915#8228])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-tglu:         NOTRUN -> [SKIP][242] ([i915#3555] / [i915#8228]) +1 other test skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][243] ([i915#6301])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane_alpha_blend@alpha-basic:
    - shard-glk:          NOTRUN -> [FAIL][244] ([i915#12178])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk7/igt@kms_plane_alpha_blend@alpha-basic.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][245] ([i915#7862]) +1 other test fail
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk7/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1.html

  * igt@kms_plane_alpha_blend@constant-alpha-min:
    - shard-dg2:          [PASS][246] -> [SKIP][247] ([i915#7294])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-4/igt@kms_plane_alpha_blend@constant-alpha-min.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-min.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][248] ([i915#8292]) +1 other test fail
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:
    - shard-rkl:          NOTRUN -> [SKIP][249] ([i915#12247]) +8 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b:
    - shard-mtlp:         NOTRUN -> [SKIP][250] ([i915#12247]) +1 other test skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling:
    - shard-dg2:          NOTRUN -> [SKIP][251] ([i915#12247] / [i915#8152] / [i915#9423])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#12247]) +2 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][253] ([i915#12247] / [i915#8152])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-tglu:         NOTRUN -> [SKIP][254] ([i915#12247] / [i915#3555] / [i915#6953])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b:
    - shard-tglu:         NOTRUN -> [SKIP][255] ([i915#12247]) +8 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-dg1:          NOTRUN -> [SKIP][256] ([i915#12247] / [i915#6953])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b:
    - shard-dg1:          NOTRUN -> [SKIP][257] ([i915#12247]) +3 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][258] ([i915#5354])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu:         NOTRUN -> [SKIP][259] ([i915#9685])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-rkl:          NOTRUN -> [SKIP][260] ([i915#9685]) +1 other test skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-tglu:         NOTRUN -> [SKIP][261] ([i915#8430])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          [PASS][262] -> [SKIP][263] ([i915#9519]) +3 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-8/igt@kms_pm_rpm@dpms-lpsp.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-3/igt@kms_pm_rpm@dpms-lpsp.html
    - shard-rkl:          [PASS][264] -> [SKIP][265] ([i915#9519]) +2 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-1/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][266] ([i915#9519])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg1:          NOTRUN -> [SKIP][267] ([i915#9519])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-tglu:         NOTRUN -> [SKIP][268] ([i915#9519])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
    - shard-mtlp:         NOTRUN -> [SKIP][269] ([i915#9519])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][270] ([i915#6524])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@d3hot:
    - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#6524])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@kms_prime@d3hot.html

  * igt@kms_properties@plane-properties-atomic:
    - shard-dg2:          [PASS][272] -> [SKIP][273] ([i915#11521])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-4/igt@kms_properties@plane-properties-atomic.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-glk:          NOTRUN -> [SKIP][274] ([i915#11520]) +2 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk7/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][275] ([i915#11520]) +5 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][276] ([i915#11520]) +8 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-dg1:          NOTRUN -> [SKIP][277] ([i915#11520]) +2 other tests skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-dg1:          NOTRUN -> [SKIP][278] ([i915#9683])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-tglu:         NOTRUN -> [SKIP][279] ([i915#9683]) +2 other tests skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr-no-drrs:
    - shard-tglu:         NOTRUN -> [SKIP][280] ([i915#9732]) +15 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_psr@fbc-psr-no-drrs.html

  * igt@kms_psr@fbc-psr2-dpms:
    - shard-mtlp:         NOTRUN -> [SKIP][281] ([i915#9688]) +1 other test skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@kms_psr@fbc-psr2-dpms.html

  * igt@kms_psr@psr-cursor-plane-onoff:
    - shard-dg1:          NOTRUN -> [SKIP][282] ([i915#1072] / [i915#9732]) +8 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@kms_psr@psr-cursor-plane-onoff.html

  * igt@kms_psr@psr-no-drrs:
    - shard-glk:          NOTRUN -> [SKIP][283] +42 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk7/igt@kms_psr@psr-no-drrs.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-rkl:          NOTRUN -> [SKIP][284] ([i915#1072] / [i915#9732]) +20 other tests skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_psr@psr2-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][285] ([i915#1072] / [i915#9732])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-7/igt@kms_psr@psr2-dpms.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-rkl:          NOTRUN -> [ABORT][286] ([i915#12231]) +1 other test abort
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2:
    - shard-glk:          ([PASS][287], [PASS][288]) -> [FAIL][289] ([i915#5465]) +6 other tests fail
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk6/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk9/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk7/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          [PASS][290] -> [FAIL][291] ([IGT#2])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_sysfs_edid_timing.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_sysfs_edid_timing.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-tglu:         NOTRUN -> [SKIP][292] ([i915#8623])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_universal_plane@cursor-fb-leak:
    - shard-mtlp:         [PASS][293] -> [FAIL][294] ([i915#9196]) +1 other test fail
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak.html

  * igt@kms_vblank@crtc-id:
    - shard-dg2:          NOTRUN -> [SKIP][295] ([i915#9197]) +2 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_vblank@crtc-id.html

  * igt@kms_vblank@ts-continuation-dpms-suspend:
    - shard-dg2:          [PASS][296] -> [SKIP][297] ([i915#9197]) +14 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-6/igt@kms_vblank@ts-continuation-dpms-suspend.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_vblank@ts-continuation-dpms-suspend.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-tglu:         NOTRUN -> [SKIP][298] ([i915#9906])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@negative-basic:
    - shard-dg1:          NOTRUN -> [SKIP][299] ([i915#3555] / [i915#9906])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-rkl:          NOTRUN -> [SKIP][300] ([i915#2437] / [i915#9412])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-dg1:          NOTRUN -> [SKIP][301] ([i915#2437])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@kms_writeback@writeback-fb-id.html
    - shard-tglu:         NOTRUN -> [SKIP][302] ([i915#2437])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-dg1:          NOTRUN -> [SKIP][303] ([i915#2437] / [i915#9412])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-dg1:          NOTRUN -> [SKIP][304] ([i915#2433])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@perf@per-context-mode-unprivileged.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][305] ([i915#2433])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@perf@unprivileged-single-ctx-counters.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [PASS][306] -> [FAIL][307] ([i915#4349]) +4 other tests fail
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-4/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-tglu:         NOTRUN -> [SKIP][308] ([i915#8850])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@perf_pmu@cpu-hotplug.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-tglu:         NOTRUN -> [SKIP][309] ([i915#8516])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-write:
    - shard-rkl:          NOTRUN -> [SKIP][310] ([i915#3291] / [i915#3708])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-rkl:          NOTRUN -> [SKIP][311] ([i915#3708])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@prime_vgem@fence-flip-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-tglu:         NOTRUN -> [SKIP][312] ([i915#9917])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-rkl:          NOTRUN -> [SKIP][313] ([i915#9917])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
#### Possible fixes ####

  * igt@fbdev@pan:
    - shard-dg2:          [SKIP][314] ([i915#2582]) -> [PASS][315]
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@fbdev@pan.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@fbdev@pan.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [INCOMPLETE][316] ([i915#7297]) -> [PASS][317]
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_exec_balancer@nop:
    - shard-mtlp:         [DMESG-WARN][318] -> [PASS][319]
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-mtlp-2/igt@gem_exec_balancer@nop.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-8/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         [FAIL][320] ([i915#2842]) -> [PASS][321] +1 other test pass
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [FAIL][322] ([i915#2842]) -> [PASS][323] +1 other test pass
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          ([PASS][324], [ABORT][325]) ([i915#5566]) -> [PASS][326]
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk1/igt@gen9_exec_parse@allowed-all.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk4/igt@gen9_exec_parse@allowed-all.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk8/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [ABORT][327] ([i915#5566]) -> [PASS][328]
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk8/igt@gen9_exec_parse@allowed-single.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - shard-mtlp:         [INCOMPLETE][329] -> [PASS][330] +1 other test pass
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-mtlp-1/igt@i915_pm_rc6_residency@rc6-accuracy.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@i915_pm_rc6_residency@rc6-accuracy.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-dg1:          [DMESG-WARN][331] ([i915#4423]) -> [PASS][332]
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-13/igt@i915_pm_rpm@system-suspend-execbuf.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_selftest@live@active:
    - shard-dg2:          [ABORT][333] ([i915#12305]) -> [PASS][334]
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-4/igt@i915_selftest@live@active.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-7/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@workarounds:
    - shard-dg2:          [DMESG-FAIL][335] ([i915#12304]) -> [PASS][336]
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-4/igt@i915_selftest@live@workarounds.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-7/igt@i915_selftest@live@workarounds.html

  * igt@kms_atomic_interruptible@atomic-setmode:
    - shard-dg2:          [SKIP][337] ([i915#9197]) -> [PASS][338] +22 other tests pass
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_atomic_interruptible@atomic-setmode.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_atomic_interruptible@atomic-setmode.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [FAIL][339] ([i915#5138]) -> [PASS][340] +1 other test pass
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180:
    - shard-dg1:          [FAIL][341] ([i915#5138]) -> [PASS][342]
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-12/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-13/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-snb:          [FAIL][343] -> [PASS][344]
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-snb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-snb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fb_coherency@memset-crc:
    - shard-dg2:          [SKIP][345] -> [PASS][346]
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_fb_coherency@memset-crc.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-3/igt@kms_fb_coherency@memset-crc.html

  * igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          ([FAIL][347], [PASS][348]) -> [PASS][349] +3 other tests pass
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk3/igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk4/igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk8/igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          ([PASS][350], [FAIL][351]) ([i915#2122]) -> [PASS][352] +2 other tests pass
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@blocking-wf_vblank@b-hdmi-a1:
    - shard-rkl:          [FAIL][353] ([i915#10826]) -> [PASS][354] +1 other test pass
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-rkl-2/igt@kms_flip@blocking-wf_vblank@b-hdmi-a1.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_flip@blocking-wf_vblank@b-hdmi-a1.html
    - shard-snb:          [FAIL][355] ([i915#2122]) -> [PASS][356] +1 other test pass
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-snb2/igt@kms_flip@blocking-wf_vblank@b-hdmi-a1.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-snb1/igt@kms_flip@blocking-wf_vblank@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-dg2:          [FAIL][357] ([i915#2122]) -> [PASS][358] +5 other tests pass
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-11/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1:
    - shard-tglu:         [FAIL][359] ([i915#2122]) -> [PASS][360] +1 other test pass
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-tglu-6/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a2:
    - shard-glk:          [INCOMPLETE][361] ([i915#4839]) -> [PASS][362] +2 other tests pass
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk4/igt@kms_flip@flip-vs-suspend@b-hdmi-a2.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk6/igt@kms_flip@flip-vs-suspend@b-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-rkl:          [FAIL][363] ([i915#2122]) -> [PASS][364]
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-rkl-3/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][365] ([i915#5354]) -> [PASS][366] +5 other tests pass
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-dg2:          [FAIL][367] ([i915#6880]) -> [PASS][368]
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:
    - shard-snb:          [SKIP][369] -> [PASS][370] +13 other tests pass
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html

  * igt@kms_invalid_mode@bad-vtotal:
    - shard-dg2:          [SKIP][371] ([i915#3555]) -> [PASS][372]
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_invalid_mode@bad-vtotal.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_invalid_mode@bad-vtotal.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-dg2:          [SKIP][373] ([i915#7294]) -> [PASS][374]
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-dg2:          [SKIP][375] ([i915#3555] / [i915#8152] / [i915#9423]) -> [PASS][376]
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
    - shard-dg2:          [SKIP][377] ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][378]
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-c:
    - shard-dg2:          [SKIP][379] ([i915#12247]) -> [PASS][380] +5 other tests pass
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-c.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-c.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d:
    - shard-dg2:          [SKIP][381] ([i915#12247] / [i915#8152]) -> [PASS][382] +1 other test pass
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-dg2:          [FAIL][383] ([i915#7330]) -> [PASS][384]
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_pm_dc@dc9-dpms.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          [SKIP][385] ([i915#9340]) -> [PASS][386]
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-3/igt@kms_pm_lpsp@kms-lpsp.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-8/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [SKIP][387] ([i915#9519]) -> [PASS][388] +1 other test pass
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [SKIP][389] ([i915#9519]) -> [PASS][390]
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_properties@plane-properties-legacy:
    - shard-dg2:          [SKIP][391] ([i915#11521]) -> [PASS][392]
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_properties@plane-properties-legacy.html

  * igt@kms_vrr@negative-basic:
    - shard-mtlp:         [FAIL][393] ([i915#10393]) -> [PASS][394] +1 other test pass
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-mtlp-8/igt@kms_vrr@negative-basic.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-5/igt@kms_vrr@negative-basic.html

  
#### Warnings ####

  * igt@gem_ctx_engines@invalid-engines:
    - shard-glk:          ([PASS][395], [FAIL][396]) ([i915#12027]) -> [FAIL][397] ([i915#12027])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk5/igt@gem_ctx_engines@invalid-engines.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk4/igt@gem_ctx_engines@invalid-engines.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk6/igt@gem_ctx_engines@invalid-engines.html

  * igt@i915_selftest@mock:
    - shard-dg2:          [DMESG-WARN][398] ([i915#9311]) -> [DMESG-WARN][399] ([i915#1982] / [i915#9311])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-6/igt@i915_selftest@mock.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-8/igt@i915_selftest@mock.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          [SKIP][400] ([i915#1769] / [i915#3555]) -> [SKIP][401] ([i915#9197])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-4/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          [SKIP][402] ([i915#9197]) -> [SKIP][403] +1 other test skip
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-dg2:          [SKIP][404] ([i915#4538] / [i915#5190]) -> [SKIP][405] ([i915#5190] / [i915#9197]) +3 other tests skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-6/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-dg2:          [SKIP][406] ([i915#5190] / [i915#9197]) -> [SKIP][407] ([i915#4538] / [i915#5190]) +4 other tests skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs:
    - shard-dg2:          [SKIP][408] ([i915#9197]) -> [SKIP][409] ([i915#10307] / [i915#6095]) +4 other tests skip
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs.html

  * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs:
    - shard-dg2:          [SKIP][410] ([i915#10307] / [i915#6095]) -> [SKIP][411] ([i915#9197]) +1 other test skip
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs.html

  * igt@kms_chamelium_hpd@hdmi-hpd-after-suspend:
    - shard-mtlp:         [INCOMPLETE][412] ([i915#2295]) -> [SKIP][413] ([i915#7828])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-mtlp-2/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          [SKIP][414] ([i915#7118] / [i915#9424]) -> [SKIP][415] ([i915#9197]) +1 other test skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-4/igt@kms_content_protection@atomic-dpms.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@srm:
    - shard-snb:          [SKIP][416] -> [INCOMPLETE][417] ([i915#8816])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-snb7/igt@kms_content_protection@srm.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-snb2/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          [SKIP][418] ([i915#11453]) -> [SKIP][419] ([i915#9197])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-4/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-dg2:          [SKIP][420] ([i915#9197]) -> [SKIP][421] ([i915#11453])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-dg2:          [SKIP][422] ([i915#5354]) -> [SKIP][423] ([i915#9197]) +1 other test skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-dg2:          [SKIP][424] ([i915#9197]) -> [SKIP][425] ([i915#5354]) +2 other tests skip
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          ([FAIL][426], [PASS][427]) ([i915#2346]) -> [FAIL][428] ([i915#2346])
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg2:          [SKIP][429] ([i915#9833]) -> [SKIP][430] ([i915#9197])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          [SKIP][431] ([i915#8812]) -> [SKIP][432] ([i915#9197])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-4/igt@kms_draw_crc@draw-method-mmap-wc.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-dg2:          [SKIP][433] ([i915#9197]) -> [SKIP][434] ([i915#3555] / [i915#3840])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_dsc@dsc-with-formats.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          ([FAIL][435], [PASS][436]) ([i915#2122]) -> [FAIL][437] ([i915#2122]) +4 other tests fail
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@blocking-wf_vblank:
    - shard-dg2:          [FAIL][438] ([i915#2122]) -> [SKIP][439] ([i915#5354])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-6/igt@kms_flip@blocking-wf_vblank.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_flip@blocking-wf_vblank.html
    - shard-snb:          [FAIL][440] ([i915#10826] / [i915#2122]) -> [FAIL][441] ([i915#2122])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-snb2/igt@kms_flip@blocking-wf_vblank.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-snb1/igt@kms_flip@blocking-wf_vblank.html

  * igt@kms_flip@blocking-wf_vblank@a-hdmi-a1:
    - shard-glk:          ([FAIL][442], [PASS][443]) -> [FAIL][444] ([i915#2122])
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk5/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk4/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk6/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html

  * igt@kms_flip@blocking-wf_vblank@a-vga1:
    - shard-snb:          [FAIL][445] ([i915#10826]) -> [FAIL][446] ([i915#2122])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-snb2/igt@kms_flip@blocking-wf_vblank@a-vga1.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-snb1/igt@kms_flip@blocking-wf_vblank@a-vga1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-snb:          [FAIL][447] ([i915#2122]) -> [FAIL][448] ([i915#10826] / [i915#2122])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-snb2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1:
    - shard-snb:          [FAIL][449] ([i915#2122]) -> [FAIL][450] ([i915#10826])
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-snb2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
    - shard-dg2:          [SKIP][451] ([i915#3555]) -> [SKIP][452] ([i915#2672] / [i915#3555]) +1 other test skip
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-dg2:          [SKIP][453] ([i915#3555] / [i915#5190]) -> [SKIP][454] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][455] ([i915#5354]) -> [SKIP][456] ([i915#3458]) +9 other tests skip
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt:
    - shard-dg2:          [SKIP][457] ([i915#3458]) -> [SKIP][458] ([i915#5354]) +1 other test skip
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][459] ([i915#5354]) -> [SKIP][460] ([i915#8708]) +7 other tests skip
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
    - shard-dg2:          [SKIP][461] ([i915#10433] / [i915#3458]) -> [SKIP][462] ([i915#5354])
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-dg2:          [SKIP][463] ([i915#3458]) -> [SKIP][464] ([i915#10433] / [i915#3458]) +1 other test skip
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][465] ([i915#8708]) -> [SKIP][466] ([i915#5354]) +4 other tests skip
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          [SKIP][467] ([i915#9197]) -> [SKIP][468] ([i915#3555] / [i915#8228])
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_hdr@invalid-metadata-sizes.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-11/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg2:          [SKIP][469] ([i915#3555] / [i915#8228]) -> [SKIP][470] ([i915#9197])
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-4/igt@kms_hdr@static-toggle-dpms.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-dg2:          [SKIP][471] ([i915#9197]) -> [SKIP][472] ([i915#3555] / [i915#8821])
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg2-2/igt@kms_plane_lowres@tiling-yf.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          [SKIP][473] ([i915#9197]) -> [SKIP][474] ([i915#8806])
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/index.html

--===============5248055595043237242==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Workaround for odd panning=
 for planar yuv (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/136416/">https://patchwork.freedesktop.org/series/136416/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_136416v5/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_136416v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15461_full -&gt; Patchwork_136416v=
5_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_136416v5_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_136416v5_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 8)</h2>
<p>Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
136416v5_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg1-16/igt@gem_ctx_isolation@preservation-s3@vcs0.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_136416v5/shard-dg1-15/igt@gem_ctx_isolation@preservation-s3@vcs0.html">I=
NCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-snb4/igt@gem_exec_flush@basic-uc-prw=
-default.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@gem_exec_whisper@basic-fd=
s-all.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-mtlp-3/igt@kms_cursor_crc@cursor-sli=
ding-512x512.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-hdmi-a3:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg1-12/igt@kms_flip@flip-vs-absolute-wf_vblank-interrup=
tible@c-hdmi-a3.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-13/igt@kms_flip@flip-vs-absolute=
-wf_vblank-interruptible@c-hdmi-a3.html">FAIL</a> +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-glk9/igt@kms_flip@flip-vs-wf_vblank-interruptible.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1546=
1/shard-glk2/igt@kms_flip@flip-vs-wf_vblank-interruptible.html">PASS</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5=
/shard-glk4/igt@kms_flip@flip-vs-wf_vblank-interruptible.html">FAIL</a> +1 =
other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@kms_joiner@basic-big-joine=
r.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-blt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-glk6/igt@prime_vgem@coherency-blt.ht=
ml">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_joiner@basic-force-ultra-joiner:<ul>
<li>{shard-tglu-1}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-1/igt@kms_joiner@basic-force-ul=
tra-joiner.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15461_full and Patchwork_1=
36416v5_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_lease@lease-again@pipe-d-hdmi-a-2:<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_136416v5_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-12/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-12=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15461/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-13/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-13/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15461/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-14/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-14/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15461/shard-dg1-15/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15461/shard-dg1-15/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-16/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15=
461/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_15461/shard-dg1-16/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-16/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461=
/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_15461/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-17/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/sh=
ard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_15461/shard-dg1-18/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-18/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard=
-dg1-19/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_15461/shard-dg1-19/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-dg1-19/boot.html">PASS</a>=
) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1364=
16v5/shard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-=
18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_136416v5/shard-dg1-19/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-19/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1364=
16v5/shard-dg1-19/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-=
12/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_136416v5/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-13/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1364=
16v5/shard-dg1-13/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_136416v5/shard-dg1-13/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-=
14/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_136416v5/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-14/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1364=
16v5/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_136416v5/shard-dg1-15/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-=
15/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_136416v5/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-16/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1364=
16v5/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_136416v5/shard-dg1-16/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-=
16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_136416v5/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg1-17/boot.html">P=
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
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@device_reset@cold-reset-b=
ound.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@vcs1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@drm_fdinfo@busy@vcs1.html=
">SKIP</a> ([i915#8414]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@gem_ccs@block-multicopy-c=
ompressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@gem_ccs@ctrl-surf-copy.ht=
ml">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@gem_ccs@suspend-resume.htm=
l">SKIP</a> ([i915#9323]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg2-10/igt@gem_ccs@suspend-resume@ti=
le64-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@gem_close_race@multigpu-b=
asic-process.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@gem_close_race@multigpu-ba=
sic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@gem_create@create-ext-cpu=
-access-sanity-check.html">SKIP</a> ([i915#6335]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-snb4/igt@gem_ctx_persistence@hang.ht=
ml">SKIP</a> ([i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-tglu-5/igt@gem_ctx_persistence@hostile.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5=
/shard-tglu-9/igt@gem_ctx_persistence@hostile.html">FAIL</a> ([i915#11980])=
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@gem_ctx_sseu@invalid-args.=
html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@gem_exec_balancer@parallel=
-contexts.html">SKIP</a> ([i915#4525]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@gem_exec_balancer@paralle=
l-ordering.html">FAIL</a> ([i915#6117])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@gem_exec_capture@capture-r=
ecoverable.html">SKIP</a> ([i915#6344])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@gem_exec_fair@basic-none-=
rrul.html">SKIP</a> ([i915#4473] / [i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@gem_exec_fair@basic-none-=
share@rcs0.html">FAIL</a> ([i915#2842]) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@gem_exec_fair@basic-none@b=
cs0.html">FAIL</a> ([i915#2842]) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/sha=
rd-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk=
5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) +1 o=
ther test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-glk7/igt@gem_exec_fair@basic-pace-so=
lo.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@gem_exec_flush@basic-uc-p=
ro-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +2 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg2-8/igt@gem_exec_reloc@basic-cpu-g=
tt.html">SKIP</a> ([i915#3281])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@gem_exec_reloc@basic-cpu-=
gtt.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-w=
c-noreloc.html">SKIP</a> ([i915#3281]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@gem_exec_reloc@basic-wc-g=
tt.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@gem_exec_schedule@preempt-=
queue.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg1-17/igt@gem_exec_suspend@basic-s4-devices.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
6416v5/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a> (=
[i915#7975] / [i915#8213]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@gem_fence_thrash@bo-copy.=
html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@gem_fenced_exec_thrash@no-=
spare-fences-interruptible.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@gem_lmem_evict@dontneed-e=
vict-race.html">SKIP</a> ([i915#4613] / [i915#7582])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@gem_lmem_swapping@parallel=
-random-verify.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@gem_lmem_swapping@verify-=
random-ccs.html">SKIP</a> ([i915#12193])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@gem_lmem_swapping@verify-=
random-ccs.html">SKIP</a> ([i915#4613]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@gem_lmem_swapping@verify-=
random-ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-mtlp-8/igt@gem_media_fill@media-fill=
.html">SKIP</a> ([i915#8289])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy-odd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@gem_mmap_gtt@basic-small-=
copy-odd.html">SKIP</a> ([i915#4077]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-read-distinct:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@gem_mmap_gtt@basic-write-r=
ead-distinct.html">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@gem_mmap_wc@set-cache-lev=
el.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@gem_partial_pwrite_pread@=
writes-after-reads-snoop.html">SKIP</a> ([i915#3282]) +3 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@gem_pxp@protected-raw-src-=
copy-not-readible.html">SKIP</a> ([i915#4270]) +3 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-mtlp-2/igt@gem_pxp@protected-raw-src=
-copy-not-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@gem_pxp@verify-pxp-stale-=
ctx-execution.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@gem_readwrite@beyond-eob.h=
tml">SKIP</a> ([i915#3282]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-x-tiled:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-snb4/igt@gem_render_copy@y-tiled-ccs=
-to-x-tiled.html">SKIP</a> +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@gem_set_tiling_vs_blt@tile=
d-to-untiled.html">SKIP</a> ([i915#8411])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-mtlp-2/igt@gem_set_tiling_vs_blt@til=
ed-to-untiled.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@gem_userptr_blits@coheren=
cy-unsync.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@gem_userptr_blits@map-fix=
ed-invalidate-overlap.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@gem_userptr_blits@relocat=
ions.html">SKIP</a> ([i915#3281] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@gen9_exec_parse@shadow-pee=
k.html">SKIP</a> ([i915#2527]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@gen9_exec_parse@unaligned=
-jump.html">SKIP</a> ([i915#2527] / [i915#2856]) +3 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@gen9_exec_parse@unaligned=
-jump.html">SKIP</a> ([i915#2856])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg2-8/igt@gen9_exec_parse@unaligned-=
jump.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_136416v5/shard-dg2-2/igt@i915_module_load@reload-with-fault-injecti=
on.html">ABORT</a> ([i915#9820])</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-rkl-2/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_136416v5/shard-rkl-4/igt@i915_module_load@reload-with-fault-injecti=
on.html">ABORT</a> ([i915#9820])</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_136416v5/shard-dg1-17/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a> ([i915#9820])</li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_136416v5/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a> ([i915#10131] / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@i915_pm_freq_api@freq-res=
et-multiple.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-glk3/igt@i915_pm_rps@engine-order.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk1/igt=
@i915_pm_rps@engine-order.html">PASS</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk5/igt@i915_pm_rps@engi=
ne-order.html">FAIL</a> ([i915#12308])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@i915_selftest@mock.html">=
DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@i915_selftest@mock@memory=
_region.html">DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@intel_hwmon@hwmon-read.htm=
l">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@intel_hwmon@hwmon-write.h=
tml">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-glk7/igt@kms_atomic_transition@plane=
-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_big_fb@4-tiled-64bpp-=
rotate-0.html">SKIP</a> ([i915#5286]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286]) +4 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([i915#4538] / [i915#5286]) +4 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg2-7/igt@kms_big_fb@y-tiled-8bpp-ro=
tate-270.html">SKIP</a> ([i915#4538] / [i915#5190])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-16/igt@kms_big_fb@y-tiled-8bpp-r=
otate-270.html">SKIP</a> ([i915#3638]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-mtlp-3/igt@kms_big_fb@y-tiled-8bpp-r=
otate-270.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_big_fb@y-tiled-8bpp-ro=
tate-90.html">SKIP</a> ([i915#3638]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_big_fb@yf-tiled-16bpp=
-rotate-180.html">SKIP</a> ([i915#4538]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg2-4/igt@kms_ccs@bad-pixel-format-y=
-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#60=
95]) +124 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@kms_ccs@bad-rotation-90-4=
-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4.html">SKIP</a> ([i915#6095]) +47 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-edp-1:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-mtlp-2/igt@kms_ccs@crc-primary-rotat=
ion-180-y-tiled-gen12-rc-ccs@pipe-a-edp-1.html">SKIP</a> ([i915#6095]) +4 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-=
1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +=
49 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-=
1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / =
[i915#10434] / [i915#6095]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg2-7/igt@kms_ccs@random-ccs-data-4-=
tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-16/igt@kms_ccs@random-ccs-data-4=
-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@kms_ccs@random-ccs-data-4=
-tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) +3 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@kms_ccs@random-ccs-data-4=
-tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-=
tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +96 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg2-8/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-1.html">SKIP</a> ([i915#11616] / [i915#7213]) +3 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@kms_chamelium_audio@hdmi-=
audio-edid.html">SKIP</a> ([i915#7828]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_chamelium_frames@hdmi=
-crc-nonplanar-formats.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@kms_chamelium_hpd@vga-hpd=
.html">SKIP</a> ([i915#7828])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg2-8/igt@kms_chamelium_hpd@vga-hpd.=
html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_chamelium_hpd@vga-hpd-=
fast.html">SKIP</a> ([i915#7828]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@kms_content_protection@dp=
-mst-lic-type-0.html">SKIP</a> ([i915#3116] / [i915#3299]) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_content_protection@dp-=
mst-type-0.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@kms_content_protection@dp=
-mst-type-1.html">SKIP</a> ([i915#3299]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@kms_content_protection@mei=
-interface.html">SKIP</a> ([i915#9424]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_content_protection@typ=
e1.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_content_protection@ue=
vent.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_cursor_crc@cursor-ons=
creen-32x32.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@kms_cursor_crc@cursor-ons=
creen-512x512.html">SKIP</a> ([i915#11453]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_cursor_crc@cursor-rand=
om-512x170.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_cursor_crc@cursor-rapi=
d-movement-32x10.html">SKIP</a> ([i915#3555]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_cursor_crc@cursor-sli=
ding-32x10.html">SKIP</a> ([i915#3555]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg2-7/igt@kms_cursor_crc@cursor-slid=
ing-512x512.html">SKIP</a> ([i915#11453])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-16/igt@kms_cursor_crc@cursor-sli=
ding-512x512.html">SKIP</a> ([i915#11453]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atom=
ic.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15461/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.htm=
l">PASS</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_136416v5/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atom=
ic.html">FAIL</a> ([i915#72])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103]) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@kms_display_modes@mst-exte=
nded-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc.html">SKIP</a> ([i915#3555] / [i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@kms_dp_aux_dev.html">SKIP=
</a> ([i915#1257])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@kms_dp_aux_dev.html">SKIP=
</a> ([i915#1257])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_dsc@dsc-basic.html">SK=
IP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a> ([i915#3840])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a> ([i915#3840] / [i915#9688])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-2/igt@kms_fbcon_fbt@fbc-suspend.=
html">INCOMPLETE</a> ([i915#9878])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.=
html">SKIP</a> ([i915#3955])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_feature_discovery@dis=
play-2x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_feature_discovery@disp=
lay-3x.html">SKIP</a> ([i915#1839]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_feature_discovery@dp-=
mst.html">SKIP</a> ([i915#9337])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@kms_flip@2x-blocking-abso=
lute-wf_vblank.html">SKIP</a> ([i915#3637]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg2-7/igt@kms_flip@2x-flip-vs-pannin=
g-vs-hang.html">SKIP</a></li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-mtlp-3/igt@kms_flip@2x-flip-vs-panni=
ng-vs-hang.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-snb7/igt@kms_flip@2x-modeset-vs-vblank-race@ab-vga1-hdm=
i-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_136416v5/shard-snb6/igt@kms_flip@2x-modeset-vs-vblank-race@ab-=
vga1-hdmi-a1.html">FAIL</a> ([i915#10826]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_flip@2x-plain-flip.htm=
l">SKIP</a> +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-glk7/igt@kms_flip@2x-wf_vblank-ts-ch=
eck-interruptible.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@b-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-tglu-7/igt@kms_flip@blocking-wf_vblank@b-hdmi-a1.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_136416v5/shard-tglu-4/igt@kms_flip@blocking-wf_vblank@b-hdmi-a1.html">FAI=
L</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg1-12/igt@kms_flip@flip-vs-absolute-wf_vblank-interrup=
tible.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_136416v5/shard-dg1-13/igt@kms_flip@flip-vs-absolute-wf_vblank=
-interruptible.html">FAIL</a> ([i915#2122]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble@a-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_136416v5/shard-snb2/igt@kms_flip@flip-vs-absolute-wf_=
vblank-interruptible@a-hdmi-a1.html">FAIL</a> ([i915#2122]) +3 other tests =
fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@kms_flip@flip-vs-suspend.=
html">ABORT</a> ([i915#4423]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-glk9/igt@kms_flip@flip-vs-suspend-in=
terruptible@c-hdmi-a2.html">INCOMPLETE</a> ([i915#9878])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_flip@plain-flip-fb-re=
create-interruptible.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-glk9/igt@kms_flip@plain-flip-fb-recreate-interruptible=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15461/shard-glk5/igt@kms_flip@plain-flip-fb-recreate-interruptible.html">P=
ASS</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_136416v5/shard-glk2/igt@kms_flip@plain-flip-fb-recreate-interruptible.htm=
l">FAIL</a> ([i915#2122]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@d-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-mtlp-8/igt@kms_flip@plain-flip-fb-recreate-interruptibl=
e@d-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_136416v5/shard-mtlp-7/igt@kms_flip@plain-flip-fb-recreate-=
interruptible@d-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-4/igt@kms_flip@wf_vblank-ts-check.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/=
shard-dg2-2/igt@kms_flip@wf_vblank-ts-check.html">SKIP</a> ([i915#5354]) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> ([i915#2672] =
/ [i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#2672] / =
[i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp=
-xtile-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_flip_scaled_crc@flip-=
32bpp-xtile-to-64bpp-xtile-upscaling.html">SKIP</a> ([i915#3555]) +1 other =
test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-downscaling.html">SKIP</a> ([i915#2672] / [=
i915#3555] / [i915#8813])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg2-7/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-downscaling.html">SKIP</a> ([i915#2672] / [i=
915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html">SKIP<=
/a> ([i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg2-7/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 ([i915#2672]) +4 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-16/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a=
> ([i915#2587] / [i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#2587] / [i9=
15#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> =
([i915#2587] / [i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#2672] / [=
i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([i915#5354]) +1 other=
 test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-16/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a> +17 other tests skip</=
li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-mtlp-3/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([i915#1825]) +2 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_frontbuffer_tracking@=
fbc-rgb565-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +9 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> +78 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb101010-draw-blt.html">SKIP</a> ([i915#3458]) +5 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> ([i915#3023]) +22 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@kms_frontbuffer_tracking@f=
bcpsr-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-mtlp-2/igt@kms_frontbuffer_tracking@=
fbcpsr-tiling-y.html">SKIP</a> ([i915#10055])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([i915#1825]) +33 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_hdr@invalid-hdr.html"=
>SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_panel_fitting@atomic-f=
astset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-glk7/igt@kms_plane_alpha_blend@alpha=
-basic.html">FAIL</a> ([i915#12178])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-glk7/igt@kms_plane_alpha_blend@alpha=
-basic@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#7862]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-min:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-4/igt@kms_plane_alpha_blend@constant-alpha-min.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_136416v5/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-min.html"=
>SKIP</a> ([i915#7294])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@kms_plane_scaling@intel-ma=
x-src-size@pipe-a-hdmi-a-2.html">FAIL</a> ([i915#8292]) +1 other test fail<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-rotation.html">SKIP</a> ([i915#12247]) +8 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@=
pipe-b:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-pixel-formats@pipe-b.html">SKIP</a> ([i915#122=
47]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-unity-scaling.html">SKIP</a> ([i915#12247] / [i915#815=
2] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-unity-scaling@pipe-b.html">SKIP</a> ([i915#12247]) +2 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-unity-scaling@pipe-d.html">SKIP</a> ([i915#12247] / [i=
915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#355=
5] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-5@pipe-b.html">SKIP</a> ([i915#12247]) +8 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i=
915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-b:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#1224=
7]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@kms_pm_backlight@fade-with=
-suspend.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@kms_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_pm_dc@dc6-psr.html">SK=
IP</a> ([i915#9685]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_pm_lpsp@screens-disab=
led.html">SKIP</a> ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-8/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-d=
g2-3/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519]) +3 other tests s=
kip</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-r=
kl-1/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519]) +2 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset=
-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_pm_rpm@modeset-lpsp.h=
tml">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@kms_pm_rpm@modeset-non-lp=
sp-stress-no-wait.html">SKIP</a> ([i915#9519])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@kms_pm_rpm@modeset-non-lp=
sp-stress-no-wait.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_prime@basic-crc-hybri=
d.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@kms_prime@d3hot.html">SKIP=
</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-4/igt@kms_properties@plane-properties-atomic.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_136416v5/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html">SKI=
P</a> ([i915#11521])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf:<=
/p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-glk7/igt@kms_psr2_sf@fbc-psr2-overla=
y-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +2 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@kms_psr2_sf@psr2-overlay-=
plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +5 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_psr2_sf@psr2-overlay-p=
lane-update-continuous-sf.html">SKIP</a> ([i915#11520]) +8 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_psr2_sf@psr2-overlay-=
plane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +2 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_psr2_su@page_flip-nv1=
2.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@kms_psr2_su@page_flip-xrg=
b8888.html">SKIP</a> ([i915#9683]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-no-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_psr@fbc-psr-no-drrs.h=
tml">SKIP</a> ([i915#9732]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-dpms:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-mtlp-6/igt@kms_psr@fbc-psr2-dpms.htm=
l">SKIP</a> ([i915#9688]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-onoff:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@kms_psr@psr-cursor-plane-=
onoff.html">SKIP</a> ([i915#1072] / [i915#9732]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-no-drrs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-glk7/igt@kms_psr@psr-no-drrs.html">S=
KIP</a> +42 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_psr@psr-sprite-plane-m=
ove.html">SKIP</a> ([i915#1072] / [i915#9732]) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg2-7/igt@kms_psr@psr2-dpms.html">SK=
IP</a> ([i915#1072] / [i915#9732])</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-5/igt@kms_selftest@drm_framebuff=
er.html">ABORT</a> ([i915#12231]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-glk6/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi=
-a-2.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_15461/shard-glk9/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2=
.html">PASS</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_136416v5/shard-glk7/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-=
hdmi-a-2.html">FAIL</a> ([i915#5465]) +6 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_sysfs_edid_timing.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-=
dg2-6/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_tiled_display@basic-t=
est-pattern.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
36416v5/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak.html">FAIL</a> =
([i915#9196]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@crtc-id:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_vblank@crtc-id.html">S=
KIP</a> ([i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-6/igt@kms_vblank@ts-continuation-dpms-suspend.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_136416v5/shard-dg2-2/igt@kms_vblank@ts-continuation-dpms-suspend.html">S=
KIP</a> ([i915#9197]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@kms_vrr@flip-basic-fastse=
t.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_vrr@negative-basic.ht=
ml">SKIP</a> ([i915#3555] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_writeback@writeback-ch=
eck-output-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@kms_writeback@writeback-f=
b-id.html">SKIP</a> ([i915#2437])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@kms_writeback@writeback-f=
b-id.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@kms_writeback@writeback-p=
ixel-formats.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-dg1-12/igt@perf@per-context-mode-unp=
rivileged.html">SKIP</a> ([i915#2433])</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@perf@unprivileged-single-c=
tx-counters.html">SKIP</a> ([i915#2433])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136=
416v5/shard-dg2-4/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> ([i91=
5#4349]) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@perf_pmu@cpu-hotplug.html=
">SKIP</a> ([i915#8850])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-2/igt@perf_pmu@rc6@other-idle-g=
t0.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@prime_vgem@basic-write.htm=
l">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-3/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-4/igt@sriov_basic@enable-vfs-au=
toprobe-off.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@sriov_basic@enable-vfs-bin=
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
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shar=
d-dg2-6/igt@fbdev@pan.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#7297]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-10/igt@gem_c=
cs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@nop:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-mtlp-2/igt@gem_exec_balancer@nop.html">DMESG-WARN</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5=
/shard-mtlp-8/igt@gem_exec_balancer@nop.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FA=
IL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_136416v5/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0=
.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_136416v5/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.htm=
l">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-glk1/igt@gen9_exec_parse@allowed-all.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-glk4/=
igt@gen9_exec_parse@allowed-all.html">ABORT</a>) ([i915#5566]) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-glk8=
/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-glk8/igt@gen9_exec_parse@allowed-single.html">ABORT</a>=
 ([i915#5566]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_136416v5/shard-glk7/igt@gen9_exec_parse@allowed-single.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-accuracy:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-mtlp-1/igt@i915_pm_rc6_residency@rc6-accuracy.html">INC=
OMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_136416v5/shard-mtlp-6/igt@i915_pm_rc6_residency@rc6-accuracy.html">PAS=
S</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg1-13/igt@i915_pm_rpm@system-suspend-execbuf.html">DME=
SG-WARN</a> ([i915#4423]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_136416v5/shard-dg1-18/igt@i915_pm_rpm@system-suspend-exe=
cbuf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-4/igt@i915_selftest@live@active.html">ABORT</a> ([i=
915#12305]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_136416v5/shard-dg2-7/igt@i915_selftest@live@active.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-4/igt@i915_selftest@live@workarounds.html">DMESG-FA=
IL</a> ([i915#12304]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_136416v5/shard-dg2-7/igt@i915_selftest@live@workarounds.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@atomic-setmode:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_atomic_interruptible@atomic-setmode.html"=
>SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_atomic_interruptible@atomic-s=
etmode.html">PASS</a> +22 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-180-hflip.html">FAIL</a> ([i915#5138]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-mtlp-1/igt@kms_big_fb@4-ti=
led-max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a> +1 other test pass<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg1-12/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate=
-180.html">FAIL</a> ([i915#5138]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_136416v5/shard-dg1-13/igt@kms_big_fb@linear-max-=
hw-stride-32bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-snb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_136416v5/shard-snb2/igt@kms_cursor_legacy@flip-v=
s-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fb_coherency@memset-crc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_fb_coherency@memset-crc.html">SKIP</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/=
shard-dg2-3/igt@kms_fb_coherency@memset-crc.html">PASS</a></li>
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
tchwork_136416v5/shard-glk8/igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hd=
mi-a2.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hd=
mi-a2.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15461/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-=
a2.html">FAIL</a>) ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_136416v5/shard-glk7/igt@kms_flip@2x-plain-flip-ts=
-check@ac-hdmi-a1-hdmi-a2.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@b-hdmi-a1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-rkl-2/igt@kms_flip@blocking-wf_vblank@b-hdmi-a1.html">F=
AIL</a> ([i915#10826]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_flip@blocking-wf_vblank@b-hdmi=
-a1.html">PASS</a> +1 other test pass</li>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-snb2/igt@kms_flip@blocking-wf_vblank@b-hdmi-a1.html">FA=
IL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_136416v5/shard-snb1/igt@kms_flip@blocking-wf_vblank@b-hdmi-a1=
.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupt=
ible.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_136416v5/shard-dg2-11/igt@kms_flip@flip-vs-absol=
ute-wf_vblank-interruptible.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-tglu-6/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a=
1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_136416v5/shard-tglu-6/igt@kms_flip@flip-vs-blocking=
-wf-vblank@a-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-glk4/igt@kms_flip@flip-vs-suspend@b-hdmi-a2.html">INCOM=
PLETE</a> ([i915#4839]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_136416v5/shard-glk6/igt@kms_flip@flip-vs-suspend@b-hdmi-a2=
.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-rkl-3/igt@kms_flip@plain-flip-fb-recreate-interruptible=
.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_136416v5/shard-rkl-4/igt@kms_flip@plain-flip-fb-recr=
eate-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-=
indfb-move.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-11/igt@kms_frontbuffer_=
tracking@fbc-1p-primscrn-cur-indfb-move.html">PASS</a> +5 other tests pass<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indf=
b-msflip-blt.html">FAIL</a> ([i915#6880]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-1/igt@kms_frontbuffer=
_tracking@fbc-1p-primscrn-indfb-msflip-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-mult=
idraw.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_136416v5/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-pri-i=
ndfb-multidraw.html">PASS</a> +13 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_invalid_mode@bad-vtotal.html">SKIP</a> ([=
i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_136416v5/shard-dg2-6/igt@kms_invalid_mode@bad-vtotal.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.ht=
ml">SKIP</a> ([i915#7294]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_plane_alpha_blend@alpha-tr=
ansparent-fb.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-rotation.html">SKIP</a> ([i915#3555] / [i915#8152] / [i915#9423]) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v=
5/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rot=
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
work_136416v5/shard-dg2-6/igt@kms_plane_scaling@planes-unity-scaling-downsc=
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
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_=
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
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-=
dg2-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe=
-d.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_pm_dc@dc9-dpms.html">FAIL</a> ([i915#7330=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1364=
16v5/shard-dg2-6/igt@kms_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-3/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> ([i915#93=
40]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
6416v5/shard-dg2-8/igt@kms_pm_lpsp@kms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a>=
 ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_136416v5/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS<=
/a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP=
</a> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_136416v5/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html">=
SKIP</a> ([i915#11521]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_properties@plane-properties-l=
egacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-mtlp-8/igt@kms_vrr@negative-basic.html">FAIL</a> ([i915=
#10393]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_136416v5/shard-mtlp-5/igt@kms_vrr@negative-basic.html">PASS</a> +1 other =
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
p/CI_DRM_15461/shard-glk5/igt@gem_ctx_engines@invalid-engines.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/shard-g=
lk4/igt@gem_ctx_engines@invalid-engines.html">FAIL</a>) ([i915#12027]) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/sh=
ard-glk6/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12027])<=
/li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-6/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i91=
5#9311]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_136416v5/shard-dg2-8/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#1=
982] / [i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-4/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555]) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg=
2-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.=
html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKI=
P</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_136416v5/shard-dg2-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.h=
tml">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-6/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">SKIP<=
/a> ([i915#4538] / [i915#5190]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_big_fb@y-tiled-32bpp-=
rotate-0.html">SKIP</a> ([i915#5190] / [i915#9197]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate=
-0-async-flip.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@=
kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> (=
[i915#4538] / [i915#5190]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs.html">SK=
IP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_136416v5/shard-dg2-6/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs=
.html">SKIP</a> ([i915#10307] / [i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs.html"=
>SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_ccs@missing-cc=
s-buffer-yf-tiled-ccs.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-after-suspend:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-mtlp-2/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.htm=
l">INCOMPLETE</a> ([i915#2295]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_136416v5/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-h=
pd-after-suspend.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-4/igt@kms_content_protection@atomic-dpms.html">SKIP=
</a> ([i915#7118] / [i915#9424]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_content_protection@a=
tomic-dpms.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-snb7/igt@kms_content_protection@srm.html">SKIP</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/sh=
ard-snb2/igt@kms_content_protection@srm.html">INCOMPLETE</a> ([i915#8816])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-4/igt@kms_cursor_crc@cursor-rapid-movement-512x170.=
html">SKIP</a> ([i915#11453]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid=
-movement-512x170.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x512.=
html">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_cursor_crc@cursor-rapid-=
movement-512x512.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-lega=
cy.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_cursor_legacy@2x-long=
-flip-vs-cursor-legacy.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.htm=
l">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-fl=
ipb-atomic.html">SKIP</a> ([i915#5354]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_15461/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions.html">PASS</a>) ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_136416v5/shard-glk8/igt@kms_cursor_legacy@flip-=
vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a>=
 ([i915#9833]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_136416v5/shard-dg2-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP<=
/a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-4/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</=
a> ([i915#8812]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_136416v5/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html">S=
KIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i91=
5#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_136416v5/shard-dg2-6/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#3=
555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hd=
mi-a2.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15461/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-=
a2.html">PASS</a>) ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_136416v5/shard-glk7/igt@kms_flip@2x-plain-flip-ts=
-check@ab-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122]) +4 other tests fail<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-6/igt@kms_flip@blocking-wf_vblank.html">FAIL</a> ([=
i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_136416v5/shard-dg2-2/igt@kms_flip@blocking-wf_vblank.html">SKIP</a> ([=
i915#5354])</li>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-snb2/igt@kms_flip@blocking-wf_vblank.html">FAIL</a> ([i=
915#10826] / [i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_136416v5/shard-snb1/igt@kms_flip@blocking-wf_vblank.html=
">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15461/shard-glk5/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/s=
hard-glk4/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html">PASS</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard=
-glk6/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html">FAIL</a> ([i915#2122]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@a-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-snb2/igt@kms_flip@blocking-wf_vblank@a-vga1.html">FAIL<=
/a> ([i915#10826]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_136416v5/shard-snb1/igt@kms_flip@blocking-wf_vblank@a-vga1.html=
">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_136416v5/shard-snb2/igt@kms_flip@flip-vs-absolute=
-wf_vblank-interruptible.html">FAIL</a> ([i915#10826] / [i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble@a-vga1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-snb2/igt@kms_flip@flip-vs-a=
bsolute-wf_vblank-interruptible@a-vga1.html">FAIL</a> ([i915#10826])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-6=
4bpp-yftile-downscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-3/igt@kms_=
flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP=
</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp=
-ytile-downscaling.html">SKIP</a> ([i915#3555] / [i915#5190]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6=
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
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_fro=
ntbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (=
[i915#3458]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-s=
hrfb-pgflip-blt.html">SKIP</a> ([i915#3458]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_frontbuf=
fer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html">SKIP</a> ([i915#5354=
]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-p=
ri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-6/igt@kms_fr=
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
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_=
frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html">SKIP</a> ([i915#535=
4])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
indfb-draw-render.html">SKIP</a> ([i915#3458]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-4/igt@kms_frontb=
uffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> ([i915#=
10433] / [i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-=
indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_front=
buffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i91=
5#5354]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a>=
 ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_136416v5/shard-dg2-11/igt@kms_hdr@invalid-metadata-sizes.html">SKIP=
</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-4/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> ([i=
915#3555] / [i915#8228]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_136416v5/shard-dg2-2/igt@kms_hdr@static-toggle-dpms.html"=
>SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/shard-dg2-2/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> ([i=
915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_136416v5/shard-dg2-6/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> ([i9=
15#3555] / [i915#8821])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15461/">SKIP</a> ([i915#9197]) -&gt; [SKIP][474] ([i915#8806])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5248055595043237242==--
