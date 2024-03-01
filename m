Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDF586D8CA
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 02:32:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1733010E7E9;
	Fri,  1 Mar 2024 01:32:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37DBD10E7E5;
 Fri,  1 Mar 2024 01:32:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4315674825882336649=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915=3A_Reuse_RPLU_cdcl?=
 =?utf-8?q?k_fns_for_MTL+?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 01 Mar 2024 01:32:17 -0000
Message-ID: <170925673721.414517.10140944466104515090@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240228214854.2530205-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20240228214854.2530205-1-radhakrishna.sripada@intel.com>
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

--===============4315674825882336649==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Reuse RPLU cdclk fns for MTL+
URL   : https://patchwork.freedesktop.org/series/130529/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14362_full -> Patchwork_130529v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_130529v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_130529v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/index.html

Participating hosts (8 -> 8)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_130529v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@absolute-wf_vblank-interruptible@d-hdmi-a4:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg1-16/igt@kms_flip@absolute-wf_vblank-interruptible@d-hdmi-a4.html

  
New tests
---------

  New tests have been introduced between CI_DRM_14362_full and Patchwork_130529v1_full:

### New IGT tests (7) ###

  * igt@kms_cursor_edge_walk@128x128-right-edge@pipe-a-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [3.46] s

  * igt@kms_cursor_edge_walk@128x128-right-edge@pipe-d-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [3.33] s

  * igt@kms_plane_alpha_blend@constant-alpha-min@pipe-d-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.73] s

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-dp-4:
    - Statuses : 1 skip(s)
    - Exec time: [0.01] s

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-dp-4:
    - Statuses : 1 skip(s)
    - Exec time: [0.03] s

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-dp-4:
    - Statuses : 1 skip(s)
    - Exec time: [0.03] s

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-dp-4:
    - Statuses : 1 skip(s)
    - Exec time: [0.03] s

  

