Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F368303A2
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 11:31:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC36F10E031;
	Wed, 17 Jan 2024 10:31:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DDC210E031;
 Wed, 17 Jan 2024 10:31:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7314196562508293989=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915=3A_Cursor_vblank_e?=
 =?utf-8?q?vasion_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 17 Jan 2024 10:31:08 -0000
Message-ID: <170548746863.525621.11324196832571062182@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
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

--===============7314196562508293989==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Cursor vblank evasion (rev3)
URL   : https://patchwork.freedesktop.org/series/127744/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14129_full -> Patchwork_127744v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_127744v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_127744v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 9)
------------------------------

  Additional (1): pig-kbl-iris 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127744v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@in-flight-internal-immediate:
    - shard-mtlp:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-mtlp-4/igt@gem_eio@in-flight-internal-immediate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@gem_eio@in-flight-internal-immediate.html

  * igt@kms_cursor_legacy@torture-move@pipe-a:
    - shard-tglu:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-tglu-6/igt@kms_cursor_legacy@torture-move@pipe-a.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-5/igt@kms_cursor_legacy@torture-move@pipe-a.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][5] ([i915#9820]) -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html

  
Known issues
------------

  Here are the changes found in Patchwork_127744v3_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-rkl:          ([PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [FAIL][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28]) ([i915#8293]) -> ([PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-4/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-4/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-3/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-2/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-2/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-2/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-1/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-1/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-1/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-1/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-7/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-7/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-5/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-5/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-5/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-5/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-5/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-4/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-4/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-3/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-3/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-3/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#9318])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@debugfs_test@basic-hwmon.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#7701])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@busy-idle-check-all@ccs3:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#8414]) +12 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@drm_fdinfo@busy-idle-check-all@ccs3.html

  * igt@drm_fdinfo@busy-idle-check-all@vcs1:
    - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#8414]) +4 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@drm_fdinfo@busy-idle-check-all@vcs1.html

  * igt@drm_fdinfo@virtual-busy-idle:
    - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#8414]) +1 other test skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@drm_fdinfo@virtual-busy-idle.html

  * igt@drm_fdinfo@virtual-idle:
    - shard-rkl:          [PASS][58] -> [FAIL][59] ([i915#7742]) +2 other tests fail
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#3555])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-tglu:         NOTRUN -> [SKIP][61] ([i915#9323])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg1:          NOTRUN -> [SKIP][62] ([i915#9323])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@gem_ccs@suspend-resume.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#7697])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#6335])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-tglu:         NOTRUN -> [SKIP][65] ([fdo#109314])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@gem_ctx_param@set-priority-not-supported.html
    - shard-rkl:          NOTRUN -> [SKIP][66] ([fdo#109314])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#8555]) +3 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#5882]) +9 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#280]) +1 other test skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@gem_ctx_sseu@invalid-sseu.html
    - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#280])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@hibernate:
    - shard-rkl:          NOTRUN -> [ABORT][71] ([i915#7975] / [i915#8213])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#4771])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@bonded-pair:
    - shard-mtlp:         NOTRUN -> [SKIP][73] ([i915#4771])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@gem_exec_balancer@bonded-pair.html

  * igt@gem_exec_balancer@noheartbeat:
    - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#8555]) +1 other test skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@gem_exec_balancer@noheartbeat.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#4525])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-none-rrul:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#3539] / [i915#4852]) +6 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@gem_exec_fair@basic-none-rrul.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglu:         NOTRUN -> [FAIL][77] ([i915#2842]) +1 other test fail
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo:
    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#4473])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@gem_exec_fair@basic-none-solo.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][79] ([i915#2842]) +1 other test fail
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fence@submit67:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#4812])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@gem_exec_fence@submit67.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#3539] / [i915#4852])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-tglu:         NOTRUN -> [SKIP][82] ([fdo#109283])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_params@secure-non-master:
    - shard-rkl:          NOTRUN -> [SKIP][83] ([fdo#112283])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_params@secure-non-root:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([fdo#112283])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-active:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#3281]) +18 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@gem_exec_reloc@basic-active.html

  * igt@gem_exec_reloc@basic-cpu-read-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#3281]) +7 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@gem_exec_reloc@basic-cpu-read-noreloc.html

  * igt@gem_exec_reloc@basic-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#3281]) +4 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@gem_exec_reloc@basic-gtt.html

  * igt@gem_exec_reloc@basic-write-gtt-active:
    - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#3281]) +2 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@gem_exec_reloc@basic-write-gtt-active.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#4537] / [i915#4812])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-3/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#4860]) +2 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#4860])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#2190])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@gem_huc_copy@huc-copy.html
    - shard-glk:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#2190])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-glk1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-glk:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#4613]) +2 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-glk4/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#4613]) +1 other test skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#4613]) +2 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_mmap@basic-small-bo:
    - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#4083]) +5 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@gem_mmap@basic-small-bo.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#4077]) +16 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_mmap_gtt@medium-copy-odd:
    - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#4077]) +2 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@gem_mmap_gtt@medium-copy-odd.html

  * igt@gem_mmap_wc@copy:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#4083]) +5 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@gem_mmap_wc@copy.html

  * igt@gem_pread@snoop:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#3282]) +3 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@gem_pread@snoop.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#3282]) +5 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@gem_pwrite@basic-exhaustion.html
    - shard-glk:          NOTRUN -> [WARN][103] ([i915#2658])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-glk8/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#4270]) +4 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@gem_pxp@display-protected-crc.html
    - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#4270])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#4270]) +1 other test skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#4270]) +4 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-tglu:         NOTRUN -> [SKIP][108] ([i915#4270]) +1 other test skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_render_copy@yf-tiled-ccs-to-x-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#8428]) +2 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@gem_render_copy@yf-tiled-ccs-to-x-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#4079]) +1 other test skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#8411])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_softpin@allocator-basic-reserve:
    - shard-snb:          NOTRUN -> [SKIP][112] ([fdo#109271]) +6 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-snb2/igt@gem_softpin@allocator-basic-reserve.html

  * igt@gem_spin_batch@spin-all-new:
    - shard-dg2:          NOTRUN -> [FAIL][113] ([i915#5889])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-3/igt@gem_spin_batch@spin-all-new.html

  * igt@gem_tiled_partial_pwrite_pread@reads:
    - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#4077]) +2 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@gem_tiled_partial_pwrite_pread@reads.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#3297]) +6 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@gem_userptr_blits@coherency-sync.html
    - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#3297]) +1 other test skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-dg1:          NOTRUN -> [SKIP][117] ([i915#3282]) +1 other test skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#3297]) +1 other test skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#3297] / [i915#4958])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@gem_userptr_blits@sd-probe.html

  * igt@gen7_exec_parse@basic-allowed:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([fdo#109289])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@gen7_exec_parse@basic-allowed.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-rkl:          NOTRUN -> [SKIP][121] ([fdo#109289]) +3 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@gen7_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#2856]) +1 other test skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-large:
    - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#2527] / [i915#2856]) +1 other test skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#2527]) +1 other test skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#2527]) +1 other test skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#2856]) +5 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_fb_tiling:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#4881])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@i915_fb_tiling.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [PASS][128] -> [INCOMPLETE][129] ([i915#9820] / [i915#9849])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg1:          [PASS][130] -> [INCOMPLETE][131] ([i915#9820] / [i915#9849])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-18/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-tglu:         NOTRUN -> [SKIP][132] ([i915#8399])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-dg1:          NOTRUN -> [SKIP][133] ([fdo#109289])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
    - shard-dg1:          [PASS][134] -> [FAIL][135] ([i915#3591])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-dg1:          [PASS][136] -> [DMESG-WARN][137] ([i915#4423])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-dg1-12/igt@i915_pm_rpm@system-suspend.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-17/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_pm_rps@reset:
    - shard-mtlp:         NOTRUN -> [FAIL][138] ([i915#8346])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@thresholds-idle@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#8925]) +1 other test skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@i915_pm_rps@thresholds-idle@gt0.html
    - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#8925])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@i915_pm_rps@thresholds-idle@gt0.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([fdo#109303])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-3/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_selftest@mock@memory_region:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][142] ([i915#9311])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@i915_selftest@mock@memory_region.html

  * igt@intel_hwmon@hwmon-write:
    - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#7707])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#4212]) +1 other test skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#4212]) +1 other test skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#8709]) +3 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@crc@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][147] ([i915#8247]) +3 other tests fail
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-16/igt@kms_async_flips@crc@pipe-d-hdmi-a-4.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#6228])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#9531])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#5286]) +4 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-dg1:          NOTRUN -> [SKIP][151] ([i915#4538] / [i915#5286]) +1 other test skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][152] ([fdo#111615] / [i915#5286])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [PASS][153] -> [FAIL][154] ([i915#5138]) +2 other tests fail
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][155] ([fdo#111614])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([fdo#111614] / [i915#3638]) +5 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([fdo#111614]) +1 other test skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][158] ([fdo#111614]) +2 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#5190]) +21 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         [PASS][160] -> [FAIL][161] ([i915#3743])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][162] ([fdo#111615]) +5 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [SKIP][163] ([fdo#110723]) +3 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#4538] / [i915#5190]) +6 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][165] ([fdo#111615]) +1 other test skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][166] ([fdo#111615]) +1 other test skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][167] ([i915#4538]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#2705])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-4-tiled-mtl-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#5354] / [i915#6095]) +21 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@kms_ccs@pipe-a-bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y-tiled-gen12-mc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][170] ([i915#5354] / [i915#6095]) +12 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_ccs@pipe-a-crc-primary-basic-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-4-tiled-dg2-mc-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][171] ([i915#5354] / [i915#6095]) +21 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@kms_ccs@pipe-a-random-ccs-data-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#5354]) +115 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][173] ([i915#5354] / [i915#6095]) +11 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#5354]) +28 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@pipe-c-random-ccs-data-4-tiled-mtl-rc-ccs-cc:
    - shard-glk:          NOTRUN -> [SKIP][175] ([fdo#109271]) +224 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-glk8/igt@kms_ccs@pipe-c-random-ccs-data-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_cdclk@mode-transition:
    - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#3742])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#3742])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#4087]) +3 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([fdo#111827]) +2 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_color@ctm-negative:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([fdo#111827]) +2 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@kms_chamelium_color@ctm-negative.html
    - shard-dg1:          NOTRUN -> [SKIP][181] ([fdo#111827])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_chamelium_color@ctm-negative.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:
    - shard-tglu:         NOTRUN -> [SKIP][182] ([i915#7828]) +2 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
    - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#7828]) +11 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#7828]) +5 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#7828]) +1 other test skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
    - shard-mtlp:         NOTRUN -> [SKIP][186] ([i915#7828]) +4 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][187] ([i915#6944] / [i915#7116] / [i915#7118])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#3299]) +2 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#3299]) +1 other test skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@lic:
    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#7118]) +2 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#3359]) +1 other test skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42:
    - shard-mtlp:         NOTRUN -> [SKIP][192] ([i915#8814])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_cursor_crc@cursor-onscreen-128x42.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#3359]) +3 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-tglu:         NOTRUN -> [SKIP][194] ([i915#3555]) +1 other test skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-4/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#3359])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#3359])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#3555]) +9 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-3/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-dg1:          NOTRUN -> [SKIP][198] ([i915#3359])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][199] ([fdo#111767] / [fdo#111825])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#4103])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#4103])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#9809])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][203] ([fdo#109274] / [i915#5354]) +3 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-mtlp:         NOTRUN -> [SKIP][204] ([fdo#111767])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
    - shard-dg2:          NOTRUN -> [SKIP][205] ([fdo#109274] / [fdo#111767] / [i915#5354])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#9067])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-mtlp:         NOTRUN -> [SKIP][207] ([i915#4213])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#9723])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic@pipe-a-hdmi-a-1-pipe-b-vga-1:
    - shard-snb:          NOTRUN -> [FAIL][209] ([i915#9841]) +3 other tests fail
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-snb7/igt@kms_display_modes@extended-mode-basic@pipe-a-hdmi-a-1-pipe-b-vga-1.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][210] ([i915#3804])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#3804])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#3840] / [i915#9688])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#3840])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#3555] / [i915#3840])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@kms_dsc@dsc-with-bpc-formats.html
    - shard-dg1:          NOTRUN -> [SKIP][215] ([i915#3555] / [i915#3840])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#3555] / [i915#3840])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#3840] / [i915#9053])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          NOTRUN -> [SKIP][218] ([fdo#110189] / [i915#3955])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@display-4x:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#1839])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_feature_discovery@display-4x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#9337])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-3/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-dg1:          NOTRUN -> [SKIP][221] ([fdo#111825] / [i915#9934])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-tglu:         NOTRUN -> [SKIP][222] ([fdo#109274] / [i915#3637]) +1 other test skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][223] ([fdo#109274]) +8 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          NOTRUN -> [SKIP][224] ([fdo#111825]) +10 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-mtlp:         NOTRUN -> [SKIP][225] ([i915#3637]) +1 other test skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][226] ([i915#2672]) +3 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#2672]) +5 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][228] ([i915#3555] / [i915#8810]) +1 other test skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][229] ([i915#2587] / [i915#2672]) +2 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][230] ([i915#2672])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#2672] / [i915#3555])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-dg2:          NOTRUN -> [SKIP][232] ([fdo#109285])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-3/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [FAIL][233] ([i915#6880]) +2 other tests fail
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-snb:          [PASS][234] -> [SKIP][235] ([fdo#109271]) +7 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][236] ([i915#8708]) +1 other test skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][237] ([fdo#110189]) +5 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][238] ([i915#8708]) +1 other test skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][239] ([fdo#111825]) +8 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][240] ([fdo#111825] / [i915#1825]) +30 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#9766])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@plane-fbc-rte:
    - shard-rkl:          NOTRUN -> [SKIP][242] ([i915#10070])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@kms_frontbuffer_tracking@plane-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][243] ([i915#3023]) +20 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#3458]) +25 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#8708]) +17 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][246] ([i915#1825]) +16 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-move:
    - shard-tglu:         NOTRUN -> [SKIP][247] ([fdo#109280]) +10 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][248] ([i915#3458]) +4 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#3555] / [i915#8228]) +3 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@kms_hdr@bpc-switch-suspend.html
    - shard-dg1:          NOTRUN -> [SKIP][250] ([i915#3555] / [i915#8228])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-mtlp:         NOTRUN -> [SKIP][251] ([i915#3555] / [i915#8228])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][252] ([i915#3555] / [i915#8228])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@kms_hdr@static-toggle-dpms.html
    - shard-tglu:         NOTRUN -> [SKIP][253] ([i915#3555] / [i915#8228])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#6301])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-dg2:          NOTRUN -> [SKIP][255] ([fdo#109289]) +7 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
    - shard-mtlp:         NOTRUN -> [SKIP][256] ([fdo#109289]) +1 other test skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][257] ([i915#4573]) +1 other test fail
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-glk8/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          NOTRUN -> [SKIP][258] ([i915#3555]) +5 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-mtlp:         NOTRUN -> [SKIP][259] ([i915#6953])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][260] ([i915#9423]) +15 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-16/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][261] ([i915#5235]) +3 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#5235]) +3 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][263] ([i915#5235] / [i915#9423]) +23 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][264] ([i915#5235]) +2 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-edp-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][265] ([i915#3555] / [i915#5235])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][266] ([i915#5235]) +11 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-12/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-hdmi-a-3.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-dg1:          NOTRUN -> [SKIP][267] ([i915#5354])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu:         NOTRUN -> [SKIP][268] ([i915#9685])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-rkl:          NOTRUN -> [FAIL][269] ([i915#9295])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#9685])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][271] ([i915#9340])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-rkl:          NOTRUN -> [SKIP][272] ([i915#8430])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][273] ([i915#9519])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-dg2:          [PASS][274] -> [SKIP][275] ([i915#9519])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-dg2-1/igt@kms_pm_rpm@dpms-non-lpsp.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-10/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-rkl:          [PASS][276] -> [SKIP][277] ([i915#9519])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-mtlp:         NOTRUN -> [SKIP][278] ([i915#9519])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          NOTRUN -> [SKIP][279] ([i915#9519]) +1 other test skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][280] ([i915#6524] / [i915#6805]) +2 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-dg1:          NOTRUN -> [SKIP][281] ([i915#6524])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_prime@d3hot:
    - shard-mtlp:         NOTRUN -> [SKIP][282] ([i915#6524])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-rkl:          NOTRUN -> [SKIP][283] ([fdo#111068] / [i915#9683]) +2 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][284] ([i915#9683])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-mtlp:         NOTRUN -> [SKIP][285] ([i915#4348])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#9683]) +1 other test skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@kms_psr2_su@page_flip-xrgb8888.html
    - shard-dg1:          NOTRUN -> [SKIP][287] ([fdo#111068] / [i915#9683])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          NOTRUN -> [SKIP][288] ([i915#9685])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-rkl:          NOTRUN -> [SKIP][289] ([i915#5289])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
    - shard-dg2:          NOTRUN -> [SKIP][290] ([i915#4235] / [i915#5190])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][291] ([fdo#111615] / [i915#5289])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-mtlp:         NOTRUN -> [SKIP][292] ([i915#4235])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-dg2:          NOTRUN -> [SKIP][293] ([i915#4235])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-mtlp:         NOTRUN -> [SKIP][294] ([i915#3555] / [i915#8809])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-1:
    - shard-snb:          NOTRUN -> [FAIL][295] ([i915#5465]) +1 other test fail
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-snb2/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-tglu:         NOTRUN -> [SKIP][296] ([fdo#109309])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_tv_load_detect@load-detect.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - shard-tglu:         [PASS][297] -> [FAIL][298] ([i915#9196])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][299] ([i915#9906])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@flipline:
    - shard-dg1:          NOTRUN -> [SKIP][300] ([i915#3555])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_vrr@flipline.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-glk:          NOTRUN -> [SKIP][301] ([fdo#109271] / [i915#2437])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-glk5/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-dg2:          NOTRUN -> [SKIP][302] ([i915#2437] / [i915#9412])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-mtlp:         NOTRUN -> [SKIP][303] ([i915#2437]) +1 other test skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@kms_writeback@writeback-pixel-formats.html
    - shard-dg2:          NOTRUN -> [SKIP][304] ([i915#2437]) +1 other test skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][305] ([i915#2436])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@global-sseu-config-invalid:
    - shard-dg2:          NOTRUN -> [SKIP][306] ([i915#7387])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-3/igt@perf@global-sseu-config-invalid.html

  * igt@perf_pmu@busy-double-start@bcs0:
    - shard-mtlp:         [PASS][307] -> [FAIL][308] ([i915#4349])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-mtlp-5/igt@perf_pmu@busy-double-start@bcs0.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-7/igt@perf_pmu@busy-double-start@bcs0.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2:          NOTRUN -> [FAIL][309] ([i915#6806])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@perf_pmu@frequency@gt0.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-tglu:         NOTRUN -> [SKIP][310] ([i915#8516])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@perf_pmu@rc6-all-gts.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-rkl:          NOTRUN -> [SKIP][311] ([i915#8516])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-fence-mmap:
    - shard-dg2:          NOTRUN -> [SKIP][312] ([i915#3708] / [i915#4077])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          NOTRUN -> [SKIP][313] ([fdo#109295] / [i915#3291] / [i915#3708])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - shard-dg2:          NOTRUN -> [SKIP][314] ([i915#3291] / [i915#3708])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@fence-write-hang:
    - shard-dg2:          NOTRUN -> [SKIP][315] ([i915#3708]) +1 other test skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@prime_vgem@fence-write-hang.html
    - shard-dg1:          NOTRUN -> [SKIP][316] ([i915#3708]) +1 other test skip
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@prime_vgem@fence-write-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-dg2:          NOTRUN -> [SKIP][317] ([i915#9917])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@syncobj_timeline@invalid-wait-zero-handles:
    - shard-tglu:         NOTRUN -> [FAIL][318] ([i915#9781])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@syncobj_timeline@invalid-wait-zero-handles.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-dg2:          NOTRUN -> [FAIL][319] ([i915#9779])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@syncobj_wait@invalid-wait-zero-handles.html

  * igt@v3d/v3d_job_submission@multiple-singlesync-to-multisync:
    - shard-tglu:         NOTRUN -> [SKIP][320] ([fdo#109315] / [i915#2575]) +4 other tests skip
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@v3d/v3d_job_submission@multiple-singlesync-to-multisync.html

  * igt@v3d/v3d_perfmon@create-two-perfmon:
    - shard-dg2:          NOTRUN -> [SKIP][321] ([i915#2575]) +15 other tests skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@v3d/v3d_perfmon@create-two-perfmon.html

  * igt@v3d/v3d_submit_cl@bad-in-sync:
    - shard-dg1:          NOTRUN -> [SKIP][322] ([i915#2575]) +3 other tests skip
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@v3d/v3d_submit_cl@bad-in-sync.html

  * igt@v3d/v3d_submit_cl@single-out-sync:
    - shard-mtlp:         NOTRUN -> [SKIP][323] ([i915#2575]) +4 other tests skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@v3d/v3d_submit_cl@single-out-sync.html

  * igt@v3d/v3d_wait_bo@bad-bo:
    - shard-rkl:          NOTRUN -> [SKIP][324] ([fdo#109315]) +9 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@v3d/v3d_wait_bo@bad-bo.html

  * igt@vc4/vc4_create_bo@create-bo-0:
    - shard-mtlp:         NOTRUN -> [SKIP][325] ([i915#7711]) +5 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@vc4/vc4_create_bo@create-bo-0.html

  * igt@vc4/vc4_purgeable_bo@mark-purgeable:
    - shard-rkl:          NOTRUN -> [SKIP][326] ([i915#7711]) +7 other tests skip
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@vc4/vc4_purgeable_bo@mark-purgeable.html

  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:
    - shard-dg2:          NOTRUN -> [SKIP][327] ([i915#7711]) +9 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained.html
    - shard-dg1:          NOTRUN -> [SKIP][328] ([i915#7711])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained.html

  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:
    - shard-tglu:         NOTRUN -> [SKIP][329] ([i915#2575])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice.html

  
#### Possible fixes ####

  * igt@gem_ctx_freq@sysfs@gt0:
    - shard-dg2:          [FAIL][330] ([i915#9561]) -> [PASS][331]
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-dg2-6/igt@gem_ctx_freq@sysfs@gt0.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-10/igt@gem_ctx_freq@sysfs@gt0.html

  * igt@gem_eio@hibernate:
    - shard-tglu:         [ABORT][332] ([i915#10030] / [i915#7975] / [i915#8213] / [i915#8398]) -> [PASS][333]
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-tglu-10/igt@gem_eio@hibernate.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-4/igt@gem_eio@hibernate.html

  * igt@gem_eio@kms:
    - shard-mtlp:         [ABORT][334] -> [PASS][335]
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-mtlp-4/igt@gem_eio@kms.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-dg2:          [FAIL][336] ([i915#5784]) -> [PASS][337]
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-dg2-10/igt@gem_eio@reset-stress.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@gem_eio@reset-stress.html

  * igt@gem_eio@unwedge-stress:
    - shard-dg1:          [FAIL][338] ([i915#5784]) -> [PASS][339]
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-dg1-17/igt@gem_eio@unwedge-stress.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-14/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         [FAIL][340] ([i915#2842]) -> [PASS][341]
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-rkl:          [FAIL][342] ([i915#2842]) -> [PASS][343] +1 other test pass
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-1/igt@gem_exec_fair@basic-pace@bcs0.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-6/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fence@basic-busy-all:
    - shard-rkl:          [INCOMPLETE][344] ([i915#8875]) -> [PASS][345]
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-7/igt@gem_exec_fence@basic-busy-all.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@gem_exec_fence@basic-busy-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [INCOMPLETE][346] ([i915#5566]) -> [PASS][347]
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-glk9/igt@gen9_exec_parse@allowed-single.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-glk1/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [INCOMPLETE][348] ([i915#9200] / [i915#9849]) -> [PASS][349]
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [FAIL][350] ([i915#3743]) -> [PASS][351] +2 other tests pass
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:
    - shard-snb:          [SKIP][352] ([fdo#109271]) -> [PASS][353] +9 other tests pass
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
    - shard-snb:          [INCOMPLETE][354] -> [PASS][355]
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-snb4/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-snb2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [SKIP][356] ([i915#9519]) -> [PASS][357]
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-tglu:         [FAIL][358] ([i915#9196]) -> [PASS][359]
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-2:
    - shard-rkl:          [FAIL][360] ([i915#9196]) -> [PASS][361]
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-1/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-2.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-3/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-2.html

  
#### Warnings ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-dg1:          [INCOMPLETE][362] ([i915#9408] / [i915#9618]) -> [ABORT][363] ([i915#9618])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-dg1-14/igt@device_reset@unbind-reset-rebind.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglu:         [FAIL][364] ([i915#2876]) -> [FAIL][365] ([i915#2842])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-tglu-8/igt@gem_exec_fair@basic-pace@rcs0.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-8/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@kms_async_flips@crc@pipe-a-edp-1:
    - shard-mtlp:         [FAIL][366] ([i915#8247]) -> [DMESG-FAIL][367] ([i915#8561])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-mtlp-2/igt@kms_async_flips@crc@pipe-a-edp-1.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-3/igt@kms_async_flips@crc@pipe-a-edp-1.html

  * igt@kms_content_protection@content-type-change:
    - shard-snb:          [SKIP][368] ([fdo#109271]) -> [INCOMPLETE][369] ([i915#8816])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-snb1/igt@kms_content_protection@content-type-change.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-snb7/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][370] ([i915#9424]) -> [SKIP][371] ([i915#9433])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-dg1-15/igt@kms_content_protection@mei-interface.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-dg1-12/igt@kms_content_protection@mei-interface.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][372] ([i915#4816]) -> [SKIP][373] ([i915#4070] / [i915#4816])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][374] ([i915#4281]) -> [SKIP][375] ([i915#3361])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_pm_dc@dc9-dpms.html

  

### Piglit changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#10030]: https://gitlab.freedesktop.org/drm/intel/issues/10030
  [i915#10062]: https://gitlab.freedesktop.org/drm/intel/issues/10062
  [i915#10070]: https://gitlab.freedesktop.org/drm/intel/issues/10070
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2876]: https://gitlab.freedesktop.org/drm/intel/issues/2876
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
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
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4348]: https://gitlab.freedesktop.org/drm/intel/issues/4348
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5882]: https://gitlab.freedesktop.org/drm/intel/issues/5882
  [i915#5889]: https://gitlab.freedesktop.org/drm/intel/issues/5889
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6228]: https://gitlab.freedesktop.org/drm/intel/issues/6228
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
  [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8346]: https://gitlab.freedesktop.org/drm/intel/issues/8346
  [i915#8398]: https://gitlab.freedesktop.org/drm/intel/issues/8398
  [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/intel/issues/8430
  [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8561]: https://gitlab.freedesktop.org/drm/intel/issues/8561
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#8816]: https://gitlab.freedesktop.org/drm/intel/issues/8816
  [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
  [i915#9053]: https://gitlab.freedesktop.org/drm/intel/issues/9053
  [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9200]: https://gitlab.freedesktop.org/drm/intel/issues/9200
  [i915#9295]: https://gitlab.freedesktop.org/drm/intel/issues/9295
  [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/intel/issues/9337
  [i915#9340]: https://gitlab.freedesktop.org/drm/intel/issues/9340
  [i915#9408]: https://gitlab.freedesktop.org/drm/intel/issues/9408
  [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/intel/issues/9433
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9531]: https://gitlab.freedesktop.org/drm/intel/issues/9531
  [i915#9561]: https://gitlab.freedesktop.org/drm/intel/issues/9561
  [i915#9618]: https://gitlab.freedesktop.org/drm/intel/issues/9618
  [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/intel/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9766]: https://gitlab.freedesktop.org/drm/intel/issues/9766
  [i915#9779]: https://gitlab.freedesktop.org/drm/intel/issues/9779
  [i915#9781]: https://gitlab.freedesktop.org/drm/intel/issues/9781
  [i915#9809]: https://gitlab.freedesktop.org/drm/intel/issues/9809
  [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
  [i915#9841]: https://gitlab.freedesktop.org/drm/intel/issues/9841
  [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
  [i915#9906]: https://gitlab.freedesktop.org/drm/intel/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/intel/issues/9934


Build changes
-------------

  * Linux: CI_DRM_14129 -> Patchwork_127744v3
  * Piglit: None -> piglit_4509

  CI-20190529: 20190529
  CI_DRM_14129: b6b50ad4c8d61b14de0ffcf0d52ae2adc0ef39cf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7675: ffde49e0583ee5053f25a065356bce6bce91047a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127744v3: b6b50ad4c8d61b14de0ffcf0d52ae2adc0ef39cf @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/index.html

--===============7314196562508293989==
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
<tr><td><b>Series:</b></td><td>drm/i915: Cursor vblank evasion (rev3)</td><=
/tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/127744/">https://patchwork.freedesktop.org/series/127744/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127744v3/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127744v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14129_full -&gt; Patchwork_127744v=
3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_127744v3_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_127744v3_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (8 -&gt; 9)</h2>
<p>Additional (1): pig-kbl-iris </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
127744v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-internal-immediate:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-mtlp-4/igt@gem_eio@in-flight-internal-immediate.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_127744v3/shard-mtlp-4/igt@gem_eio@in-flight-internal-immediate.html">ABORT=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@torture-move@pipe-a:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-tglu-6/igt@kms_cursor_legacy@torture-move@pipe-a.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_127744v3/shard-tglu-5/igt@kms_cursor_legacy@torture-move@pipe-a.html">DME=
SG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@reload-with-fault-injection:<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/9820">i915#9820</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_127744v3/shard-mtlp-7/igt@i915_module_load@reload-with-faul=
t-injection.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127744v3_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14129/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-3/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_14129/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14129/shard-rkl-2/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-2/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_141=
29/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_14129/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/sha=
rd-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_14129/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-7/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl=
-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-6/boot.html">FAIL</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-5/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_14129/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_14129/shard-rkl-5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-5/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1412=
9/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_14129/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/shard-rkl-4/boot.html">PASS=
</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8293">i91=
5#8293</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_127744v3/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/sh=
ard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_127744v3/shard-rkl-7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-6/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_127744v3/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-6/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-r=
kl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_127744v3/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1277=
44v3/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-4=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_127744v3/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-4/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3=
/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_127744v3/shard-rkl-3/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-3/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127744v3/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-3/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shar=
d-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_127744v3/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27744v3/shard-rkl-1/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@debugfs_test@basic-hwmon.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@ccs3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@drm_fdinfo@busy-idle-check=
-all@ccs3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8414">i915#8414</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@vcs1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@drm_fdinfo@busy-idle-chec=
k-all@vcs1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8414">i915#8414</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-idle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@drm_fdinfo@virtual-busy-i=
dle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8414">i915#8414</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shar=
d-rkl-4/igt@drm_fdinfo@virtual-idle.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) +2 other tests fai=
l</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@gem_ccs@ctrl-surf-copy.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
55">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@gem_ccs@ctrl-surf-copy-ne=
w-ctx.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@gem_ccs@suspend-resume.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/93=
23">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@gem_close_race@multigpu-ba=
sic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@gem_create@create-ext-cpu-=
access-sanity-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@gem_ctx_param@set-priorit=
y-not-supported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109314">fdo#109314</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@gem_ctx_param@set-priority=
-not-supported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109314">fdo#109314</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@gem_ctx_persistence@heartb=
eat-hostile.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8555">i915#8555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@gem_ctx_persistence@satura=
ted-hostile-nopreempt@ccs0.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5882">i915#5882</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
280">i915#280</a>) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@gem_ctx_sseu@invalid-sseu=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@gem_eio@hibernate.html">AB=
ORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7975">i=
915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@gem_exec_balancer@bonded-d=
ual.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@gem_exec_balancer@bonded-=
pair.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@noheartbeat:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@gem_exec_balancer@noheart=
beat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/8555">i915#8555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@gem_exec_balancer@parallel=
-contexts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@gem_exec_fair@basic-none-r=
rul.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4852">i915#4852</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@gem_exec_fair@basic-none-=
share@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2842">i915#2842</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@gem_exec_fair@basic-none-=
solo.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4473">i915#4473</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@gem_exec_fair@basic-none-v=
ip@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2842">i915#2842</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit67:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@gem_exec_fence@submit67.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/48=
12">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@gem_exec_flush@basic-wb-r=
w-before-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@gem_exec_params@rsvd2-dir=
t.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109283">fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@gem_exec_params@secure-non=
-master.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@gem_exec_params@secure-non=
-root.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@gem_exec_reloc@basic-activ=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3281">i915#3281</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@gem_exec_reloc@basic-cpu-=
read-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3281">i915#3281</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@gem_exec_reloc@basic-gtt.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
281">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@gem_exec_reloc@basic-writ=
e-gtt-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-3/igt@gem_exec_schedule@preempt-=
queue-chain.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@gem_fenced_exec_thrash@no-=
spare-fences-busy-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4860">i915#4860</a>) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@gem_fenced_exec_thrash@to=
o-many-fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@gem_huc_copy@huc-copy.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/219=
0">i915#2190</a>)</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-glk1/igt@gem_huc_copy@huc-copy.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-glk4/igt@gem_lmem_swapping@heavy-ver=
ify-multi-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@gem_lmem_swapping@heavy-v=
erify-random-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@gem_lmem_swapping@parallel=
-random-engines.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic-small-bo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@gem_mmap@basic-small-bo.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
083">i915#4083</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@gem_mmap_gtt@fault-concurr=
ent-x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4077">i915#4077</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-odd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@gem_mmap_gtt@medium-copy-=
odd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@gem_mmap_wc@copy.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083">i91=
5#4083</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@gem_pread@snoop.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915=
#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@gem_pwrite@basic-exhaustio=
n.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3282">i915#3282</a>) +5 other tests skip</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-glk8/igt@gem_pwrite@basic-exhaustion=
.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@gem_pxp@display-protected-=
crc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4270">i915#4270</a>) +4 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@gem_pxp@display-protected=
-crc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@gem_pxp@fail-invalid-prot=
ected-context.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@gem_pxp@reject-modify-cont=
ext-protection-on.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4270">i915#4270</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@gem_pxp@verify-pxp-key-ch=
ange-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-x-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@gem_render_copy@yf-tiled-=
ccs-to-x-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/8428">i915#8428</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@gem_set_tiling_vs_blt@tile=
d-to-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@gem_set_tiling_vs_blt@tile=
d-to-untiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic-reserve:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-snb2/igt@gem_softpin@allocator-basic=
-reserve.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@spin-all-new:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-3/igt@gem_spin_batch@spin-all-ne=
w.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/5889">i915#5889</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@gem_tiled_partial_pwrite_=
pread@reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@gem_userptr_blits@coherenc=
y-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3297">i915#3297</a>) +6 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@gem_userptr_blits@coheren=
cy-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@gem_userptr_blits@forbidd=
en-operations.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@gem_userptr_blits@readonl=
y-pwrite-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@gem_userptr_blits@sd-probe=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3297">i915#3297</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4958">i915#4958</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@gen7_exec_parse@basic-all=
owed.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@gen7_exec_parse@basic-reje=
cted.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109289">fdo#109289</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@gen9_exec_parse@allowed-s=
ingle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@gen9_exec_parse@bb-large.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@gen9_exec_parse@bb-oversi=
ze.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@gen9_exec_parse@bb-start-o=
ut.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@gen9_exec_parse@unaligned-=
access.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2856">i915#2856</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@i915_fb_tiling.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4881">i915#=
4881</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127744v3/shard-rkl-4/igt@i915_module_load@reload-with-fault-injecti=
on.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/9820">i915#9820</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9849">i915#9849</a>)</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_127744v3/shard-dg1-18/igt@i915_module_load@reload-with-fault-injec=
tion.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9820">i915#9820</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9849">i915#9849</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@i915_pm_freq_api@freq-res=
et-multiple.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@i915_pm_rc6_residency@med=
ia-rc6-accuracy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127744v3/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591"=
>i915#3591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-dg1-12/igt@i915_pm_rpm@system-suspend.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/=
shard-dg1-17/igt@i915_pm_rpm@system-suspend.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@i915_pm_rps@reset.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8346">i=
915#8346</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@i915_pm_rps@thresholds-idl=
e@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/8925">i915#8925</a>) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@i915_pm_rps@thresholds-id=
le@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-3/igt@i915_query@query-topology-=
known-pci-ids.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109303">fdo#109303</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@i915_selftest@mock@memory_=
region.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/9311">i915#9311</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@intel_hwmon@hwmon-write.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/77=
07">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_addfb_basic@basic-y-t=
iled-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4212">i915#4212</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@clobberred-modifier:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@kms_addfb_basic@clobberred=
-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4212">i915#4212</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-16/igt@kms_async_flips@crc@pipe-=
d-hdmi-a-4.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_async_flips@invalid-as=
ync-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/6228">i915#6228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-r=
otate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/5286">i915#5286</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_big_fb@4-tiled-64bpp-=
rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-180-hflip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127744v3/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-str=
ide-64bpp-rotate-180-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5138">i915#5138</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_big_fb@linear-32bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@kms_big_fb@linear-32bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111614">fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3638">i915#3638</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_big_fb@x-tiled-32bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_big_fb@x-tiled-8bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-ro=
tate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5190">i915#5190</a>) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-0-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127744v3/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw=
-stride-32bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_big_fb@y-tiled-max-hw=
-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +5 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_big_fb@yf-tiled-64bpp-=
rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D110723">fdo#110723</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_big_fb@yf-tiled-64bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5190">i915#5190</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11615">fdo#111615</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4538">i915#4538</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@kms_big_joiner@2x-modeset.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@kms_ccs@pipe-a-bad-aux-str=
ide-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/6095">i915#6095</a>) +21 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_ccs@pipe-a-crc-primar=
y-basic-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +12 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@kms_ccs@pipe-a-random-ccs=
-data-4-tiled-dg2-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/6095">i915#6095</a>) +21 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@kms_ccs@pipe-b-bad-rotatio=
n-90-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5354">i915#5354</a>) +115 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_ccs@pipe-b-crc-sprite=
-planes-basic-4-tiled-mtl-rc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +11 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_ccs@pipe-c-crc-sprite-=
planes-basic-4-tiled-mtl-rc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5354">i915#5354</a>) +28 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-glk8/igt@kms_ccs@pipe-c-random-ccs-d=
ata-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +224 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@kms_cdclk@mode-transition.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_cdclk@mode-transition=
-all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_cdclk@plane-scaling@pi=
pe-b-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_chamelium_color@ctm-bl=
ue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111827">fdo#111827</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@kms_chamelium_color@ctm-ne=
gative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111827">fdo#111827</a>) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_chamelium_color@ctm-n=
egative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_chamelium_edid@dp-edi=
d-stress-resolution-4k.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_chamelium_edid@dp-edid=
-stress-resolution-non-4k.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/7828">i915#7828</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_chamelium_edid@hdmi-ed=
id-change-during-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/7828">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_chamelium_hpd@vga-hpd=
-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-without-ddc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_chamelium_hpd@vga-hpd=
-without-ddc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_content_protection@at=
omic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/7116">i915#7116</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_content_protection@dp-=
mst-lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3299">i915#3299</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@kms_content_protection@dp=
-mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3299">i915#3299</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_content_protection@lic=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/7118">i915#7118</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@kms_cursor_crc@cursor-off=
screen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_cursor_crc@cursor-ons=
creen-128x42.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@kms_cursor_crc@cursor-onsc=
reen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3359">i915#3359</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-4/igt@kms_cursor_crc@cursor-ran=
dom-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_cursor_crc@cursor-ran=
dom-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_cursor_crc@cursor-rand=
om-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-3/igt@kms_cursor_crc@cursor-rapi=
d-movement-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3555">i915#3555</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_cursor_crc@cursor-rap=
id-movement-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-legacy.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@kms_cursor_legacy@cursora=
-vs-flipb-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9809">i915#9809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_cursor_legacy@cursora-=
vs-flipb-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5354">i915#5354</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@kms_cursor_legacy@cursorb=
-vs-flipb-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D111767">fdo#111767</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@kms_cursor_legacy@cursorb-=
vs-flipb-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_cursor_legacy@modeset-=
atomic-cursor-hotspot.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_dirtyfb@psr-dirtyfb-io=
ctl.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic@pipe-a-hdmi-a-1-pipe-b-vga-1:<=
/p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-snb7/igt@kms_display_modes@extended-=
mode-basic@pipe-a-hdmi-a-1-pipe-b-vga-1.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/9841">i915#9841</a>) +3 other tests=
 fail</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_dither@fb-8bpc-vs-pan=
el-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_dsc@dsc-fractional-bpp=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3840">i915#3840</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9688">i915#9688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_dsc@dsc-fractional-bpp=
-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@kms_dsc@dsc-with-bpc-forma=
ts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3840">i915#3840</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_dsc@dsc-with-bpc-form=
ats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@kms_dsc@dsc-with-output-fo=
rmats-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3840">i915#3840</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/9053">i915#9053</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@kms_fbcon_fbt@psr.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">f=
do#110189</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_feature_discovery@disp=
lay-4x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-3/igt@kms_feature_discovery@dp-m=
st.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_flip@2x-absolute-wf_v=
blank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_flip@2x-flip-vs-modes=
et-vs-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3637">i915#3637</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@kms_flip@2x-modeset-vs-vbl=
ank-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109274">fdo#109274</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@kms_flip@2x-plain-flip.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1118=
25">fdo#111825</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_flip@2x-wf_vblank-ts-=
check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3637">i915#3637</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#26=
72</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8810">i915=
#8810</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a=
-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-3/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-3/igt@kms_force_connector_basic@=
force-load-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@kms_frontbuffer_tracking@f=
bc-1p-primscrn-cur-indfb-draw-pwrite.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>) +2 other tests fa=
il</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-i=
ndfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_127744v3/shard-snb4/igt@kms_frontbuffer_tracking=
@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +7 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +1 other te=
st skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>) +5 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +8 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +3=
0 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_frontbuffer_tracking@p=
ipe-fbc-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9766">i915#9766</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@plane-fbc-rte:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@kms_frontbuffer_tracking@p=
lane-fbc-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/10070">i915#10070</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +20 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +25 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-3/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +17 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-indfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +16 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-spr-indfb-move.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +10 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_frontbuffer_tracking@=
psr-rgb565-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3458">i915#3458</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@kms_hdr@bpc-switch-suspend=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8228">i915#8228</a>) +3 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_hdr@bpc-switch-suspen=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@kms_hdr@static-toggle-dpms=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8228">i915#8228</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_hdr@static-toggle-dpm=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@kms_panel_fitting@atomic-f=
astset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@kms_pipe_b_c_ivb@from-pipe=
-c-to-b-with-3-lanes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109289">fdo#109289</a>) +7 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@kms_pipe_b_c_ivb@from-pip=
e-c-to-b-with-3-lanes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-glk8/igt@kms_plane_alpha_blend@alpha=
-transparent-fb@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4573">i915#4573</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@kms_plane_multiple@tiling-=
yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3555">i915#3555</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_plane_scaling@intel-m=
ax-src-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hd=
mi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-16/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-rotation@pipe-a-hdmi-a-4.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +1=
5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-=
hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a=
>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-1/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9=
423</a>) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-=
edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-25@pipe-a-edp-1.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-=
edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-25@pipe-d-edp-1.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-=
hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-12/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-25@pipe-c-hdmi-a-3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +1=
1 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_pm_backlight@bad-brig=
htness.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9295">i=
915#9295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_pm_dc@dc6-psr.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9685">i9=
15#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@kms_pm_lpsp@kms-lpsp.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9340"=
>i915#9340</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@kms_pm_lpsp@screens-disabl=
ed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_pm_rpm@dpms-lpsp.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519"=
>i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-dg2-1/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/sha=
rd-dg2-10/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_127744v3/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i91=
5#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_pm_rpm@modeset-non-lp=
sp.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lps=
p-stress.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/9519">i915#9519</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_prime@basic-crc-hybrid=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/6524">i915#6524</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/6805">i915#6805</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@kms_prime@d3hot.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6524">i91=
5#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_psr2_sf@cursor-plane-u=
pdate-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9683">i915#9683</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_psr2_sf@overlay-plane=
-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_psr2_su@page_flip-p01=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4348">i915#4348</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@kms_psr2_su@page_flip-xrgb=
8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9683">i915#9683</a>) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_psr2_su@page_flip-xrg=
b8888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_psr_stress_test@flip-p=
rimary-invalidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_rotation_crc@primary-4=
-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_rotation_crc@primary-y=
-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4235">i915#4235</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_rotation_crc@sprite-ro=
tation-90-pos-100-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@kms_setmode@basic-clone-s=
ingle-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-snb2/igt@kms_setmode@basic@pipe-a-hd=
mi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5465">i915#5465</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@kms_tv_load_detect@load-d=
etect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109309">fdo#109309</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-b-h=
dmi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_127744v3/shard-tglu-2/igt@kms_universal_plane@cursor-fb-lea=
k@pipe-b-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@kms_vrr@flip-basic-fastset=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@kms_vrr@flipline.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i9=
15#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-glk5/igt@kms_writeback@writeback-che=
ck-output-xrgb2101010.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@kms_writeback@writeback-fb=
-id-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@kms_writeback@writeback-p=
ixel-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2437">i915#2437</a>) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@kms_writeback@writeback-pi=
xel-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@perf@gen8-unprivileged-sin=
gle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config-invalid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-3/igt@perf@global-sseu-config-in=
valid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@bcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-mtlp-5/igt@perf_pmu@busy-double-start@bcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1277=
44v3/shard-mtlp-7/igt@perf_pmu@busy-double-start@bcs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@perf_pmu@frequency@gt0.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/680=
6">i915#6806</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@perf_pmu@rc6-all-gts.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8516=
">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-7/igt@prime_vgem@basic-fence-mma=
p.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-7/igt@prime_vgem@basic-fence-rea=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109295">fdo#109295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@prime_vgem@basic-read.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3291=
">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a>) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@prime_vgem@fence-write-ha=
ng.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@sriov_basic@enable-vfs-aut=
oprobe-off.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-wait-zero-handles:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@syncobj_timeline@invalid-=
wait-zero-handles.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/9781">i915#9781</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@syncobj_wait@invalid-wait-=
zero-handles.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/9779">i915#9779</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_job_submission@multiple-singlesync-to-multisync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@v3d/v3d_job_submission@mu=
ltiple-singlesync-to-multisync.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109315">fdo#109315</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +4 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@create-two-perfmon:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-5/igt@v3d/v3d_perfmon@create-two=
-perfmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2575">i915#2575</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-in-sync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@v3d/v3d_submit_cl@bad-in-=
sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2575">i915#2575</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@single-out-sync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/igt@v3d/v3d_submit_cl@single-=
out-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2575">i915#2575</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_wait_bo@bad-bo:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@v3d/v3d_wait_bo@bad-bo.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1093=
15">fdo#109315</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_create_bo@create-bo-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-mtlp-4/igt@vc4/vc4_create_bo@create-=
bo-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7711">i915#7711</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-purgeable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-rkl-1/igt@vc4/vc4_purgeable_bo@mark-=
purgeable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7711">i915#7711</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg2-2/igt@vc4/vc4_purgeable_bo@mark-=
unpurgeable-check-retained.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/7711">i915#7711</a>) +9 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-dg1-15/igt@vc4/vc4_purgeable_bo@mark=
-unpurgeable-check-retained.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/7711">i915#7711</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v3/shard-tglu-7/igt@vc4/vc4_purgeable_bo@mark=
-unpurgeable-twice.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-dg2-6/igt@gem_ctx_freq@sysfs@gt0.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/9561">i915#9561</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3=
/shard-dg2-10/igt@gem_ctx_freq@sysfs@gt0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-tglu-10/igt@gem_eio@hibernate.html">ABORT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/10030">i915#10030</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8213">i91=
5#8213</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/839=
8">i915#8398</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_127744v3/shard-tglu-4/igt@gem_eio@hibernate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-mtlp-4/igt@gem_eio@kms.html">ABORT</a> -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-mtlp-5/i=
gt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-dg2-10/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/=
shard-dg2-5/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-dg1-17/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v=
3/shard-dg1-14/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i9=
15#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_127744v3/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-rkl-1/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27744v3/shard-rkl-6/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> +1 oth=
er test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy-all:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-rkl-7/igt@gem_exec_fence@basic-busy-all.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8875">i91=
5#8875</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_127744v3/shard-rkl-1/igt@gem_exec_fence@basic-busy-all.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-glk9/igt@gen9_exec_parse@allowed-single.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i91=
5#5566</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_127744v3/shard-glk1/igt@gen9_exec_parse@allowed-single.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-glk7/igt@i915_module_load@reload-with-fault-injection.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9200">i915#9200</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9849">i915#9849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_127744v3/shard-glk1/igt@i915_module_load@reload-wi=
th-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_127744v3/shard-tglu-2/igt@kms_big_fb@x-tiled=
-max-hw-stride-32bpp-rotate-180-async-flip.html">PASS</a> +2 other tests pa=
ss</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-i=
ndfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_127744v3/shard-snb7/igt@kms_frontbuffer_tr=
acking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html">PASS</a> +9 other tests =
pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-snb4/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdm=
i-a-1.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127744v3/shard-snb2/igt@kms_pipe_crc_basic@suspend-read=
-crc@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i91=
5#9519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_127744v3/shard-dg2-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-a-h=
dmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_127744v3/shard-tglu-2/igt@kms_universal_plane@cursor-=
fb-leak@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-rkl-1/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdm=
i-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127744v3/shard-rkl-3/igt@kms_universal_plane@cursor-fb-=
leak@pipe-b-hdmi-a-2.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-dg1-14/igt@device_reset@unbind-reset-rebind.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9408"=
>i915#9408</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9618">i915#9618</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_127744v3/shard-dg1-13/igt@device_reset@unbind-reset-rebind.h=
tml">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
9618">i915#9618</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-tglu-8/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2876">i915#287=
6</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
127744v3/shard-tglu-8/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-mtlp-2/igt@kms_async_flips@crc@pipe-a-edp-1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8247">i915#=
8247</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_127744v3/shard-mtlp-3/igt@kms_async_flips@crc@pipe-a-edp-1.html">DMESG-F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8561">i=
915#8561</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-snb1/igt@kms_content_protection@content-type-change.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_127744v3/shard-snb7/igt@kms_content_protection@content-type-ch=
ange.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8816">i915#8816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-dg1-15/igt@kms_content_protection@mei-interface.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9424">i=
915#9424</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_127744v3/shard-dg1-12/igt@kms_content_protection@mei-interface.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9433"=
>i915#9433</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4816">i915#4816</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_127744v3/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pi=
pe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14129/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/sha=
rd-rkl-7/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3361">i915#3361</a>)</li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14129 -&gt; Patchwork_127744v3</li>
<li>Piglit: None -&gt; piglit_4509</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14129: b6b50ad4c8d61b14de0ffcf0d52ae2adc0ef39cf @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7675: ffde49e0583ee5053f25a065356bce6bce91047a @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127744v3: b6b50ad4c8d61b14de0ffcf0d52ae2adc0ef39cf @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7314196562508293989==--
