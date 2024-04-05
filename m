Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B96E0899F84
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 16:25:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1643D11393E;
	Fri,  5 Apr 2024 14:25:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 546F511393E;
 Fri,  5 Apr 2024 14:25:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1049473997557590740=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915=3A_Bigjoiner_modes?=
 =?utf-8?q?et_sequence_redesign_and_MST_support_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 05 Apr 2024 14:25:38 -0000
Message-ID: <171232713832.1236915.10430063369866997166@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
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

--===============1049473997557590740==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Bigjoiner modeset sequence redesign and MST support (rev3)
URL   : https://patchwork.freedesktop.org/series/131797/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14528_full -> Patchwork_131797v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_131797v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_131797v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/index.html

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_131797v3_full:

### CI changes ###

#### Possible regressions ####

  * boot:
    - shard-dg1:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20]) -> ([PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [FAIL][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-17/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-18/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-18/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-18/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-18/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-18/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-17/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-17/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-17/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-16/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-16/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-16/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-15/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-15/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-15/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-15/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-15/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-14/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-14/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-13/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-15/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-15/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-15/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-15/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-18/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-18/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-18/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-13/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-13/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a2:
    - shard-dg2:          NOTRUN -> [FAIL][41]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-2/igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a2.html

  
Known issues
------------

  Here are the changes found in Patchwork_131797v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - shard-tglu:         NOTRUN -> [SKIP][42] ([i915#9318])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@debugfs_test@basic-hwmon.html

  * igt@device_reset@cold-reset-bound:
    - shard-mtlp:         NOTRUN -> [SKIP][43] ([i915#7701])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@busy-idle@vcs1:
    - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#8414]) +5 other tests skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@drm_fdinfo@busy-idle@vcs1.html

  * igt@drm_fdinfo@isolation@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#8414]) +12 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@drm_fdinfo@isolation@rcs0.html

  * igt@drm_fdinfo@virtual-busy-all:
    - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#8414]) +1 other test skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@drm_fdinfo@virtual-busy-all.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-dg1:          NOTRUN -> [SKIP][47] ([i915#9323])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@gem_ccs@block-multicopy-compressed.html
    - shard-tglu:         NOTRUN -> [SKIP][48] ([i915#9323])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][49] ([i915#3555] / [i915#9323]) +2 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          NOTRUN -> [FAIL][50] ([i915#6268])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-dg1:          NOTRUN -> [SKIP][51] ([i915#8555]) +1 other test skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@gem_ctx_persistence@heartbeat-stop.html
    - shard-mtlp:         NOTRUN -> [SKIP][52] ([i915#8555])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_ctx_sseu@engines:
    - shard-mtlp:         NOTRUN -> [SKIP][53] ([i915#280])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@gem_ctx_sseu@engines.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          NOTRUN -> [ABORT][54] ([i915#10030] / [i915#7975] / [i915#8213])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-7/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#4812])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_balancer@bonded-pair:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#4771])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@gem_exec_balancer@bonded-pair.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#4036])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_balancer@noheartbeat:
    - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#8555])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@gem_exec_balancer@noheartbeat.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#4525])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-glk:          NOTRUN -> [SKIP][60] ([i915#6334])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-glk4/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_capture@many-4k-incremental:
    - shard-glk:          NOTRUN -> [FAIL][61] ([i915#9606])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-glk7/igt@gem_exec_capture@many-4k-incremental.html
    - shard-mtlp:         NOTRUN -> [FAIL][62] ([i915#9606]) +1 other test fail
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@gem_exec_capture@many-4k-incremental.html
    - shard-dg2:          NOTRUN -> [FAIL][63] ([i915#9606])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@gem_exec_capture@many-4k-incremental.html

  * igt@gem_exec_capture@many-4k-zero:
    - shard-dg1:          NOTRUN -> [FAIL][64] ([i915#9606])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@gem_exec_capture@many-4k-zero.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - shard-dg2:          [PASS][65] -> [TIMEOUT][66] ([i915#3778] / [i915#7016])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg2-6/igt@gem_exec_endless@dispatch@bcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-5/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_endless@dispatch@vcs1:
    - shard-dg1:          NOTRUN -> [TIMEOUT][67] ([i915#3778])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@gem_exec_endless@dispatch@vcs1.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-mtlp:         NOTRUN -> [SKIP][68] ([i915#4473] / [i915#4771]) +1 other test skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglu:         [PASS][69] -> [FAIL][70] ([i915#2842]) +1 other test fail
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-tglu-9/igt@gem_exec_fair@basic-none-share@rcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][71] ([i915#2842])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-rkl:          [PASS][72] -> [FAIL][73] ([i915#2842]) +3 other tests fail
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-rkl-4/igt@gem_exec_fair@basic-none@vecs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-sync:
    - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#3539]) +1 other test skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@gem_exec_fair@basic-sync.html

  * igt@gem_exec_fair@basic-throttle:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#3539])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@gem_exec_fair@basic-throttle.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][76] ([i915#2842])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_fence@submit:
    - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#4812]) +2 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@gem_exec_fence@submit.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#3539] / [i915#4852]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-dg1:          NOTRUN -> [SKIP][79] ([i915#3539] / [i915#4852]) +3 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_parallel@fds@vcs0:
    - shard-mtlp:         [PASS][80] -> [ABORT][81] ([i915#10650])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-mtlp-5/igt@gem_exec_parallel@fds@vcs0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-7/igt@gem_exec_parallel@fds@vcs0.html

  * igt@gem_exec_reloc@basic-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#3281]) +5 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@gem_exec_reloc@basic-gtt.html

  * igt@gem_exec_reloc@basic-gtt-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#3281]) +6 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@gem_exec_reloc@basic-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#3281]) +10 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read-noreloc.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#3281]) +6 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#4537] / [i915#4812]) +1 other test skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-dg1:          NOTRUN -> [SKIP][87] ([i915#4812]) +1 other test skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-rkl:          NOTRUN -> [ABORT][88] ([i915#7975] / [i915#8213])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#4860]) +2 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#4860])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-tglu:         NOTRUN -> [SKIP][91] ([i915#4613]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][92] ([i915#4613]) +3 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#4565])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:
    - shard-dg2:          NOTRUN -> [FAIL][94] ([i915#10378])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#4613]) +2 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-glk:          NOTRUN -> [SKIP][96] ([i915#4613]) +2 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-glk7/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_mmap_gtt@basic-read-write-distinct:
    - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#4077]) +9 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@gem_mmap_gtt@basic-read-write-distinct.html

  * igt@gem_mmap_gtt@big-copy:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#4077]) +3 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@gem_mmap_gtt@big-copy.html

  * igt@gem_mmap_gtt@close-race:
    - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#4077]) +5 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@gem_mmap_gtt@close-race.html

  * igt@gem_mmap_wc@bad-object:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#4083]) +1 other test skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@gem_mmap_wc@bad-object.html

  * igt@gem_mmap_wc@bad-size:
    - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#4083]) +1 other test skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@gem_mmap_wc@bad-size.html

  * igt@gem_mmap_wc@coherency:
    - shard-mtlp:         NOTRUN -> [SKIP][102] ([i915#4083]) +1 other test skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@gem_mmap_wc@coherency.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#3282]) +4 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#3282]) +4 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html
    - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#3282]) +5 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_pread@display:
    - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#3282]) +5 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@gem_pread@display.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#4270]) +3 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#4270]) +3 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_pxp@reject-modify-context-protection-off-2:
    - shard-tglu:         NOTRUN -> [SKIP][109] ([i915#4270]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@gem_pxp@reject-modify-context-protection-off-2.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#4270]) +3 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#5190] / [i915#8428]) +3 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html

  * igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#8428]) +5 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#8411]) +1 other test skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#4079])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_tiled_pread_pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#4079]) +1 other test skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@gem_tiled_pread_pwrite.html
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#4079]) +1 other test skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@gem_tiled_pread_pwrite.html

  * igt@gem_unfence_active_buffers:
    - shard-mtlp:         NOTRUN -> [SKIP][117] ([i915#4879])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#3297]) +1 other test skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@gem_userptr_blits@create-destroy-unsync.html
    - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#3297]) +1 other test skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-mtlp:         NOTRUN -> [SKIP][120] ([i915#3282] / [i915#3297])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@gem_userptr_blits@forbidden-operations.html
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#3282] / [i915#3297])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-dg1:          NOTRUN -> [SKIP][122] ([i915#3297] / [i915#4880])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#3297])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#3297])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-cycles.html
    - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#3297])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#2527] / [i915#2856])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#2856]) +2 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#2527])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#2856]) +1 other test skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#2527]) +1 other test skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#8399])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#6590])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@i915_pm_freq_mult@media-freq@gt0.html
    - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#6590])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rps@thresholds-idle-park@gt0:
    - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#8925])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@i915_pm_rps@thresholds-idle-park@gt0.html

  * igt@i915_pm_rps@thresholds-idle-park@gt1:
    - shard-mtlp:         NOTRUN -> [SKIP][135] ([i915#3555] / [i915#8925])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@i915_pm_rps@thresholds-idle-park@gt1.html

  * igt@i915_pm_rps@thresholds-idle@gt0:
    - shard-dg1:          NOTRUN -> [SKIP][136] ([i915#8925])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@i915_pm_rps@thresholds-idle@gt0.html

  * igt@i915_selftest@live@gem_contexts:
    - shard-dg1:          [PASS][137] -> [INCOMPLETE][138] ([i915#10461])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-16/igt@i915_selftest@live@gem_contexts.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-18/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@mock@memory_region:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][139] ([i915#9311])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@i915_selftest@mock@memory_region.html
    - shard-glk:          NOTRUN -> [DMESG-WARN][140] ([i915#9311])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-glk7/igt@i915_selftest@mock@memory_region.html
    - shard-mtlp:         NOTRUN -> [DMESG-WARN][141] ([i915#9311])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@i915_selftest@mock@memory_region.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#4212])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#5190])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#3826])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#4212])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#8709]) +3 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#8709]) +7 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#8709]) +11 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#1769] / [i915#3555])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-glk:          NOTRUN -> [SKIP][150] ([i915#1769])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-glk8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][151] ([i915#4538] / [i915#5286]) +2 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-tglu:         NOTRUN -> [SKIP][152] ([i915#5286]) +1 other test skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-addfb-size-overflow:
    - shard-dg1:          NOTRUN -> [SKIP][153] ([i915#5286]) +1 other test skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_big_fb@4-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#5286]) +2 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#3638]) +2 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
    - shard-dg1:          NOTRUN -> [SKIP][156] ([i915#3638]) +2 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#4538] / [i915#5190]) +5 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][158] +18 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [PASS][159] -> [FAIL][160] ([i915#3743])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-mtlp:         NOTRUN -> [SKIP][161] ([i915#6187]) +1 other test skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#4538]) +1 other test skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#6095]) +75 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-4.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-xe2-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][164] ([i915#10278])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4-tiled-xe2-ccs.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#10307] / [i915#6095]) +165 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-4.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-10/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][167] ([i915#6095]) +39 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-edp-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-xe2-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#10278])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-xe2-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#6095]) +81 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-4-tiled-xe2-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#10278]) +1 other test skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_ccs@random-ccs-data-4-tiled-xe2-ccs.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#6095]) +19 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-8/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#7213] / [i915#9010])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#7213]) +3 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-2/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#4087]) +3 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-dg1:          NOTRUN -> [SKIP][175] ([i915#7828]) +8 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#7828]) +4 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
    - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#7828]) +2 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html

  * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
    - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#7828]) +7 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#7828]) +7 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_content_protection@content-type-change:
    - shard-tglu:         NOTRUN -> [SKIP][180] ([i915#6944] / [i915#9424])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_content_protection@content-type-change.html
    - shard-dg1:          NOTRUN -> [SKIP][181] ([i915#9424])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#3299])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#3299])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_content_protection@legacy.html
    - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#7118] / [i915#9424])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-mtlp:         NOTRUN -> [SKIP][186] ([i915#6944])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@srm@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][187] ([i915#7173])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_content_protection@srm@pipe-a-dp-4.html

  * igt@kms_cursor_crc@cursor-offscreen-32x32:
    - shard-tglu:         NOTRUN -> [SKIP][188] ([i915#3555]) +1 other test skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_cursor_crc@cursor-offscreen-32x32.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#3359]) +1 other test skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_cursor_crc@cursor-offscreen-512x170.html
    - shard-dg1:          NOTRUN -> [SKIP][190] ([i915#3359]) +1 other test skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#3359]) +1 other test skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#3359]) +1 other test skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-mtlp:         NOTRUN -> [SKIP][193] ([i915#3555] / [i915#8814]) +1 other test skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-256x85:
    - shard-mtlp:         NOTRUN -> [SKIP][194] ([i915#8814]) +1 other test skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@kms_cursor_crc@cursor-sliding-256x85.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#4103])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
    - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#4103] / [i915#4213])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [PASS][197] -> [FAIL][198] ([i915#2346])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#4103] / [i915#4213]) +1 other test skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#4213]) +1 other test skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@single-bo@pipe-a:
    - shard-rkl:          [PASS][201] -> [DMESG-WARN][202] ([i915#10166])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-rkl-5/igt@kms_cursor_legacy@single-bo@pipe-a.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-6/igt@kms_cursor_legacy@single-bo@pipe-a.html

  * igt@kms_cursor_legacy@torture-bo@pipe-a:
    - shard-tglu:         [PASS][203] -> [DMESG-WARN][204] ([i915#10166])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-tglu-3/igt@kms_cursor_legacy@torture-bo@pipe-a.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-5/igt@kms_cursor_legacy@torture-bo@pipe-a.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][205] ([i915#9723])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#9723])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-6/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#3555]) +3 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@kms_display_modes@extended-mode-basic.html
    - shard-dg1:          NOTRUN -> [SKIP][208] ([i915#3555]) +7 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dp_aux_dev:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#1257])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@kms_dp_aux_dev.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][210] ([i915#3555] / [i915#8812])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@kms_draw_crc@draw-method-mmap-gtt.html
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#8812])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-mtlp:         NOTRUN -> [SKIP][212] ([i915#3840])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-mtlp:         NOTRUN -> [SKIP][213] ([i915#3555] / [i915#3840])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@kms_dsc@dsc-with-bpc.html
    - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#3555] / [i915#3840])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg1:          NOTRUN -> [SKIP][215] ([i915#3555] / [i915#3840]) +1 other test skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-tglu:         NOTRUN -> [SKIP][216] ([i915#3555] / [i915#3840])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-mtlp:         NOTRUN -> [SKIP][217] ([i915#3555] / [i915#3840] / [i915#9053])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
    - shard-dg1:          NOTRUN -> [SKIP][218] ([i915#3840] / [i915#9053])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#3469]) +1 other test skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-7/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@display-3x:
    - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#1839])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@kms_feature_discovery@display-3x.html

  * igt@kms_fence_pin_leak:
    - shard-dg1:          NOTRUN -> [SKIP][221] ([i915#4881])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-tglu:         NOTRUN -> [SKIP][222] ([i915#3637])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][223] ([i915#3637]) +7 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][224] +11 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-7/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][225] ([i915#9934]) +3 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a2:
    - shard-dg2:          NOTRUN -> [FAIL][226] ([i915#2122]) +1 other test fail
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-2/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][227] ([i915#8381])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][228] ([i915#2672]) +1 other test skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
    - shard-dg1:          NOTRUN -> [SKIP][229] ([i915#2587] / [i915#2672]) +3 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][230] ([i915#2672]) +2 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][231] ([i915#2587] / [i915#2672])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][232] ([i915#2672] / [i915#3555]) +1 other test skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#2672]) +1 other test skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:
    - shard-mtlp:         NOTRUN -> [SKIP][234] ([i915#1825]) +33 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][235] +35 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][236] +49 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#5439])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
    - shard-dg1:          NOTRUN -> [SKIP][238] ([i915#5439])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][239] ([i915#3458]) +12 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#5354]) +21 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-mtlp:         NOTRUN -> [SKIP][241] ([i915#10055])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][242] ([i915#8708]) +19 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][243] ([i915#3023]) +15 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#3458]) +8 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#8708]) +9 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#1825]) +29 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][247] ([i915#8708]) +8 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_getfb@getfb-reject-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#6118])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@kms_getfb@getfb-reject-ccs.html

  * igt@kms_hdr@invalid-hdr:
    - shard-tglu:         NOTRUN -> [SKIP][249] ([i915#3555] / [i915#8228])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-rkl:          NOTRUN -> [SKIP][250] ([i915#3555] / [i915#8228]) +1 other test skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@kms_hdr@invalid-metadata-sizes.html
    - shard-dg1:          NOTRUN -> [SKIP][251] ([i915#3555] / [i915#8228]) +1 other test skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-swap:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#3555] / [i915#8228])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-2/igt@kms_hdr@static-swap.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-tglu:         NOTRUN -> [SKIP][253] ([i915#6301])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_panel_fitting@atomic-fastset.html
    - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#6301])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane_lowres@tiling-x@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][255] ([i915#3582]) +3 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@kms_plane_lowres@tiling-x@pipe-a-edp-1.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-mtlp:         NOTRUN -> [SKIP][256] ([i915#9809]) +3 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][257] ([i915#8292])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][258] ([i915#9423]) +11 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][259] ([i915#5176]) +3 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-edp-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][260] ([i915#9423]) +15 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][261] ([i915#9423]) +9 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][262] ([i915#9423]) +3 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-d-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][263] ([i915#5176] / [i915#9423]) +1 other test skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][264] ([i915#5235]) +5 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][265] ([i915#5235] / [i915#9423]) +15 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-dp-4.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][266] ([i915#5235]) +3 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][267] ([i915#5235]) +7 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][268] ([i915#5235]) +5 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][269] ([i915#3555] / [i915#5235]) +1 other test skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-d-edp-1.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#9685])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#9685])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-6/igt@kms_pm_dc@dc6-psr.html
    - shard-tglu:         NOTRUN -> [SKIP][272] ([i915#9685])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg1:          NOTRUN -> [SKIP][273] ([i915#9340])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [PASS][274] -> [SKIP][275] ([i915#9519]) +1 other test skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-rkl-3/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-dg2:          [PASS][276] -> [SKIP][277] ([i915#9519])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg2-5/igt@kms_pm_rpm@dpms-non-lpsp.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-10/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg1:          NOTRUN -> [SKIP][278] ([i915#9519]) +1 other test skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-mtlp:         NOTRUN -> [SKIP][279] ([i915#9519])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          NOTRUN -> [SKIP][280] ([i915#9519])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][281] ([i915#6524])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][282] ([i915#6524]) +1 other test skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@kms_prime@basic-modeset-hybrid.html
    - shard-dg1:          NOTRUN -> [SKIP][283] ([i915#6524])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area@psr2-pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][284] ([i915#9808]) +3 other tests skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area@psr2-pipe-a-edp-1.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-mtlp:         NOTRUN -> [SKIP][285] ([i915#4348]) +1 other test skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-rkl:          NOTRUN -> [SKIP][286] ([i915#9683])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@kms_psr2_su@page_flip-nv12.html
    - shard-dg1:          NOTRUN -> [SKIP][287] ([i915#9683])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-psr2-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][288] ([i915#1072] / [i915#9673] / [i915#9732]) +3 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_psr@fbc-psr2-dpms.html

  * igt@kms_psr@fbc-psr2-sprite-plane-move:
    - shard-dg2:          NOTRUN -> [SKIP][289] ([i915#1072] / [i915#9732]) +5 other tests skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@kms_psr@fbc-psr2-sprite-plane-move.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          NOTRUN -> [SKIP][290] ([i915#1072] / [i915#9732]) +16 other tests skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@pr-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][291] ([i915#9688]) +12 other tests skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@kms_psr@pr-basic.html

  * igt@kms_psr@psr-primary-render:
    - shard-tglu:         NOTRUN -> [SKIP][292] ([i915#9732]) +10 other tests skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_psr@psr-primary-render.html

  * igt@kms_psr@psr2-sprite-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][293] ([i915#1072] / [i915#9732]) +21 other tests skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_psr@psr2-sprite-mmap-gtt.html

  * igt@kms_psr@psr2-sprite-plane-onoff:
    - shard-glk:          NOTRUN -> [SKIP][294] +329 other tests skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-glk8/igt@kms_psr@psr2-sprite-plane-onoff.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
    - shard-mtlp:         NOTRUN -> [SKIP][295] ([i915#4235]) +1 other test skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-mtlp:         NOTRUN -> [SKIP][296] ([i915#5289])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-dg2:          NOTRUN -> [SKIP][297] ([i915#5190])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-rkl:          NOTRUN -> [SKIP][298] ([i915#5289])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-tglu:         [PASS][299] -> [FAIL][300] ([i915#9196])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4:
    - shard-dg1:          [PASS][301] -> [FAIL][302] ([i915#9196])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][303] ([i915#9906]) +1 other test skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@max-min:
    - shard-dg1:          NOTRUN -> [SKIP][304] ([i915#9906]) +1 other test skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_vrr@max-min.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-dg2:          NOTRUN -> [SKIP][305] ([i915#9906])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-mtlp:         NOTRUN -> [SKIP][306] ([i915#8808] / [i915#9906])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-dg1:          NOTRUN -> [SKIP][307] ([i915#2437] / [i915#9412])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@kms_writeback@writeback-check-output-xrgb2101010.html
    - shard-mtlp:         NOTRUN -> [SKIP][308] ([i915#2437] / [i915#9412])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-glk:          NOTRUN -> [SKIP][309] ([i915#2437]) +1 other test skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-glk4/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-mtlp:         NOTRUN -> [SKIP][310] ([i915#2437])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@kms_writeback@writeback-invalid-parameters.html
    - shard-dg2:          NOTRUN -> [SKIP][311] ([i915#2437])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-dg2:          NOTRUN -> [SKIP][312] ([i915#2437] / [i915#9412])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-7/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-mtlp:         NOTRUN -> [SKIP][313] ([i915#7387])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [PASS][314] -> [FAIL][315] ([i915#4349]) +3 other tests fail
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-5/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg1:          NOTRUN -> [FAIL][316] ([i915#6806])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@perf_pmu@frequency@gt0.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-dg1:          NOTRUN -> [SKIP][317] ([i915#3708]) +1 other test skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@prime_vgem@fence-flip-hang.html
    - shard-rkl:          NOTRUN -> [SKIP][318] ([i915#3708])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@prime_vgem@fence-flip-hang.html

  * igt@prime_vgem@fence-read-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][319] ([i915#3708]) +1 other test skip
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@prime_vgem@fence-read-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-mtlp:         NOTRUN -> [SKIP][320] ([i915#9917])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-tglu:         NOTRUN -> [SKIP][321] ([i915#9917])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@sriov_basic@enable-vfs-autoprobe-on.html
    - shard-dg1:          NOTRUN -> [SKIP][322] ([i915#9917])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@sriov_basic@enable-vfs-autoprobe-on.html

  * igt@syncobj_timeline@invalid-wait-zero-handles:
    - shard-dg2:          NOTRUN -> [FAIL][323] ([i915#9781])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@syncobj_timeline@invalid-wait-zero-handles.html

  * igt@v3d/v3d_perfmon@destroy-invalid-perfmon:
    - shard-mtlp:         NOTRUN -> [SKIP][324] ([i915#2575]) +10 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@v3d/v3d_perfmon@destroy-invalid-perfmon.html

  * igt@v3d/v3d_perfmon@get-values-valid-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][325] +29 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@v3d/v3d_perfmon@get-values-valid-perfmon.html

  * igt@v3d/v3d_submit_cl@bad-in-sync:
    - shard-dg1:          NOTRUN -> [SKIP][326] ([i915#2575]) +9 other tests skip
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@v3d/v3d_submit_cl@bad-in-sync.html

  * igt@v3d/v3d_submit_csd@job-perfmon:
    - shard-dg2:          NOTRUN -> [SKIP][327] ([i915#2575]) +5 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@v3d/v3d_submit_csd@job-perfmon.html

  * igt@vc4/vc4_mmap@mmap-bad-handle:
    - shard-dg1:          NOTRUN -> [SKIP][328] ([i915#7711]) +9 other tests skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@vc4/vc4_mmap@mmap-bad-handle.html

  * igt@vc4/vc4_perfmon@create-single-perfmon:
    - shard-tglu:         NOTRUN -> [SKIP][329] ([i915#2575]) +6 other tests skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@vc4/vc4_perfmon@create-single-perfmon.html

  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:
    - shard-mtlp:         NOTRUN -> [SKIP][330] ([i915#7711]) +7 other tests skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice.html

  * igt@vc4/vc4_tiling@set-bad-handle:
    - shard-rkl:          NOTRUN -> [SKIP][331] ([i915#7711]) +6 other tests skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@vc4/vc4_tiling@set-bad-handle.html

  * igt@vc4/vc4_wait_bo@bad-bo:
    - shard-dg2:          NOTRUN -> [SKIP][332] ([i915#7711]) +3 other tests skip
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@vc4/vc4_wait_bo@bad-bo.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-rkl:          [FAIL][333] ([i915#2842]) -> [PASS][334]
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglu:         [FAIL][335] ([i915#2842]) -> [PASS][336] +1 other test pass
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-tglu-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-10/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-tglu:         [ABORT][337] ([i915#7975] / [i915#8213]) -> [PASS][338]
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [CRASH][339] ([i915#5493]) -> [PASS][340]
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-7/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg1:          [INCOMPLETE][341] ([i915#4391] / [i915#4423] / [i915#9820] / [i915#9849]) -> [PASS][342]
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-15/igt@i915_module_load@reload-with-fault-injection.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [ABORT][343] ([i915#10131] / [i915#9697]) -> [PASS][344]
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [SKIP][345] ([i915#7984]) -> [PASS][346]
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-mtlp-2/igt@i915_power@sanity.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@i915_power@sanity.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1:
    - shard-snb:          [FAIL][347] ([i915#2521]) -> [PASS][348]
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-snb6/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-snb6/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_legacy@torture-bo@pipe-a:
    - shard-dg2:          [DMESG-WARN][349] ([i915#10166]) -> [PASS][350]
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg2-6/igt@kms_cursor_legacy@torture-bo@pipe-a.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-2/igt@kms_cursor_legacy@torture-bo@pipe-a.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a4:
    - shard-dg1:          [FAIL][351] ([i915#2122]) -> [PASS][352] +1 other test pass
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-16/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a4.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-18/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a4.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:
    - shard-dg2:          [FAIL][353] ([i915#6880]) -> [PASS][354]
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_plane@pixel-format@pipe-a:
    - shard-tglu:         [INCOMPLETE][355] -> [PASS][356]
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-tglu-5/igt@kms_plane@pixel-format@pipe-a.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-8/igt@kms_plane@pixel-format@pipe-a.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][357] ([i915#9519]) -> [PASS][358] +1 other test pass
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          [FAIL][359] ([IGT#2]) -> [PASS][360]
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg2-2/igt@kms_sysfs_edid_timing.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_sysfs_edid_timing.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:
    - shard-mtlp:         [FAIL][361] ([i915#9196]) -> [PASS][362]
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - shard-snb:          [FAIL][363] ([i915#9196]) -> [PASS][364]
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-snb7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
    - shard-tglu:         [FAIL][365] ([i915#9196]) -> [PASS][366]
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
    - shard-tglu:         [FAIL][367] ([i915#3591]) -> [WARN][368] ([i915#2681])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-tglu-10/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][369] ([i915#4070] / [i915#4816]) -> [SKIP][370] ([i915#4816])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_psr@fbc-psr-primary-mmap-gtt:
    - shard-dg2:          [SKIP][371] ([i915#1072] / [i915#9732]) -> [SKIP][372] ([i915#1072] / [i915#9673] / [i915#9732]) +9 other tests skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg2-5/igt@kms_psr@fbc-psr-primary-mmap-gtt.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_psr@fbc-psr-primary-mmap-gtt.html

  * igt@kms_psr@psr2-primary-mmap-gtt:
    - shard-dg2:          [SKIP][373] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][374] ([i915#1072] / [i915#9732]) +5 other tests skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg2-11/igt@kms_psr@psr2-primary-mmap-gtt.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-2/igt@kms_psr@psr2-primary-mmap-gtt.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          [CRASH][375] ([i915#9351]) -> [INCOMPLETE][376] ([i915#5493])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg2-3/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-7/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [i915#10030]: https://gitlab.freedesktop.org/drm/intel/issues/10030
  [i915#10055]: https://gitlab.freedesktop.org/drm/intel/issues/10055
  [i915#10131]: https://gitlab.freedesktop.org/drm/intel/issues/10131
  [i915#10166]: https://gitlab.freedesktop.org/drm/intel/issues/10166
  [i915#10278]: https://gitlab.freedesktop.org/drm/intel/issues/10278
  [i915#10307]: https://gitlab.freedesktop.org/drm/intel/issues/10307
  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#10434]: https://gitlab.freedesktop.org/drm/intel/issues/10434
  [i915#10461]: https://gitlab.freedesktop.org/drm/intel/issues/10461
  [i915#10650]: https://gitlab.freedesktop.org/drm/intel/issues/10650
  [i915#10656]: https://gitlab.freedesktop.org/drm/intel/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3582]: https://gitlab.freedesktop.org/drm/intel/issues/3582
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4348]: https://gitlab.freedesktop.org/drm/intel/issues/4348
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6118]: https://gitlab.freedesktop.org/drm/intel/issues/6118
  [i915#6187]: https://gitlab.freedesktop.org/drm/intel/issues/6187
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#7016]: https://gitlab.freedesktop.org/drm/intel/issues/7016
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
  [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8808]: https://gitlab.freedesktop.org/drm/intel/issues/8808
  [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
  [i915#9010]: https://gitlab.freedesktop.org/drm/intel/issues/9010
  [i915#9053]: https://gitlab.freedesktop.org/drm/intel/issues/9053
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/intel/issues/9340
  [i915#9351]: https://gitlab.freedesktop.org/drm/intel/issues/9351
  [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/intel/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
  [i915#9697]: https://gitlab.freedesktop.org/drm/intel/issues/9697
  [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9781]: https://gitlab.freedesktop.org/drm/intel/issues/9781
  [i915#9808]: https://gitlab.freedesktop.org/drm/intel/issues/9808
  [i915#9809]: https://gitlab.freedesktop.org/drm/intel/issues/9809
  [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
  [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
  [i915#9906]: https://gitlab.freedesktop.org/drm/intel/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/intel/issues/9934


Build changes
-------------

  * Linux: CI_DRM_14528 -> Patchwork_131797v3
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_14528: 7392b2b6f33eb4d279abf14e33e73f491f7f9191 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7799: 7799
  Patchwork_131797v3: 7392b2b6f33eb4d279abf14e33e73f491f7f9191 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/index.html

--===============1049473997557590740==
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
<tr><td><b>Series:</b></td><td>drm/i915: Bigjoiner modeset sequence redesig=
n and MST support (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/131797/">https://patchwork.freedesktop.org/series/131797/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_131797v3/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_131797v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14528_full -&gt; Patchwork_131797v=
3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_131797v3_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_131797v3_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v=
3/index.html</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
131797v3_full:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14528/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-18/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-18=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_14528/shard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-18/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-18/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_14528/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-17/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-17/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_14528/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_14528/shard-dg1-16/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-16/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14=
528/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_14528/shard-dg1-15/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-15/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528=
/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_14528/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/shard-dg1-14/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14528/sh=
ard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_14528/shard-dg1-13/boot.html">PASS</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_131797v3/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-15/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/s=
hard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_131797v3/shard-dg1-15/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_131797v3/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/s=
hard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_131797v3/shard-dg1-17/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/boo=
t.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_131797v3/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-18/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/s=
hard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_131797v3/shard-dg1-18/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_131797v3/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/s=
hard-dg1-13/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_131797v3/shard-dg1-13/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a2:<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-2/igt@kms_flip@flip-vs-blocking-=
wf-vblank@b-hdmi-a2.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131797v3_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@debugfs_test@basic-hwmon.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@device_reset@cold-reset-b=
ound.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@vcs1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@drm_fdinfo@busy-idle@vcs1=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8414">i915#8414</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@drm_fdinfo@isolation@rcs0=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8414">i915#8414</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@drm_fdinfo@virtual-busy-a=
ll.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/8414">i915#8414</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@gem_ccs@block-multicopy-c=
ompressed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/9323">i915#9323</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@gem_ccs@block-multicopy-c=
ompressed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@gem_ccs@ctrl-surf-copy.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
55">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9323">i915#9323</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@gem_ctx_exec@basic-nohangc=
heck.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/6268">i915#6268</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@gem_ctx_persistence@heart=
beat-stop.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8555">i915#8555</a>) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@gem_ctx_persistence@heart=
beat-stop.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@gem_ctx_sseu@engines.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/280"=
>i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-7/igt@gem_eio@hibernate.html">AB=
ORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10030">=
i915#10030</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/7975">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@gem_exec_balancer@bonded-=
false-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@gem_exec_balancer@bonded-p=
air.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@gem_exec_balancer@invalid=
-bonds.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4036">i915#4036</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@noheartbeat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@gem_exec_balancer@noheartb=
eat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@gem_exec_balancer@parallel=
-contexts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-glk4/igt@gem_exec_capture@capture-in=
visible@smem0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/6334">i915#6334</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-incremental:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-glk7/igt@gem_exec_capture@many-4k-in=
cremental.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/9606">i915#9606</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@gem_exec_capture@many-4k-=
incremental.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9606">i915#9606</a>) +1 other test fail</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@gem_exec_capture@many-4k-=
incremental.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9606">i915#9606</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-zero:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@gem_exec_capture@many-4k-=
zero.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9606">i915#9606</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-dg2-6/igt@gem_exec_endless@dispatch@bcs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797=
v3/shard-dg2-5/igt@gem_exec_endless@dispatch@bcs0.html">TIMEOUT</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/3778">i915#3778</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7016">i915#7016<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vcs1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@gem_exec_endless@dispatch=
@vcs1.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3778">i915#3778</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@gem_exec_fair@basic-deadl=
ine.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4473">i915#4473</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4771">i915#4771</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-tglu-9/igt@gem_exec_fair@basic-none-share@rcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
131797v3/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#28=
42</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@gem_exec_fair@basic-none-s=
olo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-rkl-4/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797=
v3/shard-rkl-4/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +3=
 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@gem_exec_fair@basic-sync.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3539">i915#3539</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@gem_exec_fair@basic-throt=
tle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-glk7/igt@gem_exec_fair@basic-throttl=
e@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@gem_exec_fence@submit.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/481=
2">i915#4812</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@gem_exec_flush@basic-uc-pr=
o-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4852">i915#4852</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@gem_exec_flush@basic-wb-r=
w-before-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4852">i915#4852</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@fds@vcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-mtlp-5/igt@gem_exec_parallel@fds@vcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/=
shard-mtlp-7/igt@gem_exec_parallel@fds@vcs0.html">ABORT</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/10650">i915#10650</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@gem_exec_reloc@basic-gtt.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@gem_exec_reloc@basic-gtt-=
noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3281">i915#3281</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-r=
ead-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3281">i915#3281</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@gem_exec_reloc@basic-write=
-read-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3281">i915#3281</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@gem_exec_schedule@preempt=
-queue-contexts-chain.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@gem_exec_schedule@semapho=
re-power.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@gem_exec_suspend@basic-s4-=
devices@smem.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7975">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@gem_fenced_exec_thrash@no=
-spare-fences-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4860">i915#4860</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@gem_fenced_exec_thrash@to=
o-many-fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@gem_lmem_swapping@heavy-r=
andom.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@gem_lmem_swapping@heavy-v=
erify-multi-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@gem_lmem_swapping@heavy-v=
erify-multi-ccs@lmem0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4565">i915#4565</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@gem_lmem_swapping@heavy-ve=
rify-random-ccs@lmem0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@gem_lmem_swapping@random-e=
ngines.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-glk7/igt@gem_lmem_swapping@verify-ra=
ndom-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-read-write-distinct:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@gem_mmap_gtt@basic-read-w=
rite-distinct.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4077">i915#4077</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@gem_mmap_gtt@big-copy.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4077=
">i915#4077</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@close-race:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@gem_mmap_gtt@close-race.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
077">i915#4077</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-object:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@gem_mmap_wc@bad-object.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/408=
3">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@gem_mmap_wc@bad-size.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083=
">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@coherency:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@gem_mmap_wc@coherency.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/408=
3">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@gem_partial_pwrite_pread@=
reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3282">i915#3282</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@gem_partial_pwrite_pread@w=
rites-after-reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3282">i915#3282</a>) +4 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@gem_partial_pwrite_pread@=
writes-after-reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3282">i915#3282</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@display:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@gem_pread@display.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i=
915#3282</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@gem_pxp@fail-invalid-prot=
ected-context.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4270">i915#4270</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@gem_pxp@regular-baseline-=
src-copy-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4270">i915#4270</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-2:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@gem_pxp@reject-modify-con=
text-protection-off-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@gem_pxp@verify-pxp-executi=
on-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4270">i915#4270</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@gem_render_copy@y-tiled-to=
-vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/8428">i915#8428</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@gem_render_copy@yf-tiled-=
to-vebox-y-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/8428">i915#8428</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-6/igt@gem_set_tiling_vs_blt@tile=
d-to-untiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@gem_set_tiling_vs_gtt.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/407=
9">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@gem_tiled_pread_pwrite.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
79">i915#4079</a>) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@gem_tiled_pread_pwrite.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
79">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@gem_unfence_active_buffer=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4879">i915#4879</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@gem_userptr_blits@create-=
destroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3297">i915#3297</a>) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@gem_userptr_blits@create-=
destroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@gem_userptr_blits@forbidd=
en-operations.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3282">i915#3282</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3297">i915#3297</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@gem_userptr_blits@forbidd=
en-operations.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3282">i915#3282</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@gem_userptr_blits@map-fix=
ed-invalidate-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@gem_userptr_blits@unsync-=
unmap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-6/igt@gem_userptr_blits@unsync-u=
nmap-cycles.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3297">i915#3297</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@gem_userptr_blits@unsync-=
unmap-cycles.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@gen9_exec_parse@allowed-s=
ingle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@gen9_exec_parse@batch-zer=
o-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@gen9_exec_parse@bb-oversi=
ze.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@gen9_exec_parse@bb-start-=
cmd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@gen9_exec_parse@unaligned-=
access.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@i915_pm_freq_api@freq-susp=
end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@i915_pm_freq_mult@media-fr=
eq@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/6590">i915#6590</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@i915_pm_freq_mult@media-f=
req@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/6590">i915#6590</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park@gt0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@i915_pm_rps@thresholds-id=
le-park@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@i915_pm_rps@thresholds-id=
le-park@gt1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle@gt0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@i915_pm_rps@thresholds-id=
le@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-dg1-16/igt@i915_selftest@live@gem_contexts.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1317=
97v3/shard-dg1-18/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10461">i915#104=
61</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@i915_selftest@mock@memory=
_region.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9311">i915#9311</a>)</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-glk7/igt@i915_selftest@mock@memory_r=
egion.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9311">i915#9311</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@i915_selftest@mock@memory=
_region.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9311">i915#9311</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@kms_addfb_basic@addfb25-x-=
tiled-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_addfb_basic@addfb25-y=
-tiled-small-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@kms_addfb_basic@invalid-s=
mem-bo-on-discrete.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3826">i915#3826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_addfb_basic@tile-pitc=
h-mismatch.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-r=
c-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +7 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-m=
c-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-6/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +11 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@kms_atomic_transition@plan=
e-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-glk8/igt@kms_atomic_transition@plane=
-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@kms_big_fb@4-tiled-64bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_big_fb@4-tiled-8bpp-r=
otate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_big_fb@4-tiled-addfb-=
size-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@kms_big_fb@y-tiled-64bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3638">i915#3638</a>) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_big_fb@y-tiled-64bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@kms_big_fb@y-tiled-8bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/5190">i915#5190</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_big_fb@y-tiled-max-hw=
-stride-32bpp-rotate-0-async-flip.html">SKIP</a> +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_131797v3/shard-tglu-3/igt@kms_big_fb@y-tiled-max-h=
w-stride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_big_fb@yf-tiled-addfb=
-size-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/6187">i915#6187</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4538">i915#4538</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@kms_ccs@bad-aux-stride-y-=
tiled-ccs@pipe-c-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/6095">i915#6095</a>) +75 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-xe2-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4=
-tiled-xe2-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/10278">i915#10278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_ccs@bad-rotation-90-y=
-tiled-gen12-rc-ccs-cc@pipe-a-dp-4.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/10307">i915#10307</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +165 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-10/igt@kms_ccs@bad-rotation-90-y=
-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/10307">i915#10307</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/10434">i915#10434</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_ccs@crc-primary-basic=
-y-tiled-ccs@pipe-d-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/6095">i915#6095</a>) +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-xe2-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-7/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-xe2-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/10278">i915#10278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-=
tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +81 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-xe2-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_ccs@random-ccs-data-4=
-tiled-xe2-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/10278">i915#10278</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-8/igt@kms_ccs@random-ccs-data-y=
-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +19 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@kms_cdclk@mode-transition=
-all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7213">i915#7213</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/9010">i915#9010</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-2/igt@kms_cdclk@mode-transition@=
pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/7213">i915#7213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-10/igt@kms_cdclk@plane-scaling@p=
ipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_chamelium_audio@hdmi-=
audio-edid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/7828">i915#7828</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_chamelium_edid@dp-edi=
d-stress-resolution-non-4k.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm-disable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_chamelium_hpd@dp-hpd-=
storm-disable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-hp=
d-for-each-pipe.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/7828">i915#7828</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-=
for-each-pipe.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7828">i915#7828</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_content_protection@co=
ntent-type-change.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/9424">i915#9424</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_content_protection@co=
ntent-type-change.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_content_protection@dp=
-mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@kms_content_protection@dp=
-mst-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_content_protection@le=
gacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/7116">i915#7116</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/9424">i915#9424</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-6/igt@kms_content_protection@leg=
acy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@kms_content_protection@sr=
m.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_content_protection@sr=
m@pipe-a-dp-4.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_cursor_crc@cursor-off=
screen-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_cursor_crc@cursor-off=
screen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3359">i915#3359</a>) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_cursor_crc@cursor-off=
screen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_cursor_crc@cursor-off=
screen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_cursor_crc@cursor-ran=
dom-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_cursor_crc@cursor-rap=
id-movement-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/8814">i915#8814</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@kms_cursor_crc@cursor-sli=
ding-256x85.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8814">i915#8814</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_131797v3/shard-glk9/igt@kms_cursor_legacy@flip-v=
s-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-7/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 othe=
r test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>)=
 +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-bo@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-rkl-5/igt@kms_cursor_legacy@single-bo@pipe-a.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
1797v3/shard-rkl-6/igt@kms_cursor_legacy@single-bo@pipe-a.html">DMESG-WARN<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10166">i915=
#10166</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@torture-bo@pipe-a:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-tglu-3/igt@kms_cursor_legacy@torture-bo@pipe-a.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
131797v3/shard-tglu-5/igt@kms_cursor_legacy@torture-bo@pipe-a.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10166">=
i915#10166</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_dirtyfb@fbc-dirtyfb-i=
octl@a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-6/igt@kms_dirtyfb@fbc-dirtyfb-io=
ctl@a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@kms_display_modes@extended=
-mode-basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a>) +3 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_display_modes@extende=
d-mode-basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3555">i915#3555</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@kms_dp_aux_dev.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1257">i915#=
1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@kms_draw_crc@draw-method-=
mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/8812">i915#8812</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_draw_crc@draw-method-=
mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_dsc@dsc-fractional-bp=
p-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@kms_dsc@dsc-with-bpc.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555=
">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3840">i915#3840</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_dsc@dsc-with-bpc.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555=
">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_dsc@dsc-with-bpc-form=
ats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_dsc@dsc-with-formats.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_dsc@dsc-with-output-f=
ormats-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3840">i915#3840</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/9053">i915#9053</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@kms_dsc@dsc-with-output-f=
ormats-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3840">i915#3840</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/9053">i915#9053</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-7/igt@kms_fbcon_fbt@psr.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3469">i9=
15#3469</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@kms_feature_discovery@disp=
lay-3x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_fence_pin_leak.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4881">=
i915#4881</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_flip@2x-flip-vs-panni=
ng-vs-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@kms_flip@2x-modeset-vs-vb=
lank-race-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3637">i915#3637</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-7/igt@kms_flip@2x-single-buffer-=
flip-vs-dpms-off-vs-modeset.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_flip@2x-wf_vblank-ts-=
check-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-2/igt@kms_flip@flip-vs-blocking-=
wf-vblank@c-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2122">i915#2122</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@kms_flip@flip-vs-fences.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#267=
2</a>) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#25=
87</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i=
915#2672</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#26=
72</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915=
#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a=
>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1825">i915#1825</a>) +33 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-cur-indfb-onoff.html">SKIP</a> +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> +49 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@kms_frontbuffer_tracking@f=
bc-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5439">i915#5439</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_frontbuffer_tracking@=
fbc-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +12 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +21 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_frontbuffer_tracking@=
fbcpsr-tiling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/10055">i915#10055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_frontbuffer_tracking@=
psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +19 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-6/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +15 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_frontbuffer_tracking@=
psr-1p-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3458">i915#3458</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-7/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +9 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +29 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +8 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_getfb@getfb-reject-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@kms_getfb@getfb-reject-ccs=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/6118">i915#6118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_hdr@invalid-hdr.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@kms_hdr@invalid-metadata-s=
izes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8228">i915#8228</a>) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-2/igt@kms_hdr@static-swap.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">=
i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_panel_fitting@atomic-=
fastset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/6301">i915#6301</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-6/igt@kms_panel_fitting@atomic-f=
astset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-x@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@kms_plane_lowres@tiling-x=
@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3582">i915#3582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@kms_plane_scaling@2x-scal=
er-multi-pipe.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9809">i915#9809</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-2/igt@kms_plane_scaling@intel-ma=
x-src-size@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-=
hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-5/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +1=
1 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-ed=
p-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-rotation@pipe-a-edp-1.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hd=
mi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-rotation@pipe-a-hdmi-a-4.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +1=
5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-h=
dmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-6/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-75-with-rotation@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +9=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-d-h=
dmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-75-with-rotation@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-3/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423<=
/a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-=
hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-3/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +5=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_plane_scaling@planes-=
downscale-factor-0-25@pipe-b-dp-4.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5235">i915#5235</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +15 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-1.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</=
a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</=
a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@p=
ipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-75@pipe-a-edp-1.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>)=
 +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@p=
ipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-75@pipe-d-edp-1.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#523=
5</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@kms_pm_dc@dc3co-vpb-simula=
tion.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-6/igt@kms_pm_dc@dc6-psr.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9685">i9=
15#9685</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_pm_dc@dc6-psr.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9685">i=
915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@kms_pm_lpsp@kms-lpsp.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9340=
">i915#9340</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-rkl-3/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
31797v3/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519=
</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-dg2-5/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/sha=
rd-dg2-10/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@kms_pm_rpm@modeset-lpsp-s=
tress.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9519">i915#9519</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_pm_rpm@modeset-non-lp=
sp.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lps=
p-stress.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_prime@basic-crc-hybri=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@kms_prime@basic-modeset-hy=
brid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/6524">i915#6524</a>) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area@psr2-pipe-a-edp-1:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@kms_psr2_sf@fbc-primary-p=
lane-update-sf-dmg-area@psr2-pipe-a-edp-1.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/9808">i915#9808</a>) +3 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@kms_psr2_su@frontbuffer-x=
rgb8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4348">i915#4348</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@kms_psr2_su@page_flip-nv12=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9683">i915#9683</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_psr2_su@page_flip-nv1=
2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_psr@fbc-psr2-dpms.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/107=
2">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9673">i915#9673</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-plane-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@kms_psr@fbc-psr2-sprite-pl=
ane-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9732">i915#9732</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@kms_psr@fbc-psr2-sprite-re=
nder.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9732">i915#9732</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@kms_psr@pr-basic.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9688">i9=
15#9688</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@kms_psr@psr-primary-rende=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_psr@psr2-sprite-mmap-=
gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/9732">i915#9732</a>) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-plane-onoff:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-glk8/igt@kms_psr@psr2-sprite-plane-o=
noff.html">SKIP</a> +329 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_rotation_crc@primary-=
y-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4235">i915#4235</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hd=
mi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_131797v3/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak=
@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hd=
mi-a-4.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_universal_plane@cursor-fb-leak=
@pipe-d-hdmi-a-4.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@kms_vrr@flip-basic-fastset=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9906">i915#9906</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@kms_vrr@max-min.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9906">i91=
5#9906</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@kms_vrr@seamless-rr-switch=
-drrs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_vrr@seamless-rr-switc=
h-vrr.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/8808">i915#8808</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@kms_writeback@writeback-c=
heck-output-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/9412">i915#9412</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@kms_writeback@writeback-c=
heck-output-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-glk4/igt@kms_writeback@writeback-fb-=
id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2437">i915#2437</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-8/igt@kms_writeback@writeback-i=
nvalid-parameters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2437">i915#2437</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-11/igt@kms_writeback@writeback-i=
nvalid-parameters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-7/igt@kms_writeback@writeback-pi=
xel-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@perf@gen8-unprivileged-si=
ngle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1317=
97v3/shard-dg2-5/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>) =
+3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@perf_pmu@frequency@gt0.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/68=
06">i915#6806</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@prime_vgem@fence-flip-han=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a>) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-5/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@prime_vgem@fence-read-han=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@sriov_basic@enable-vfs-au=
toprobe-off.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@sriov_basic@enable-vfs-au=
toprobe-on.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9917">i915#9917</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-16/igt@sriov_basic@enable-vfs-au=
toprobe-on.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-wait-zero-handles:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@syncobj_timeline@invalid-w=
ait-zero-handles.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9781">i915#9781</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@destroy-invalid-perfmon:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-5/igt@v3d/v3d_perfmon@destroy-i=
nvalid-perfmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2575">i915#2575</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-valid-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@v3d/v3d_perfmon@get-values=
-valid-perfmon.html">SKIP</a> +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-in-sync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@v3d/v3d_submit_cl@bad-in-=
sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2575">i915#2575</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@job-perfmon:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@v3d/v3d_submit_csd@job-per=
fmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2575">i915#2575</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_mmap@mmap-bad-handle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg1-14/igt@vc4/vc4_mmap@mmap-bad-han=
dle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7711">i915#7711</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@create-single-perfmon:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-tglu-4/igt@vc4/vc4_perfmon@create-si=
ngle-perfmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2575">i915#2575</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@vc4/vc4_purgeable_bo@mark=
-unpurgeable-twice.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/7711">i915#7711</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@set-bad-handle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@vc4/vc4_tiling@set-bad-han=
dle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7711">i915#7711</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@bad-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-dg2-8/igt@vc4/vc4_wait_bo@bad-bo.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/771=
1">i915#7711</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_131797v3/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-tglu-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_131797v3/shard-tglu-10/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PA=
SS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html=
">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/797=
5">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/8213">i915#8213</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_131797v3/shard-tglu-4/igt@gem_exec_suspend@basic-s4-device=
s@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html">CRASH<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#=
5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_131797v3/shard-dg2-7/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-dg1-15/igt@i915_module_load@reload-with-fault-injection=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4391">i915#4391</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/9820">i915#9820</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/9849">i915#9849</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg1-17/igt@i915_modul=
e_load@reload-with-fault-injection.html">PASS</a></li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/10131">i915#10131</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/9697">i915#9697</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131797v3/shard-mtlp-4/igt@i915_module_load@reload-w=
ith-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-mtlp-2/igt@i915_power@sanity.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/7984">i915#7984</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3/sha=
rd-mtlp-5/igt@i915_power@sanity.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-snb6/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_131797v3/shard-snb6/igt@kms_async_flips@alternate=
-sync-async-flip@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@torture-bo@pipe-a:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-dg2-6/igt@kms_cursor_legacy@torture-bo@pipe-a.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/101=
66">i915#10166</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_131797v3/shard-dg2-2/igt@kms_cursor_legacy@torture-bo@pipe-a.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-dg1-16/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a=
4.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_131797v3/shard-dg1-18/igt@kms_flip@flip-vs-blocking-wf-vbla=
nk@a-hdmi-a4.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
indfb-draw-render.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/6880">i915#6880</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_131797v3/shard-dg2-3/igt@kms_frontbuffer_tr=
acking@fbc-1p-offscren-pri-indfb-draw-render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-a:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-tglu-5/igt@kms_plane@pixel-format@pipe-a.html">INCOMPLE=
TE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
131797v3/shard-tglu-8/igt@kms_plane@pixel-format@pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95=
19">i915#9519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_131797v3/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-=
wait.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-dg2-2/igt@kms_sysfs_edid_timing.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2">IGT#2</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v3=
/shard-dg2-11/igt@kms_sysfs_edid_timing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-ed=
p-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_131797v3/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-l=
eak@pipe-b-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-snb7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi=
-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_131797v3/shard-snb2/igt@kms_universal_plane@cursor-fb-le=
ak@pipe-b-hdmi-a-1.html">PASS</a></li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hd=
mi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_131797v3/shard-tglu-7/igt@kms_universal_plane@cursor-f=
b-leak@pipe-b-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591=
">i915#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_131797v3/shard-tglu-10/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs=
0.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2681">i915#2681</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4816">i915#4816</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_131797v3/shard-rkl-4/igt@kms_multipipe_modeset@basic-=
max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-dg2-5/igt@kms_psr@fbc-psr-primary-mmap-gtt.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1=
072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9732">=
i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_131797v3/shard-dg2-11/igt@kms_psr@fbc-psr-primary-mmap-gtt.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i9=
15#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/96=
73">i915#9673</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-dg2-11/igt@kms_psr@psr2-primary-mmap-gtt.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#107=
2</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9673">i9=
15#9673</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/97=
32">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_131797v3/shard-dg2-2/igt@kms_psr@psr2-primary-mmap-gtt.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i9=
15#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/97=
32">i915#9732</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14528/shard-dg2-3/igt@prime_mmap@test_aperture_limit@test_aperture_=
limit-smem.html">CRASH</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9351">i915#9351</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_131797v3/shard-dg2-7/igt@prime_mmap@test_aperture=
_limit@test_aperture_limit-smem.html">INCOMPLETE</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14528 -&gt; Patchwork_131797v3</li>
<li>Piglit: piglit_4509 -&gt; None</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14528: 7392b2b6f33eb4d279abf14e33e73f491f7f9191 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7799: 7799<br />
  Patchwork_131797v3: 7392b2b6f33eb4d279abf14e33e73f491f7f9191 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1049473997557590740==--