Known issues
------------

  Here are the changes found in Patchwork_130529v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-rkl:          ([PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23]) -> ([PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [FAIL][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46]) ([i915#8293])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-7/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-4/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-4/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-5/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-5/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-5/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-5/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-5/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-7/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-7/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-1/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-1/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-1/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-1/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-3/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-4/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-4/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-5/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-5/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-5/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-5/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-5/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-6/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-6/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-2/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-1/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-1/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-1/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#8411])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@debugfs_test@basic-hwmon:
    - shard-rkl:          NOTRUN -> [SKIP][48] ([i915#9318])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@debugfs_test@basic-hwmon.html

  * igt@drm_fdinfo@busy-idle-check-all@ccs3:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#8414]) +20 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@drm_fdinfo@busy-idle-check-all@ccs3.html

  * igt@drm_fdinfo@most-busy-check-all@vcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][50] ([i915#8414]) +5 other tests skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@drm_fdinfo@most-busy-check-all@vcs0.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#7697])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_ctx_freq@sysfs@gt0:
    - shard-dg2:          [PASS][52] -> [FAIL][53] ([i915#9561])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-dg2-1/igt@gem_ctx_freq@sysfs@gt0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@gem_ctx_freq@sysfs@gt0.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#8555]) +2 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#280])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@gem_ctx_sseu@invalid-sseu.html
    - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#280]) +1 other test skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@bonded-semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#4812])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@gem_exec_balancer@bonded-semaphore.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#4525])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#6334])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#6344])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_capture@many-4k-incremental:
    - shard-dg2:          NOTRUN -> [FAIL][61] ([i915#9606])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@gem_exec_capture@many-4k-incremental.html

  * igt@gem_exec_endless@dispatch@rcs0:
    - shard-dg1:          [PASS][62] -> [TIMEOUT][63] ([i915#3778] / [i915#7392])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-dg1-12/igt@gem_exec_endless@dispatch@rcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg1-16/igt@gem_exec_endless@dispatch@rcs0.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][64] ([i915#2842])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-rkl:          [PASS][65] -> [FAIL][66] ([i915#2842])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][67] ([i915#2842])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#3539] / [i915#4852]) +2 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_gttfill@multigpu-basic:
    - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#7697])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@gem_exec_gttfill@multigpu-basic.html

  * igt@gem_exec_params@secure-non-root:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([fdo#112283])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#3281]) +9 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@gem_exec_reloc@basic-gtt-cpu-active.html

  * igt@gem_exec_reloc@basic-scanout:
    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#3281]) +7 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@gem_exec_reloc@basic-scanout.html

  * igt@gem_exec_reloc@basic-write-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][73] ([i915#3281]) +2 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@gem_exec_reloc@basic-write-gtt.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#4537] / [i915#4812])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#4537] / [i915#4812])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-rkl:          NOTRUN -> [ABORT][76] ([i915#7975] / [i915#8213])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4860])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#4860])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html

  * igt@gem_lmem_swapping@random:
    - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#4613]) +1 other test skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-glk:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-glk4/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify:
    - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#4613])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@gem_lmem_swapping@verify.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#4077]) +7 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_mmap_wc@read-write:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#4083]) +4 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@gem_mmap_wc@read-write.html

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#3282]) +3 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@gem_partial_pwrite_pread@write-uncached.html

  * igt@gem_pread@bench:
    - shard-mtlp:         NOTRUN -> [SKIP][85] ([i915#3282])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@gem_pread@bench.html

  * igt@gem_pread@display:
    - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#3282])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@gem_pread@display.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#4270]) +2 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#4270]) +4 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-mtlp:         NOTRUN -> [SKIP][89] ([i915#4270])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#8428])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#5190]) +8 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][92] ([fdo#109312])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_tiled_pread_basic:
    - shard-mtlp:         NOTRUN -> [SKIP][93] ([i915#4079])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@gem_tiled_pread_basic.html

  * igt@gem_tiling_max_stride:
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#4077]) +4 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@gem_tiling_max_stride.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#3297]) +5 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#3297]) +1 other test skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen3_mixed_blits:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([fdo#109289]) +2 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@gen3_mixed_blits.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#2856])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#2856]) +2 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@gen9_exec_parse@shadow-peek.html
    - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#2527]) +1 other test skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [PASS][101] -> [ABORT][102] ([i915#10131] / [i915#9820])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          NOTRUN -> [INCOMPLETE][103] ([i915#9820] / [i915#9849])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#8399])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [PASS][105] -> [INCOMPLETE][106] ([i915#9407])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_rps@basic-api:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#6621])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#4387])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@i915_pm_sseu@full-enable.html
    - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#4387])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-unsupported:
    - shard-mtlp:         NOTRUN -> [SKIP][110] ([fdo#109302])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@i915_query@query-topology-unsupported.html

  * igt@i915_selftest@mock@memory_region:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][111] ([i915#9311])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@i915_selftest@mock@memory_region.html
    - shard-glk:          NOTRUN -> [DMESG-WARN][112] ([i915#9311])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-glk4/igt@i915_selftest@mock@memory_region.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [PASS][113] -> [FAIL][114] ([i915#10031])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#4215] / [i915#5190])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#4212])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#3826])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][118] ([fdo#111614]) +2 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#5286]) +2 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [PASS][120] -> [FAIL][121] ([i915#5138])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([fdo#111614]) +6 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][123] ([fdo#111614] / [i915#3638])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [PASS][124] -> [FAIL][125] ([i915#3743]) +1 other test fail
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#4538] / [i915#5190]) +11 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#6187])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         NOTRUN -> [SKIP][128] ([fdo#111615]) +1 other test skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][129] ([fdo#110723]) +3 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#7213]) +3 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html

  * igt@kms_chamelium_color@ctm-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([fdo#111827]) +3 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@kms_chamelium_color@ctm-0-25.html

  * igt@kms_chamelium_color@ctm-limited-range:
    - shard-rkl:          NOTRUN -> [SKIP][132] ([fdo#111827]) +2 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@kms_chamelium_color@ctm-limited-range.html

  * igt@kms_chamelium_edid@dp-mode-timings:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#7828]) +6 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@kms_chamelium_edid@dp-mode-timings.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#7828]) +2 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html

  * igt@kms_chamelium_frames@hdmi-crc-multiple:
    - shard-mtlp:         NOTRUN -> [SKIP][135] ([i915#7828]) +2 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_chamelium_frames@hdmi-crc-multiple.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#7118] / [i915#9424])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#3299])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#3116])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@lic-type-1:
    - shard-mtlp:         NOTRUN -> [SKIP][139] ([i915#6944] / [i915#9424])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_content_protection@lic-type-1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][140] ([i915#3359])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#3555] / [i915#8814])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#3359])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#3555]) +2 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-32x32:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#3555])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@kms_cursor_crc@cursor-sliding-32x32.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([fdo#109274] / [i915#5354]) +5 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#9067])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][147] ([fdo#110189] / [i915#9723])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg1-18/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#8812])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#3555] / [i915#3840])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#3555] / [i915#3840]) +1 other test skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#3955])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#9337])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][153] ([fdo#109274]) +6 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([fdo#109274] / [fdo#111767])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#3637]) +2 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#2672]) +3 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#2672])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#2672]) +2 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#5354]) +29 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:
    - shard-snb:          [PASS][160] -> [SKIP][161] ([fdo#109271]) +8 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
    - shard-snb:          [PASS][162] -> [SKIP][163] ([fdo#109271] / [fdo#111767])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#3458]) +17 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#1825]) +2 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][166] ([fdo#111825] / [i915#1825]) +20 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([fdo#111767] / [fdo#111825] / [i915#1825])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#8708]) +16 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
    - shard-rkl:          NOTRUN -> [SKIP][169] ([fdo#111825]) +7 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#3023]) +12 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#10055])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render:
    - shard-mtlp:         NOTRUN -> [SKIP][172] ([fdo#111767] / [i915#1825])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([fdo#111767] / [i915#5354]) +1 other test skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][174] ([i915#8708]) +5 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#3555] / [i915#8228])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_invalid_mode@clock-too-high@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][176] ([i915#9457]) +3 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_invalid_mode@clock-too-high@pipe-a-edp-1.html

  * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
    - shard-mtlp:         NOTRUN -> [SKIP][177] ([fdo#109289]) +1 other test skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][178] ([i915#7862]) +1 other test fail
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-glk4/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][179] ([i915#4573]) +1 other test fail
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-glk8/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#8806])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [FAIL][181] ([i915#8292])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-tglu-6/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#9423]) +3 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-6/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][183] ([i915#9423]) +3 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg1-18/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][184] ([fdo#109271]) +234 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-glk4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][185] ([i915#5176]) +3 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-b-edp-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#9423]) +7 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#5176] / [i915#9423]) +1 other test skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#5235] / [i915#9423]) +11 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#5235]) +3 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#5235]) +3 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][191] ([i915#5235]) +7 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg1-16/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html

  * igt@kms_pm_backlight@fade:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#5354])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#9685])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#9340])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-dg2:          [PASS][195] -> [SKIP][196] ([i915#9519])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [PASS][197] -> [SKIP][198] ([i915#9519]) +1 other test skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@pc8-residency:
    - shard-rkl:          NOTRUN -> [SKIP][199] ([fdo#109293] / [fdo#109506])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@kms_pm_rpm@pc8-residency.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#6524] / [i915#6805])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_prime@d3hot:
    - shard-mtlp:         NOTRUN -> [SKIP][201] ([i915#6524])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-cursor-plane-move-continuous-exceed-sf:
    - shard-rkl:          NOTRUN -> [SKIP][202] ([fdo#110189]) +1 other test skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@kms_psr2_sf@fbc-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-dg2:          NOTRUN -> [SKIP][203] ([fdo#110189]) +3 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-glk:          NOTRUN -> [SKIP][204] ([fdo#109271] / [fdo#110189]) +3 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-glk8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#9683])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@fbc-psr-cursor-blt@edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][206] ([i915#9688]) +2 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_psr@fbc-psr-cursor-blt@edp-1.html

  * igt@kms_psr@fbc-psr-primary-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#9673] / [i915#9732]) +4 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@kms_psr@fbc-psr-primary-mmap-gtt.html

  * igt@kms_psr@psr2-cursor-blt:
    - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#9732]) +15 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@kms_psr@psr2-cursor-blt.html

  * igt@kms_psr@psr2-sprite-mmap-gtt@edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][209] ([i915#4077] / [i915#9688])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_psr@psr2-sprite-mmap-gtt@edp-1.html

  * igt@kms_psr@psr2-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#9732]) +13 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_psr@psr2-suspend.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-mtlp:         NOTRUN -> [SKIP][211] ([i915#4235])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#8623])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:
    - shard-mtlp:         [PASS][213] -> [FAIL][214] ([i915#9196]) +1 other test fail
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
    - shard-tglu:         [PASS][215] -> [FAIL][216] ([i915#9196]) +1 other test fail
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html

  * igt@kms_vblank@ts-continuation-modeset-rpm@pipe-b-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][217] ([fdo#109271]) +2 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-snb7/igt@kms_vblank@ts-continuation-modeset-rpm@pipe-b-vga-1.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-mtlp:         NOTRUN -> [SKIP][218] ([i915#8808] / [i915#9906])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#9906]) +1 other test skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-check-output:
    - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#2437])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#2437])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-glk:          NOTRUN -> [SKIP][222] ([fdo#109271] / [i915#2437]) +1 other test skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-glk8/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@mi-rpc:
    - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#2434] / [i915#7387])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@perf@mi-rpc.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-mtlp:         NOTRUN -> [SKIP][224] ([i915#8850])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@perf_pmu@cpu-hotplug.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#8516])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@perf_pmu@rc6@other-idle-gt0.html
    - shard-rkl:          NOTRUN -> [SKIP][226] ([i915#8516])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([fdo#109295] / [fdo#111656] / [i915#3708])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-read-hang:
    - shard-dg2:          NOTRUN -> [SKIP][228] ([i915#3708])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@prime_vgem@fence-read-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#9917])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-dg2:          NOTRUN -> [FAIL][230] ([i915#9779])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@syncobj_wait@invalid-wait-zero-handles.html

  * igt@v3d/v3d_submit_cl@multisync-out-syncs:
    - shard-rkl:          NOTRUN -> [SKIP][231] ([fdo#109315]) +6 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@v3d/v3d_submit_cl@multisync-out-syncs.html

  * igt@v3d/v3d_submit_csd@bad-bo:
    - shard-mtlp:         NOTRUN -> [SKIP][232] ([i915#2575]) +2 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@v3d/v3d_submit_csd@bad-bo.html

  * igt@v3d/v3d_submit_csd@single-out-sync:
    - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#2575]) +11 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@v3d/v3d_submit_csd@single-out-sync.html

  * igt@vc4/vc4_perfmon@get-values-invalid-pointer:
    - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#7711]) +2 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@vc4/vc4_perfmon@get-values-invalid-pointer.html

  * igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:
    - shard-mtlp:         NOTRUN -> [SKIP][235] ([i915#7711])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@vc4/vc4_purgeable_bo@access-purged-bo-mem.html

  * igt@vc4/vc4_wait_seqno@bad-seqno-1ns:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#7711]) +8 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html

  
#### Possible fixes ####

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [INCOMPLETE][237] ([i915#7297]) -> [PASS][238]
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-rkl:          [FAIL][239] ([i915#2842]) -> [PASS][240] +1 other test pass
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_schedule@wide@rcs0:
    - shard-glk:          [FAIL][241] -> [PASS][242]
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-glk3/igt@gem_exec_schedule@wide@rcs0.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-glk7/igt@gem_exec_schedule@wide@rcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [INCOMPLETE][243] ([i915#9849]) -> [PASS][244]
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-glk2/igt@i915_module_load@reload-with-fault-injection.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [FAIL][245] ([i915#5138]) -> [PASS][246]
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [FAIL][247] ([i915#3743]) -> [PASS][248]
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-tglu-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-snb:          [SKIP][249] ([fdo#109271]) -> [PASS][250] +15 other tests pass
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-snb:          [SKIP][251] ([fdo#109271] / [fdo#111767]) -> [PASS][252] +1 other test pass
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          [SKIP][253] ([i915#9519]) -> [PASS][254]
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-2:
    - shard-rkl:          [FAIL][255] ([i915#9196]) -> [PASS][256]
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-1/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-2.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-6/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-2.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-3:
    - shard-dg1:          [FAIL][257] ([i915#9196]) -> [PASS][258]
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-dg1-13/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-3.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg1-12/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-3.html

  * igt@perf_pmu@busy-double-start@ccs0:
    - shard-mtlp:         [FAIL][259] ([i915#4349]) -> [PASS][260]
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-mtlp-7/igt@perf_pmu@busy-double-start@ccs0.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-mtlp-8/igt@perf_pmu@busy-double-start@ccs0.html

  
#### Warnings ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-dg1:          [ABORT][261] ([i915#9618]) -> [INCOMPLETE][262] ([i915#9408] / [i915#9618])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg1-18/igt@device_reset@unbind-reset-rebind.html

  * igt@kms_content_protection@lic-type-1:
    - shard-snb:          [INCOMPLETE][263] -> [SKIP][264] ([fdo#109271]) +1 other test skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb7/igt@kms_content_protection@lic-type-1.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-snb5/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][265] ([i915#9433]) -> [SKIP][266] ([i915#9424])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-dg1-12/igt@kms_content_protection@mei-interface.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg1-16/igt@kms_content_protection@mei-interface.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][267] ([fdo#110189] / [i915#3955]) -> [SKIP][268] ([i915#3955])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:
    - shard-snb:          [SKIP][269] ([fdo#109271] / [fdo#111767]) -> [SKIP][270] ([fdo#109271]) +3 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render:
    - shard-snb:          [SKIP][271] ([fdo#109271]) -> [SKIP][272] ([fdo#109271] / [fdo#111767])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-snb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_psr@psr-cursor-mmap-cpu:
    - shard-dg2:          [SKIP][273] ([i915#9732]) -> [SKIP][274] ([i915#9673] / [i915#9732]) +1 other test skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-dg2-1/igt@kms_psr@psr-cursor-mmap-cpu.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@kms_psr@psr-cursor-mmap-cpu.html

  * igt@kms_psr@psr-cursor-render:
    - shard-dg2:          [SKIP][275] ([i915#9673] / [i915#9732]) -> [SKIP][276] ([i915#9732]) +2 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-dg2-11/igt@kms_psr@psr-cursor-render.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-10/igt@kms_psr@psr-cursor-render.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#10031]: https://gitlab.freedesktop.org/drm/intel/issues/10031
  [i915#10055]: https://gitlab.freedesktop.org/drm/intel/issues/10055
  [i915#10131]: https://gitlab.freedesktop.org/drm/intel/issues/10131
  [i915#10278]: https://gitlab.freedesktop.org/drm/intel/issues/10278
  [i915#10307]: https://gitlab.freedesktop.org/drm/intel/issues/10307
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6187]: https://gitlab.freedesktop.org/drm/intel/issues/6187
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7862]: https://gitlab.freedesktop.org/drm/intel/issues/7862
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
  [i915#8808]: https://gitlab.freedesktop.org/drm/intel/issues/8808
  [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#8850]: https://gitlab.freedesktop.org/drm/intel/issues/8850
  [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9337]: https://gitlab.freedesktop.org/drm/intel/issues/9337
  [i915#9340]: https://gitlab.freedesktop.org/drm/intel/issues/9340
  [i915#9407]: https://gitlab.freedesktop.org/drm/intel/issues/9407
  [i915#9408]: https://gitlab.freedesktop.org/drm/intel/issues/9408
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/intel/issues/9433
  [i915#9457]: https://gitlab.freedesktop.org/drm/intel/issues/9457
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9561]: https://gitlab.freedesktop.org/drm/intel/issues/9561
  [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
  [i915#9618]: https://gitlab.freedesktop.org/drm/intel/issues/9618
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/intel/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9779]: https://gitlab.freedesktop.org/drm/intel/issues/9779
  [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
  [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
  [i915#9906]: https://gitlab.freedesktop.org/drm/intel/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917


Build changes
-------------

  * Linux: CI_DRM_14362 -> Patchwork_130529v1
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_14362: eec7a135b960c7b83b13a7c821e30f956074e439 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7734: 7734
  Patchwork_130529v1: eec7a135b960c7b83b13a7c821e30f956074e439 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/index.html

--===============4315674825882336649==
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
<tr><td><b>Series:</b></td><td>drm/i915: Reuse RPLU cdclk fns for MTL+</td>=
</tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/130529/">https://patchwork.freedesktop.org/series/130529/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_130529v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_130529v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14362_full -&gt; Patchwork_130529v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_130529v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_130529v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v=
1/index.html</p>
<h2>Participating hosts (8 -&gt; 8)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
130529v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@absolute-wf_vblank-interruptible@d-hdmi-a4:<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg1-16/igt@kms_flip@absolute-wf_vbla=
nk-interruptible@d-hdmi-a4.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_14362_full and Patchwork_1=
30529v1_full:</p>
<h3>New IGT tests (7)</h3>
<ul>
<li>
<p>igt@kms_cursor_edge_walk@128x128-right-edge@pipe-a-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.46] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-right-edge@pipe-d-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.33] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-min@pipe-d-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.73] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-=
dp-4:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-=
dp-4:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-=
dp-4:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-=
dp-4:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130529v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14362/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-4/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_14362/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14362/shard-rkl-5/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-5/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_143=
62/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_14362/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/sha=
rd-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_14362/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-7/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl=
-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-1/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-1/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_14362/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_14362/shard-rkl-1/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-2/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1436=
2/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_14362/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-4/boot.html">PASS=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
130529v1/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rk=
l-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_130529v1/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-5/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13052=
9v1/shard-rkl-6/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_130529v1/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1=
/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_130529v1/shard-rkl-7/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_130529v1/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shar=
d-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_130529v1/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-3/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
30529v1/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-1/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl=
-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_130529v1/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-rkl-1/boot.html">PAS=
S</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8293">i9=
15#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@api_intel_bb@object-reloc-=
keep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@debugfs_test@basic-hwmon.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@ccs3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@drm_fdinfo@busy-idle-check=
-all@ccs3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8414">i915#8414</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@vcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@drm_fdinfo@most-busy-chec=
k-all@vcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8414">i915#8414</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@gem_close_race@multigpu-b=
asic-threads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-dg2-1/igt@gem_ctx_freq@sysfs@gt0.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard=
-dg2-11/igt@gem_ctx_freq@sysfs@gt0.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/9561">i915#9561</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@gem_ctx_persistence@heart=
beat-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8555">i915#8555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
280">i915#280</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
280">i915#280</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@gem_exec_balancer@bonded-=
semaphore.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@gem_exec_balancer@parallel=
-bb-first.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@gem_exec_capture@capture-=
invisible@smem0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/6334">i915#6334</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@gem_exec_capture@capture-r=
ecoverable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-incremental:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@gem_exec_capture@many-4k-i=
ncremental.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9606">i915#9606</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@rcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-dg1-12/igt@gem_exec_endless@dispatch@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13052=
9v1/shard-dg1-16/igt@gem_exec_endless@dispatch@rcs0.html">TIMEOUT</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3778">i915#3778</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#739=
2</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@gem_exec_fair@basic-none-r=
rul@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
30529v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-glk8/igt@gem_exec_fair@basic-pace-so=
lo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@gem_exec_flush@basic-uc-pr=
o-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4852">i915#4852</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@multigpu-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@gem_exec_gttfill@multigpu-=
basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@gem_exec_params@secure-non=
-root.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@gem_exec_reloc@basic-gtt-c=
pu-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3281">i915#3281</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@gem_exec_reloc@basic-scano=
ut.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3281">i915#3281</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@gem_exec_reloc@basic-writ=
e-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@gem_exec_schedule@preempt=
-queue-chain.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@gem_exec_schedule@preempt-=
queue-contexts-chain.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@gem_exec_suspend@basic-s4-=
devices@smem.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7975">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@gem_fence_thrash@bo-copy.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@gem_fenced_exec_thrash@no=
-spare-fences-busy-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@gem_lmem_swapping@random.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-glk4/igt@gem_lmem_swapping@random-en=
gines.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@gem_lmem_swapping@verify.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@gem_mmap_gtt@fault-concurr=
ent-x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4077">i915#4077</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read-write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@gem_mmap_wc@read-write.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
83">i915#4083</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-uncached:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@gem_partial_pwrite_pread@w=
rite-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@bench:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@gem_pread@bench.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i91=
5#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@display:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@gem_pread@display.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i9=
15#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@gem_pxp@create-protected-b=
uffer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@gem_pxp@verify-pxp-executi=
on-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4270">i915#4270</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@gem_pxp@verify-pxp-stale-=
ctx-execution.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@gem_render_copy@yf-tiled-=
mc-ccs-to-vebox-y-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@gem_render_copy@yf-tiled-m=
c-ccs-to-vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5190">i915#5190</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109312">fdo#109312</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@gem_tiled_pread_basic.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/407=
9">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiling_max_stride:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@gem_tiling_max_stride.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/407=
7">i915#4077</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@gem_userptr_blits@create-d=
estroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3297">i915#3297</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@gem_userptr_blits@unsync-u=
nmap-after-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen3_mixed_blits:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@gen3_mixed_blits.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109289">fd=
o#109289</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@gen9_exec_parse@bb-start-=
far.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@gen9_exec_parse@shadow-pee=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2856">i915#2856</a>) +2 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@gen9_exec_parse@shadow-pee=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_130529v1/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/10131">i915#10131</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9820">i915#9820</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@i915_module_load@reload-w=
ith-fault-injection.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/9820">i915#9820</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/9849">i915#9849</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@i915_pm_freq_api@freq-basi=
c-api.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130=
529v1/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9407">i915#9=
407</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@i915_pm_rps@basic-api.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6621=
">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
387">i915#4387</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@i915_query@query-topology=
-unsupported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109302">fdo#109302</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@i915_selftest@mock@memory_=
region.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/9311">i915#9311</a>)</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-glk4/igt@i915_selftest@mock@memory_r=
egion.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9311">i915#9311</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
0529v1/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10031">i915#10031=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@kms_addfb_basic@basic-y-ti=
led-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4215">i915#4215</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@kms_addfb_basic@framebuffe=
r-vs-set-tiling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_addfb_basic@invalid-sm=
em-bo-on-discrete.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3826">i915#3826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-16bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_130529v1/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-strid=
e-64bpp-rotate-0-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@kms_big_fb@x-tiled-64bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@kms_big_fb@x-tiled-8bpp-ro=
tate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_130529v1/shard-tglu-9/igt@kms_big_fb@y-tiled-m=
ax-hw-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 other =
test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +11 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_big_fb@yf-tiled-addfb=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/6187">i915#6187</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D110723">fdo#110723</a>) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@kms_cdclk@mode-transition@=
pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/7213">i915#7213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-25:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@kms_chamelium_color@ctm-0=
-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-limited-range:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@kms_chamelium_color@ctm-li=
mited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-mode-timings:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@kms_chamelium_edid@dp-mod=
e-timings.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7828">i915#7828</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_chamelium_edid@hdmi-ed=
id-stress-resolution-4k.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-multiple:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_chamelium_frames@hdmi=
-crc-multiple.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@kms_content_protection@dp=
-mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_content_protection@dp-=
mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_content_protection@li=
c-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-off=
screen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-ran=
dom-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@kms_cursor_crc@cursor-ran=
dom-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_cursor_crc@cursor-rapi=
d-movement-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x32:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@kms_cursor_crc@cursor-slid=
ing-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@kms_cursor_legacy@cursorb-=
vs-flipb-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5354">i915#5354</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg1-18/igt@kms_dirtyfb@fbc-dirtyfb-i=
octl@a-hdmi-a-4.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D110189">fdo#110189</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@kms_draw_crc@draw-method-m=
map-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@kms_dsc@dsc-with-bpc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_dsc@dsc-with-formats.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_fbcon_fbt@psr.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i9=
15#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@kms_feature_discovery@dp-=
mst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@kms_flip@2x-flip-vs-dpms-o=
ff-vs-modeset.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109274">fdo#109274</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@kms_flip@2x-flip-vs-expire=
d-vblank-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_flip@2x-flip-vs-suspe=
nd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3637">i915#3637</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#26=
72</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a=
>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +29 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-i=
ndfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_130529v1/shard-snb2/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +8 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-i=
ndfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_130529v1/shard-snb4/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +17 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +2 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +20 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D=
"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +16 other tests skip=
</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +7 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3023">i915#3023</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbcpsr-tiling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/10055">i915#10055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-cur-indfb-draw-render.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 other =
test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@=
psr-rgb565-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/8708">i915#8708</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@kms_hdr@static-toggle-dpms=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_invalid_mode@clock-to=
o-high@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9457">i915#9457</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_pipe_b_c_ivb@enable-p=
ipe-c-while-b-has-3-lanes.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-glk4/igt@kms_plane_alpha_blend@alpha=
-basic@pipe-c-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/7862">i915#7862</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-glk8/igt@kms_plane_alpha_blend@alpha=
-transparent-fb@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4573">i915#4573</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@kms_plane_multiple@tiling-=
y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8806">i915#8806</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-tglu-6/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-=
hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-6/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-=
hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg1-18/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-4.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-b-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-glk4/igt@kms_plane_scaling@plane-dow=
nscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)=
 +234 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-b-e=
dp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-modifiers@pipe-b-edp-1.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hd=
mi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +7 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-5/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423<=
/a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25@pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/5235">i915#5235</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +11 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a-e=
dp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_plane_scaling@planes-=
downscale-factor-0-5-unity-scaling@pipe-a-edp-1.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-=
hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-3/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg1-16/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</=
a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_pm_backlight@fade.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5354=
">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@kms_pm_dc@dc5-psr.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9685">i9=
15#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9340"=
>i915#9340</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1=
/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_130529v1/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
519">i915#9519</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pc8-residency:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@kms_pm_rpm@pc8-residency.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9293">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/6524">i915#6524</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/6805">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_prime@d3hot.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6524">i91=
5#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@kms_psr2_sf@fbc-cursor-pla=
ne-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@kms_psr2_sf@overlay-plane-=
move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>) +3 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-glk8/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>) +3 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@kms_psr2_su@frontbuffer-x=
rgb8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-blt@edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_psr@fbc-psr-cursor-bl=
t@edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/9688">i915#9688</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@kms_psr@fbc-psr-primary-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/9673">i915#9673</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@kms_psr@psr2-cursor-blt.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/97=
32">i915#9732</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-gtt@edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_psr@psr2-sprite-mmap-=
gtt@edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4077">i915#4077</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/9688">i915#9688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_psr@psr2-suspend.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9732"=
>i915#9732</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_rotation_crc@sprite-r=
otation-90-pos-100-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@kms_tiled_display@basic-te=
st-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-c-ed=
p-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_130529v1/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pi=
pe-c-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9196">i915#9196</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-c-h=
dmi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_130529v1/shard-tglu-2/igt@kms_universal_plane@cursor-fb-lea=
k@pipe-c-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/9196">i915#9196</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-modeset-rpm@pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-snb7/igt@kms_vblank@ts-continuation-=
modeset-rpm@pipe-b-vga-1.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@kms_vrr@seamless-rr-switc=
h-drrs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8808">i915#8808</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@kms_vrr@seamless-rr-switch=
-vrr.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9906">i915#9906</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@kms_writeback@writeback-c=
heck-output.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@kms_writeback@writeback-in=
valid-parameters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-glk8/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2437">i915#2437</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@perf@mi-rpc.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2434">i915#243=
4</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7387">i9=
15#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@perf_pmu@cpu-hotplug.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8850=
">i915#8850</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-2/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8516">i915#8516</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@prime_vgem@coherency-gtt.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9295">fdo#109295</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111656">fdo#111656</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@prime_vgem@fence-read-hang=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-4/igt@sriov_basic@enable-vfs-aut=
oprobe-off.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-1/igt@syncobj_wait@invalid-wait-=
zero-handles.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/9779">i915#9779</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@multisync-out-syncs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@v3d/v3d_submit_cl@multisyn=
c-out-syncs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109315">fdo#109315</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-bo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@v3d/v3d_submit_csd@bad-bo=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@single-out-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-3/igt@v3d/v3d_submit_csd@single-=
out-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2575">i915#2575</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@get-values-invalid-pointer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-rkl-7/igt@vc4/vc4_perfmon@get-values=
-invalid-pointer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7711">i915#7711</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-mtlp-7/igt@vc4/vc4_purgeable_bo@acce=
ss-purged-bo-mem.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7711">i915#7711</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_seqno@bad-seqno-1ns:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@vc4/vc4_wait_seqno@bad-se=
qno-1ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/7711">i915#7711</a>) +8 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/7297">i915#7297</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-dg2-11/igt@gem_ccs@susp=
end-resume@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-rkl-5/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_130529v1/shard-rkl-4/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@wide@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-glk3/igt@gem_exec_schedule@wide@rcs0.html">FAIL</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/s=
hard-glk7/igt@gem_exec_schedule@wide@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-glk2/igt@i915_module_load@reload-with-fault-injection.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9849">i915#9849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_130529v1/shard-glk8/igt@i915_module_load@reload-with-fau=
lt-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5138">i9=
15#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_130529v1/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-tglu-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-tglu-10/igt@kms_big_fb@y-=
tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-i=
ndfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-snb7/igt@kms_frontbuffer_=
tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">PASS</a> +15 other t=
ests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-i=
ndfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D111767">fdo#111767</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-snb7/igt@kms_fron=
tbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">PASS</a> +1 =
other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130=
529v1/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-rkl-1/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdm=
i-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_130529v1/shard-rkl-6/igt@kms_universal_plane@cursor-fb-=
leak@pipe-b-hdmi-a-2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-dg1-13/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hd=
mi-a-3.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_130529v1/shard-dg1-12/igt@kms_universal_plane@cursor-f=
b-leak@pipe-c-hdmi-a-3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-mtlp-7/igt@perf_pmu@busy-double-start@ccs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4=
349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_130529v1/shard-mtlp-8/igt@perf_pmu@busy-double-start@ccs0.html">PASS</a><=
/li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html">ABORT=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9618">i915=
#9618</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_130529v1/shard-dg1-18/igt@device_reset@unbind-reset-rebind.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9408">=
i915#9408</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
9618">i915#9618</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-snb7/igt@kms_content_protection@lic-type-1.html">INCOMP=
LETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_130529v1/shard-snb5/igt@kms_content_protection@lic-type-1.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#1092=
71</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-dg1-12/igt@kms_content_protection@mei-interface.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9433">i=
915#9433</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_130529v1/shard-dg1-16/igt@kms_content_protection@mei-interface.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9424"=
>i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#=
3955</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_130529v1/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-snb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb=
-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111767">fdo#111767</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-snb7/igt@kms_frontbuffer=
_tracking@psr-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +3 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-i=
ndfb-draw-render.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_130529v1/shard-snb5/igt@kms_frontbuffer_tr=
acking@psr-2p-scndscrn-cur-indfb-draw-render.html">SKIP</a> (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-dg2-1/igt@kms_psr@psr-cursor-mmap-cpu.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130=
529v1/shard-dg2-11/igt@kms_psr@psr-cursor-mmap-cpu.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</=
a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-render:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14362/shard-dg2-11/igt@kms_psr@psr-cursor-render.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9=
732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_130529v1/shard-dg2-10/igt@kms_psr@psr-cursor-render.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) =
+2 other tests skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14362 -&gt; Patchwork_130529v1</li>
<li>Piglit: piglit_4509 -&gt; None</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14362: eec7a135b960c7b83b13a7c821e30f956074e439 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7734: 7734<br />
  Patchwork_130529v1: eec7a135b960c7b83b13a7c821e30f956074e439 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============4315674825882336649==--
