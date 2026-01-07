Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8729BD000E9
	for <lists+intel-gfx@lfdr.de>; Wed, 07 Jan 2026 21:49:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BE1D10E181;
	Wed,  7 Jan 2026 20:49:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9543010E181;
 Wed,  7 Jan 2026 20:49:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7617395755706501124=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/display=3A_Prev?=
 =?utf-8?q?ent_u64_underflow_in_intel=5Ffbc=5Fstolen=5Fend_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 07 Jan 2026 20:49:49 -0000
Message-ID: <176781898959.134483.114971183916889935@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260107162935.8123-2-jonathan.cavitt@intel.com>
In-Reply-To: <20260107162935.8123-2-jonathan.cavitt@intel.com>
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

--===============7617395755706501124==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Prevent u64 underflow in intel_fbc_stolen_end (rev2)
URL   : https://patchwork.freedesktop.org/series/159319/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17776_full -> Patchwork_159319v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_159319v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_159319v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_159319v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_contexts:
    - shard-tglu:         NOTRUN -> [DMESG-FAIL][1] +1 other test dmesg-fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-3/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_content_protection@atomic-dpms-hdcp14:
    - shard-dg1:          NOTRUN -> [SKIP][2] +1 other test skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_content_protection@atomic-dpms-hdcp14.html

  
New tests
---------

  New tests have been introduced between CI_DRM_17776_full and Patchwork_159319v2_full:

### New IGT tests (4) ###

  * igt@kms_color_pipeline@plane-lut1d-post-ctm3x4@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.34] s

  * igt@kms_color_pipeline@plane-lut1d-post-ctm3x4@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.32] s

  * igt@kms_color_pipeline@plane-lut1d-post-ctm3x4@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.32] s

  * igt@kms_content_protection@atomic-dpms-hdcp14@pipe-a-dp-3:
    - Statuses : 1 fail(s)
    - Exec time: [120.79] s

  

Known issues
------------

  Here are the changes found in Patchwork_159319v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-dg1:          NOTRUN -> [SKIP][3] ([i915#8411])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-dg1:          NOTRUN -> [SKIP][4] ([i915#3555] / [i915#9323])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-tglu:         NOTRUN -> [SKIP][5] ([i915#13008])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume:
    - shard-tglu-1:       NOTRUN -> [SKIP][6] ([i915#9323])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@gem_ccs@suspend-resume.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglu-1:       NOTRUN -> [SKIP][7] ([i915#280])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@suspend:
    - shard-rkl:          [PASS][8] -> [ABORT][9] ([i915#15131])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-4/igt@gem_eio@suspend.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-1/igt@gem_eio@suspend.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-tglu:         NOTRUN -> [SKIP][10] ([i915#4525]) +1 other test skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_flush@basic-wb-pro-default:
    - shard-dg1:          NOTRUN -> [SKIP][11] ([i915#3539] / [i915#4852])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@gem_exec_flush@basic-wb-pro-default.html

  * igt@gem_exec_reloc@basic-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][12] ([i915#3281]) +4 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@gem_exec_reloc@basic-gtt.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-dg1:          NOTRUN -> [SKIP][13] ([i915#4812])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-rkl:          [PASS][14] -> [INCOMPLETE][15] ([i915#13356]) +1 other test incomplete
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-8/igt@gem_exec_suspend@basic-s3.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-dg1:          NOTRUN -> [SKIP][16] ([i915#4860]) +4 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][17] ([i915#4613]) +1 other test skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@gem_lmem_swapping@verify-ccs.html
    - shard-glk:          NOTRUN -> [SKIP][18] ([i915#4613]) +1 other test skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk1/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-tglu-1:       NOTRUN -> [SKIP][19] ([i915#4613]) +2 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-dg1:          NOTRUN -> [SKIP][20] ([i915#4077]) +3 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_pread@bench:
    - shard-dg1:          NOTRUN -> [SKIP][21] ([i915#3282]) +1 other test skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@gem_pread@bench.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-dg1:          NOTRUN -> [SKIP][22] ([i915#4270])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_render_tiled_blits@basic:
    - shard-dg1:          NOTRUN -> [SKIP][23] ([i915#4079])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@gem_render_tiled_blits@basic.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][24] ([i915#4885])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-tglu-1:       NOTRUN -> [SKIP][25] ([i915#3297]) +2 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg1:          NOTRUN -> [SKIP][26] ([i915#3297])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-tglu:         NOTRUN -> [SKIP][27] ([i915#3297] / [i915#3323])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-3/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-dg1:          NOTRUN -> [SKIP][28] ([i915#3282] / [i915#3297])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-tglu:         NOTRUN -> [SKIP][29] ([i915#2527] / [i915#2856]) +1 other test skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-tglu-1:       NOTRUN -> [SKIP][30] ([i915#2527] / [i915#2856])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-large:
    - shard-dg1:          NOTRUN -> [SKIP][31] ([i915#2527]) +1 other test skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@gen9_exec_parse@bb-large.html

  * igt@i915_drm_fdinfo@busy-idle@bcs0:
    - shard-dg1:          NOTRUN -> [SKIP][32] ([i915#14073]) +5 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@i915_drm_fdinfo@busy-idle@bcs0.html

  * igt@i915_module_load@fault-injection:
    - shard-glk:          NOTRUN -> [ABORT][33] ([i915#15342] / [i915#15481])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk1/igt@i915_module_load@fault-injection.html

  * igt@i915_module_load@fault-injection@i915_driver_hw_probe:
    - shard-glk:          NOTRUN -> [ABORT][34] ([i915#15481])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk1/igt@i915_module_load@fault-injection@i915_driver_hw_probe.html

  * igt@i915_module_load@fault-injection@intel_connector_register:
    - shard-glk:          NOTRUN -> [DMESG-WARN][35] ([i915#15342])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk1/igt@i915_module_load@fault-injection@intel_connector_register.html

  * igt@i915_module_load@load:
    - shard-tglu:         ([PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58]) -> ([PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [SKIP][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76]) ([i915#14785])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-6/igt@i915_module_load@load.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-8/igt@i915_module_load@load.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-10/igt@i915_module_load@load.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-7/igt@i915_module_load@load.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-9/igt@i915_module_load@load.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-7/igt@i915_module_load@load.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-6/igt@i915_module_load@load.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-4/igt@i915_module_load@load.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-5/igt@i915_module_load@load.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-10/igt@i915_module_load@load.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-2/igt@i915_module_load@load.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-3/igt@i915_module_load@load.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-4/igt@i915_module_load@load.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-3/igt@i915_module_load@load.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-9/igt@i915_module_load@load.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-7/igt@i915_module_load@load.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-10/igt@i915_module_load@load.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-5/igt@i915_module_load@load.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-6/igt@i915_module_load@load.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-4/igt@i915_module_load@load.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-9/igt@i915_module_load@load.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-8/igt@i915_module_load@load.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-3/igt@i915_module_load@load.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@i915_module_load@load.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@i915_module_load@load.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-3/igt@i915_module_load@load.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-7/igt@i915_module_load@load.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-7/igt@i915_module_load@load.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-6/igt@i915_module_load@load.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-3/igt@i915_module_load@load.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-4/igt@i915_module_load@load.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-10/igt@i915_module_load@load.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-4/igt@i915_module_load@load.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-2/igt@i915_module_load@load.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-6/igt@i915_module_load@load.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-6/igt@i915_module_load@load.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@i915_module_load@load.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-5/igt@i915_module_load@load.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-7/igt@i915_module_load@load.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@i915_module_load@load.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-4/igt@i915_module_load@load.html
    - shard-glk:          ([PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87]) -> ([PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [SKIP][95], [PASS][96], [PASS][97])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk5/igt@i915_module_load@load.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk6/igt@i915_module_load@load.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk1/igt@i915_module_load@load.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk9/igt@i915_module_load@load.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk6/igt@i915_module_load@load.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk9/igt@i915_module_load@load.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk5/igt@i915_module_load@load.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk1/igt@i915_module_load@load.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk5/igt@i915_module_load@load.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk9/igt@i915_module_load@load.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk6/igt@i915_module_load@load.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk6/igt@i915_module_load@load.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk1/igt@i915_module_load@load.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk5/igt@i915_module_load@load.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk1/igt@i915_module_load@load.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk6/igt@i915_module_load@load.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk1/igt@i915_module_load@load.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk5/igt@i915_module_load@load.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk9/igt@i915_module_load@load.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk5/igt@i915_module_load@load.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk9/igt@i915_module_load@load.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-tglu-1:       NOTRUN -> [SKIP][98] ([i915#8399])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#11681] / [i915#6621])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_query@hwconfig_table:
    - shard-tglu-1:       NOTRUN -> [SKIP][100] ([i915#6245])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@i915_query@hwconfig_table.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#5723])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_selftest@live@workarounds:
    - shard-dg2:          [PASS][102] -> [DMESG-FAIL][103] ([i915#12061]) +1 other test dmesg-fail
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg2-6/igt@i915_selftest@live@workarounds.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-8/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@sysfs-reader:
    - shard-rkl:          [PASS][104] -> [INCOMPLETE][105] ([i915#4817])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-3/igt@i915_suspend@sysfs-reader.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#4212])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#4212])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-tglu:         NOTRUN -> [SKIP][108] ([i915#1769] / [i915#3555])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][109] +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#5286]) +2 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu-1:       NOTRUN -> [SKIP][111] ([i915#5286]) +5 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [PASS][112] -> [FAIL][113] ([i915#5138])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#4538] / [i915#5286]) +2 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-dg1:          [PASS][115] -> [DMESG-WARN][116] ([i915#4423]) +2 other tests dmesg-warn
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg1-14/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#4538] / [i915#5190])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#4538]) +1 other test skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][119] ([i915#6095]) +206 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-14/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
    - shard-glk10:        NOTRUN -> [SKIP][120] +26 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk10/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][121] ([i915#6095]) +34 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-3/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#10307] / [i915#6095]) +149 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-11/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][123] ([i915#12313])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][124] ([i915#6095]) +64 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#6095]) +65 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#6095]) +35 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#14098] / [i915#6095]) +32 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][128] ([i915#12796]) +1 other test incomplete
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk9/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][129] ([i915#12313])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-4/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-tglu-1:       NOTRUN -> [SKIP][131] ([i915#11151] / [i915#7828]) +6 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_color@ctm-negative:
    - shard-glk:          NOTRUN -> [SKIP][132] +172 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk5/igt@kms_chamelium_color@ctm-negative.html

  * igt@kms_chamelium_hpd@hdmi-hpd-fast:
    - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#11151] / [i915#7828]) +3 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_chamelium_hpd@hdmi-hpd-fast.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm:
    - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#11151] / [i915#7828]) +5 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@kms_chamelium_hpd@hdmi-hpd-storm.html

  * igt@kms_color_pipeline@plane-lut3d-green-only@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#15523]) +3 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-6/igt@kms_color_pipeline@plane-lut3d-green-only@pipe-a-hdmi-a-3.html

  * {igt@kms_content_protection@atomic-dpms-hdcp14@pipe-a-dp-3} (NEW):
    - shard-dg2:          NOTRUN -> [FAIL][136] ([i915#7173])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-11/igt@kms_content_protection@atomic-dpms-hdcp14@pipe-a-dp-3.html

  * igt@kms_content_protection@dp-mst-suspend-resume:
    - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#15330])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@kms_content_protection@dp-mst-suspend-resume.html

  * igt@kms_content_protection@lic-type-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][138] ([i915#6944] / [i915#9424]) +1 other test skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@suspend-resume:
    - shard-tglu-1:       NOTRUN -> [SKIP][139] ([i915#6944])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_content_protection@suspend-resume.html

  * igt@kms_cursor_crc@cursor-offscreen-max-size:
    - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#3555])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_cursor_crc@cursor-offscreen-max-size.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85:
    - shard-tglu:         NOTRUN -> [FAIL][141] ([i915#13566]) +1 other test fail
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@kms_cursor_crc@cursor-onscreen-256x85.html
    - shard-rkl:          [PASS][142] -> [FAIL][143] ([i915#13566])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-256x85.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-256x85.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][144] ([i915#13566]) +3 other tests fail
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#13049]) +1 other test skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#3555])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][147] ([i915#13049])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [FAIL][148] ([i915#13566]) +1 other test fail
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-tglu-1:       NOTRUN -> [SKIP][149] ([i915#3555]) +3 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#13049])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-3/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-rkl:          NOTRUN -> [SKIP][151]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-tglu:         NOTRUN -> [SKIP][152] ([i915#4103])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#3804])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dp_link_training@non-uhbr-mst:
    - shard-tglu-1:       NOTRUN -> [SKIP][154] ([i915#13749])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-mst.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-tglu-1:       NOTRUN -> [SKIP][155] ([i915#13748])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_dp_link_training@uhbr-sst:
    - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#13748])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-3/igt@kms_dp_link_training@uhbr-sst.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#13707])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#3555] / [i915#3840])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#3555] / [i915#3840])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-tglu-1:       NOTRUN -> [SKIP][160] ([i915#3555] / [i915#3840])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_fb_coherency@memset-crc@mmap-gtt:
    - shard-glk:          NOTRUN -> [CRASH][161] ([i915#15351]) +1 other test crash
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk9/igt@kms_fb_coherency@memset-crc@mmap-gtt.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#9337])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-flip-vs-dpms-on-nop:
    - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#9934]) +2 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_flip@2x-flip-vs-dpms-on-nop.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#8381])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-tglu-1:       NOTRUN -> [SKIP][165] ([i915#3637] / [i915#9934]) +3 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][166] -> [TIMEOUT][167] ([i915#14033]) +1 other test timeout
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-snb4/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-plain-flip:
    - shard-tglu:         NOTRUN -> [SKIP][168] ([i915#3637] / [i915#9934]) +2 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#9934])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-fences:
    - shard-dg1:          NOTRUN -> [SKIP][170] ([i915#8381])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][171] ([i915#2587] / [i915#2672]) +1 other test skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][172] ([i915#2587] / [i915#2672]) +4 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#2672] / [i915#3555])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#2587] / [i915#2672] / [i915#3555])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][175] ([i915#2587] / [i915#2672]) +1 other test skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
    - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#2672] / [i915#3555]) +1 other test skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][177] ([i915#2672] / [i915#3555]) +4 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][178] ([i915#15104])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:
    - shard-dg2:          [PASS][179] -> [FAIL][180] ([i915#15389] / [i915#6880])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][181] ([i915#8708]) +5 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][182] +35 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-fullscreen:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#1825]) +2 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#15102] / [i915#3023])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][185] +16 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-tglu-1:       NOTRUN -> [SKIP][186] +43 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-tglu-1:       NOTRUN -> [SKIP][187] ([i915#9766])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][188] ([i915#15102]) +16 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#15102] / [i915#3458]) +1 other test skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#8708]) +1 other test skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#5354]) +3 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
    - shard-dg1:          NOTRUN -> [SKIP][192] ([i915#15102] / [i915#3458]) +7 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
    - shard-tglu-1:       NOTRUN -> [SKIP][193] ([i915#15102]) +13 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          [PASS][194] -> [SKIP][195] ([i915#3555] / [i915#8228])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_hdr@bpc-switch.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-tglu-1:       NOTRUN -> [SKIP][196] ([i915#12713])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg1:          NOTRUN -> [SKIP][197] ([i915#3555] / [i915#8228]) +1 other test skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-toggle:
    - shard-tglu-1:       NOTRUN -> [SKIP][198] ([i915#3555] / [i915#8228])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][199] ([i915#3555] / [i915#8228])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-3/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-dg2:          [PASS][200] -> [SKIP][201] ([i915#15459])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg2-11/igt@kms_joiner@basic-force-big-joiner.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-6/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-dg1:          NOTRUN -> [SKIP][202] ([i915#15458]) +1 other test skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][203] ([i915#15458])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#13522])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglu-1:       NOTRUN -> [SKIP][205] ([i915#1839]) +1 other test skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@legacy:
    - shard-tglu:         NOTRUN -> [SKIP][206] ([i915#6301])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane@plane-panning-bottom-right-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][207] ([i915#13026]) +1 other test incomplete
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk5/igt@kms_plane@plane-panning-bottom-right-suspend.html

  * igt@kms_plane_multiple@2x-tiling-x:
    - shard-tglu-1:       NOTRUN -> [SKIP][208] ([i915#13958])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-x.html

  * igt@kms_plane_multiple@2x-tiling-yf:
    - shard-dg1:          NOTRUN -> [SKIP][209] ([i915#13958])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_plane_multiple@2x-tiling-yf.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-tglu:         NOTRUN -> [SKIP][210] ([i915#14259]) +1 other test skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a:
    - shard-tglu-1:       NOTRUN -> [SKIP][211] ([i915#15329]) +4 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][212] ([i915#9812]) +1 other test skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-dg1:          NOTRUN -> [SKIP][213] ([i915#9685]) +1 other test skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-tglu:         NOTRUN -> [SKIP][214] ([i915#9685])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-rkl:          NOTRUN -> [FAIL][215] ([i915#9295])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg1:          NOTRUN -> [SKIP][216] ([i915#15073])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg1:          [PASS][217] -> [SKIP][218] ([i915#15073]) +1 other test skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-17/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-tglu:         NOTRUN -> [SKIP][219] ([i915#15073])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [PASS][220] -> [SKIP][221] ([i915#15073]) +1 other test skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [PASS][222] -> [SKIP][223] ([i915#15073]) +2 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@package-g7:
    - shard-tglu-1:       NOTRUN -> [SKIP][224] ([i915#15403])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_pm_rpm@package-g7.html

  * igt@kms_pm_rpm@system-suspend-idle:
    - shard-dg2:          [PASS][225] -> [INCOMPLETE][226] ([i915#14419])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg2-11/igt@kms_pm_rpm@system-suspend-idle.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@kms_pm_rpm@system-suspend-idle.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][227] ([i915#14419])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_prime@basic-crc-vgem:
    - shard-dg1:          NOTRUN -> [SKIP][228] ([i915#6524])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_prime@basic-crc-vgem.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][229] ([i915#6524])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:
    - shard-tglu:         NOTRUN -> [SKIP][230] ([i915#11520]) +5 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-glk10:        NOTRUN -> [SKIP][231] ([i915#11520])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk10/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][232] ([i915#11520]) +5 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk5/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html
    - shard-dg1:          NOTRUN -> [SKIP][233] ([i915#11520]) +2 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:
    - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#11520])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#11520]) +1 other test skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][236] ([i915#11520]) +5 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg1:          NOTRUN -> [SKIP][237] ([i915#9683])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@fbc-pr-no-drrs:
    - shard-dg1:          NOTRUN -> [SKIP][238] ([i915#1072] / [i915#9732]) +8 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_psr@fbc-pr-no-drrs.html

  * igt@kms_psr@fbc-psr-no-drrs:
    - shard-tglu:         NOTRUN -> [SKIP][239] ([i915#9732]) +13 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@kms_psr@fbc-psr-no-drrs.html

  * igt@kms_psr@fbc-psr-primary-render:
    - shard-tglu-1:       NOTRUN -> [SKIP][240] ([i915#9732]) +14 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_psr@fbc-psr-primary-render.html

  * igt@kms_psr@psr2-sprite-render:
    - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#1072] / [i915#9732]) +2 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@kms_psr@psr2-sprite-render.html

  * igt@kms_rotation_crc@multiplane-rotation:
    - shard-glk:          NOTRUN -> [DMESG-FAIL][242] ([i915#118])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk1/igt@kms_rotation_crc@multiplane-rotation.html

  * igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
    - shard-glk:          NOTRUN -> [INCOMPLETE][243] ([i915#15500])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk5/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html

  * igt@kms_scaling_modes@scaling-mode-center:
    - shard-tglu:         NOTRUN -> [SKIP][244] ([i915#3555]) +2 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@kms_scaling_modes@scaling-mode-center.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu-1:       NOTRUN -> [SKIP][245] ([i915#8623])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_universal_plane@cursor-fb-leak:
    - shard-dg1:          [PASS][246] -> [FAIL][247] ([i915#9196])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg1-18/igt@kms_universal_plane@cursor-fb-leak.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_universal_plane@cursor-fb-leak.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][248] ([i915#9196])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-3.html

  * igt@kms_vrr@negative-basic:
    - shard-dg1:          NOTRUN -> [SKIP][249] ([i915#3555] / [i915#9906])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-tglu-1:       NOTRUN -> [SKIP][250] ([i915#9906]) +1 other test skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-dg1:          NOTRUN -> [SKIP][251] ([i915#2433])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@perf@unprivileged-single-ctx-counters.html

  * igt@perf_pmu@module-unload:
    - shard-tglu:         NOTRUN -> [FAIL][252] ([i915#14433])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@perf_pmu@module-unload.html

  * igt@prime_vgem@coherency-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][253] ([i915#3708] / [i915#4077])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@prime_vgem@coherency-gtt.html

  * igt@sriov_basic@bind-unbind-vf@vf-1:
    - shard-tglu-1:       NOTRUN -> [FAIL][254] ([i915#12910]) +18 other tests fail
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html

  
#### Possible fixes ####

  * igt@gem_exec_big@single:
    - shard-tglu:         [ABORT][255] ([i915#11713]) -> [PASS][256]
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-5/igt@gem_exec_big@single.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-3/igt@gem_exec_big@single.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-glk:          [INCOMPLETE][257] ([i915#13356] / [i915#14586]) -> [PASS][258]
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk9/igt@gem_workarounds@suspend-resume-fd.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk10:        [ABORT][259] ([i915#5566]) -> [PASS][260]
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk10/igt@gen9_exec_parse@allowed-all.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk10/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-tglu:         [WARN][261] ([i915#13790] / [i915#2681]) -> [PASS][262] +1 other test pass
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-fence.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rpm@gem-execbuf-stress@lmem0:
    - shard-dg1:          [DMESG-WARN][263] ([i915#4423]) -> [PASS][264]
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg1-14/igt@i915_pm_rpm@gem-execbuf-stress@lmem0.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@i915_pm_rpm@gem-execbuf-stress@lmem0.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-dg1:          [ABORT][265] ([i915#13562]) -> [PASS][266]
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg1-12/igt@i915_pm_rpm@system-suspend-execbuf.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [FAIL][267] ([i915#5138]) -> [PASS][268]
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_dp_link_training@non-uhbr-sst:
    - shard-dg2:          [SKIP][269] ([i915#13749]) -> [PASS][270]
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg2-1/igt@kms_dp_link_training@non-uhbr-sst.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-11/igt@kms_dp_link_training@non-uhbr-sst.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-dg2:          [FAIL][271] ([i915#15389] / [i915#6880]) -> [PASS][272] +1 other test pass
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-rkl:          [SKIP][273] ([i915#6953]) -> [PASS][274]
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg1:          [SKIP][275] ([i915#15073]) -> [PASS][276] +2 other tests pass
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg1-14/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  
#### Warnings ####

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-rkl:          [SKIP][277] ([i915#14544] / [i915#8411]) -> [SKIP][278] ([i915#8411]) +1 other test skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@api_intel_bb@object-reloc-purge-cache.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-rkl:          [SKIP][279] ([i915#14544] / [i915#3555] / [i915#9323]) -> [SKIP][280] ([i915#3555] / [i915#9323])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          [SKIP][281] ([i915#14544] / [i915#9323]) -> [SKIP][282] ([i915#9323])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          [SKIP][283] ([i915#9323]) -> [SKIP][284] ([i915#14544] / [i915#9323])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@gem_ccs@suspend-resume.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@gem_ccs@suspend-resume.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          [SKIP][285] ([i915#14544] / [i915#8562]) -> [SKIP][286] ([i915#8562])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@gem_create@create-ext-set-pat.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-rkl:          [SKIP][287] ([i915#280]) -> [SKIP][288] ([i915#14544] / [i915#280])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-3/igt@gem_ctx_sseu@invalid-sseu.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-rkl:          [SKIP][289] ([i915#4525]) -> [SKIP][290] ([i915#14544] / [i915#4525])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_capture@capture-invisible:
    - shard-rkl:          [SKIP][291] ([i915#14544] / [i915#6334]) -> [SKIP][292] ([i915#6334]) +1 other test skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@gem_exec_capture@capture-invisible.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_exec_capture@capture-invisible.html

  * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
    - shard-rkl:          [SKIP][293] ([i915#14544] / [i915#3281]) -> [SKIP][294] ([i915#3281]) +3 other tests skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-softpin:
    - shard-rkl:          [SKIP][295] ([i915#3281]) -> [SKIP][296] ([i915#14544] / [i915#3281]) +5 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@gem_exec_reloc@basic-softpin.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@gem_exec_reloc@basic-softpin.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-rkl:          [SKIP][297] ([i915#14544] / [i915#4613] / [i915#7582]) -> [SKIP][298] ([i915#4613] / [i915#7582])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-rkl:          [SKIP][299] ([i915#4613]) -> [SKIP][300] ([i915#14544] / [i915#4613]) +2 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-multi.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@verify:
    - shard-rkl:          [SKIP][301] ([i915#14544] / [i915#4613]) -> [SKIP][302] ([i915#4613]) +1 other test skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@gem_lmem_swapping@verify.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_lmem_swapping@verify.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-rkl:          [SKIP][303] ([i915#3282]) -> [SKIP][304] ([i915#14544] / [i915#3282]) +3 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          [SKIP][305] ([i915#14544] / [i915#3282]) -> [SKIP][306] ([i915#3282]) +2 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@gem_pwrite@basic-exhaustion.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-rkl:          [SKIP][307] ([i915#13717] / [i915#14544]) -> [SKIP][308] ([i915#13717])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-context.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-rkl:          [SKIP][309] ([i915#3297]) -> [SKIP][310] ([i915#14544] / [i915#3297]) +1 other test skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@gem_userptr_blits@coherency-unsync.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-rkl:          [SKIP][311] ([i915#14544] / [i915#3297]) -> [SKIP][312] ([i915#3297]) +2 other tests skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-rkl:          [SKIP][313] -> [SKIP][314] ([i915#14544]) +9 other tests skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-3/igt@gen7_exec_parse@chained-batch.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-rkl:          [SKIP][315] ([i915#14544] / [i915#2527]) -> [SKIP][316] ([i915#2527]) +2 other tests skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@gen9_exec_parse@allowed-all.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-rkl:          [SKIP][317] ([i915#2527]) -> [SKIP][318] ([i915#14544] / [i915#2527]) +1 other test skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@gen9_exec_parse@batch-invalid-length.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-rkl:          [SKIP][319] ([i915#14544] / [i915#8399]) -> [SKIP][320] ([i915#8399])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-rkl:          [SKIP][321] ([i915#14498] / [i915#14544]) -> [SKIP][322] ([i915#14498])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-dg2:          [ABORT][323] -> [SKIP][324]
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg2-5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_query@hwconfig_table:
    - shard-rkl:          [SKIP][325] ([i915#6245]) -> [SKIP][326] ([i915#14544] / [i915#6245])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@i915_query@hwconfig_table.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@i915_query@hwconfig_table.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-rkl:          [SKIP][327] ([i915#12454] / [i915#12712] / [i915#14544]) -> [SKIP][328] ([i915#12454] / [i915#12712])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-rkl:          [SKIP][329] ([i915#14544] / [i915#9531]) -> [SKIP][330] ([i915#9531])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-rkl:          [SKIP][331] ([i915#1769] / [i915#3555]) -> [SKIP][332] ([i915#14544] / [i915#1769] / [i915#3555])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          [SKIP][333] ([i915#5286]) -> [SKIP][334] ([i915#14544] / [i915#5286]) +3 other tests skip
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_big_fb@4-tiled-addfb.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][335] ([i915#14544] / [i915#5286]) -> [SKIP][336] ([i915#5286]) +3 other tests skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          [SKIP][337] ([i915#14544] / [i915#3638]) -> [SKIP][338] ([i915#3638])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-rkl:          [SKIP][339] ([i915#3638]) -> [SKIP][340] ([i915#14544] / [i915#3638]) +2 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs:
    - shard-rkl:          [SKIP][341] ([i915#14098] / [i915#6095]) -> [SKIP][342] ([i915#14098] / [i915#14544] / [i915#6095]) +25 other tests skip
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][343] ([i915#12313]) -> [SKIP][344] ([i915#12313] / [i915#14544])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][345] ([i915#6095]) -> [SKIP][346] ([i915#14544] / [i915#6095]) +24 other tests skip
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
    - shard-rkl:          [SKIP][347] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][348] ([i915#14098] / [i915#6095]) +9 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][349] ([i915#12313] / [i915#14544]) -> [SKIP][350] ([i915#12313]) +1 other test skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_chamelium_frames@hdmi-crc-single:
    - shard-rkl:          [SKIP][351] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][352] ([i915#11151] / [i915#7828]) +5 other tests skip
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-single.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-single.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-rkl:          [SKIP][353] ([i915#11151] / [i915#7828]) -> [SKIP][354] ([i915#11151] / [i915#14544] / [i915#7828]) +5 other tests skip
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_content_protection@atomic-dpms-hdcp14:
    - shard-dg2:          [SKIP][355] -> [FAIL][356] ([i915#7173])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg2-1/igt@kms_content_protection@atomic-dpms-hdcp14.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-11/igt@kms_content_protection@atomic-dpms-hdcp14.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          [SKIP][357] ([i915#14544] / [i915#6944] / [i915#9424]) -> [SKIP][358] ([i915#6944] / [i915#9424])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_content_protection@mei-interface.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_content_protection@mei-interface.html
    - shard-dg1:          [SKIP][359] ([i915#9433]) -> [SKIP][360] ([i915#6944] / [i915#9424])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg1-12/igt@kms_content_protection@mei-interface.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-14/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@suspend-resume:
    - shard-rkl:          [SKIP][361] ([i915#6944]) -> [SKIP][362] ([i915#14544] / [i915#6944])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_content_protection@suspend-resume.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_content_protection@suspend-resume.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][363] ([i915#6944] / [i915#7118] / [i915#7162] / [i915#9424]) -> [SKIP][364] ([i915#6944] / [i915#7118] / [i915#9424])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg2-11/igt@kms_content_protection@type1.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-6/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent:
    - shard-rkl:          [SKIP][365] ([i915#14544] / [i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][366] ([i915#6944] / [i915#7118] / [i915#9424]) +2 other tests skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_content_protection@uevent.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          [SKIP][367] ([i915#13049] / [i915#14544]) -> [SKIP][368] ([i915#13049]) +1 other test skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x170.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-rkl:          [SKIP][369] ([i915#3555]) -> [SKIP][370] ([i915#14544] / [i915#3555]) +3 other tests skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-rkl:          [SKIP][371] ([i915#14544] / [i915#9723]) -> [SKIP][372] ([i915#9723])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dp_link_training@non-uhbr-sst:
    - shard-rkl:          [SKIP][373] ([i915#13749]) -> [SKIP][374] ([i915#13749] / [i915#14544])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_dp_link_training@non-uhbr-sst.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-sst.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-rkl:          [SKIP][375] ([i915#13748]) -> [SKIP][376] ([i915#13748] / [i915#14544])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-3/igt@kms_dp_link_training@uhbr-mst.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_dp_linktrain_fallback@dsc-fallback:
    - shard-rkl:          [SKIP][377] ([i915#13707] / [i915#14544]) -> [SKIP][378] ([i915#13707])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_dp_linktrain_fallback@dsc-fallback.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-rkl:          [SKIP][379] ([i915#14544] / [i915#3840]) -> [SKIP][380] ([i915#3840])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-rkl:          [SKIP][381] ([i915#3555] / [i915#3840]) -> [SKIP][382] ([i915#14544] / [i915#3555] / [i915#3840])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_dsc@dsc-with-formats.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          [SKIP][383] ([i915#14544] / [i915#3555] / [i915#3840]) -> [SKIP][384] ([i915#3555] / [i915#3840])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][385] ([i915#3955]) -> [SKIP][386] ([i915#14544] / [i915#3955])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_fbcon_fbt@psr.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][387] ([i915#14544] / [i915#3955]) -> [SKIP][388] ([i915#3955])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-rkl:          [SKIP][389] ([i915#14544] / [i915#9934]) -> [SKIP][390] ([i915#9934]) +4 other tests skip
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-rkl:          [SKIP][391] ([i915#9934]) -> [SKIP][392] ([i915#14544] / [i915#9934]) +2 other tests skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-glk:          [INCOMPLETE][393] ([i915#12314] / [i915#12745] / [i915#4839] / [i915#6113]) -> [INCOMPLETE][394] ([i915#12745] / [i915#4839])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk5/igt@kms_flip@2x-flip-vs-suspend.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk6/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [INCOMPLETE][395] ([i915#12314] / [i915#4839] / [i915#6113]) -> [INCOMPLETE][396] ([i915#4839])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk5/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk6/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          [SKIP][397] ([i915#14544] / [i915#2672]) -> [SKIP][398] ([i915#2672]) +1 other test skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          [SKIP][399] ([i915#2672]) -> [SKIP][400] ([i915#14544] / [i915#2672]) +2 other tests skip
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-rkl:          [SKIP][401] ([i915#14544] / [i915#2672] / [i915#3555]) -> [SKIP][402] ([i915#2672] / [i915#3555]) +1 other test skip
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-rkl:          [SKIP][403] ([i915#2672] / [i915#3555]) -> [SKIP][404] ([i915#14544] / [i915#2672] / [i915#3555]) +2 other tests skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][405] ([i915#1825]) -> [SKIP][406] ([i915#14544] / [i915#1825]) +19 other tests skip
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt:
    - shard-rkl:          [SKIP][407] ([i915#15102]) -> [SKIP][408] ([i915#14544] / [i915#15102]) +2 other tests skip
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-dg2:          [SKIP][409] ([i915#15102] / [i915#3458]) -> [SKIP][410] ([i915#10433] / [i915#15102] / [i915#3458]) +1 other test skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][411] ([i915#14544]) -> [SKIP][412] +14 other tests skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-rkl:          [SKIP][413] ([i915#9766]) -> [SKIP][414] ([i915#14544] / [i915#9766])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][415] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][416] ([i915#15102] / [i915#3458]) +2 other tests skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-rkl:          [SKIP][417] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][418] ([i915#15102] / [i915#3023]) +15 other tests skip
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite:
    - shard-dg1:          [SKIP][419] ([i915#4423]) -> [SKIP][420]
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          [SKIP][421] ([i915#14544] / [i915#1825]) -> [SKIP][422] ([i915#1825]) +23 other tests skip
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-rkl:          [SKIP][423] ([i915#15102] / [i915#3023]) -> [SKIP][424] ([i915#14544] / [i915#15102] / [i915#3023]) +10 other tests skip
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-rkl:          [SKIP][425] ([i915#12713]) -> [SKIP][426] ([i915#13331] / [i915#14544])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_hdr@brightness-with-hdr.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_hdr@brightness-with-hdr.html
    - shard-dg1:          [SKIP][427] ([i915#12713]) -> [SKIP][428] ([i915#1187] / [i915#12713])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg1-19/igt@kms_hdr@brightness-with-hdr.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_joiner@basic-max-non-joiner:
    - shard-rkl:          [SKIP][429] ([i915#13688]) -> [SKIP][430] ([i915#13688] / [i915#14544])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_joiner@basic-max-non-joiner.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_joiner@basic-max-non-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-rkl:          [SKIP][431] ([i915#15458]) -> [SKIP][432] ([i915#14544] / [i915#15458])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-3/igt@kms_joiner@basic-ultra-joiner.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-rkl:          [SKIP][433] ([i915#14544] / [i915#15459]) -> [SKIP][434] ([i915#15459])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-big-joiner.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][435] ([i915#1839] / [i915#4816]) -> [SKIP][436] ([i915#14544] / [i915#1839] / [i915#4816])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_stress@stress-xrgb8888-yftiled:
    - shard-rkl:          [SKIP][437] ([i915#14544] / [i915#14712]) -> [SKIP][438] ([i915#14712])
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-rkl:          [SKIP][439] ([i915#14544] / [i915#3555]) -> [SKIP][440] ([i915#3555]) +5 other tests skip
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_plane_lowres@tiling-yf.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_multiple@2x-tiling-4:
    - shard-rkl:          [SKIP][441] ([i915#13958]) -> [SKIP][442] ([i915#13958] / [i915#14544]) +1 other test skip
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-4.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-4.html

  * igt@kms_plane_multiple@2x-tiling-none:
    - shard-rkl:          [SKIP][443] ([i915#13958] / [i915#14544]) -> [SKIP][444] ([i915#13958])
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_plane_multiple@2x-tiling-none.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:
    - shard-rkl:          [SKIP][445] ([i915#15329]) -> [SKIP][446] ([i915#14544] / [i915#15329]) +7 other tests skip
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][447] ([i915#3828]) -> [SKIP][448] ([i915#9340])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-8/igt@kms_pm_lpsp@kms-lpsp.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][449] ([i915#15073]) -> [SKIP][450] ([i915#14544] / [i915#15073])
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-rkl:          [SKIP][451] ([i915#6524]) -> [SKIP][452] ([i915#14544] / [i915#6524])
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_prime@basic-crc-hybrid.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
    - shard-rkl:          [SKIP][453] ([i915#11520] / [i915#14544]) -> [SKIP][454] ([i915#11520]) +4 other tests skip
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          [SKIP][455] ([i915#11520]) -> [SKIP][456] ([i915#11520] / [i915#14544]) +3 other tests skip
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-rkl:          [SKIP][457] ([i915#14544] / [i915#9683]) -> [SKIP][458] ([i915#9683])
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_psr2_su@page_flip-xrgb8888.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          [SKIP][459] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][460] ([i915#1072] / [i915#9732]) +14 other tests skip
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@psr-cursor-plane-move:
    - shard-dg1:          [SKIP][461] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][462] ([i915#1072] / [i915#9732])
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg1-12/igt@kms_psr@psr-cursor-plane-move.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_psr@psr-cursor-plane-move.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-rkl:          [SKIP][463] ([i915#1072] / [i915#9732]) -> [SKIP][464] ([i915#1072] / [i915#14544] / [i915#9732]) +11 other tests skip
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-3/igt@kms_psr@psr-sprite-plane-move.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-dg1:          [SKIP][465] ([i915#5289]) -> [SKIP][466] ([i915#4423] / [i915#5289])
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-dg1-17/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-17/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-rkl:          [SKIP][467] ([i915#14544] / [i915#8623]) -> [SKIP][468] ([i915#8623])
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          [SKIP][469] ([i915#8623]) -> [SKIP][470] ([i915#14544] / [i915#8623])
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@lobf:
    - shard-rkl:          [SKIP][471] ([i915#11920] / [i915#14544]) -> [SKIP][472] ([i915#11920])
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@kms_vrr@lobf.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_vrr@lobf.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-rkl:          [SKIP][473] ([i915#9906]) -> [SKIP][474] ([i915#14544] / [i915#9906]) +2 other tests skip
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@kms_vrr@seamless-rr-switch-virtual.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-rkl:          [SKIP][475] ([i915#14544] / [i915#3708]) -> [SKIP][476] ([i915#3708])
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-6/igt@prime_vgem@fence-flip-hang.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@prime_vgem@fence-flip-hang.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-rkl:          [SKIP][477] ([i915#9917]) -> [SKIP][478] ([i915#14544] / [i915#9917])
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-rkl-7/igt@sriov_basic@bind-unbind-vf.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@sriov_basic@bind-unbind-vf.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713
  [i915#118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118
  [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
  [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
  [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
  [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
  [i915#13026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13331]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
  [i915#13562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13562
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
  [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
  [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
  [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
  [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14586]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586
  [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
  [i915#14785]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14785
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
  [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
  [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
  [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
  [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
  [i915#15351]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15351
  [i915#15389]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15389
  [i915#15403]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15403
  [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
  [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
  [i915#15481]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15481
  [i915#15500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15500
  [i915#15523]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15523
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
  [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
  [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
  [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_17776 -> Patchwork_159319v2

  CI-20190529: 20190529
  CI_DRM_17776: 77ca0c5f244b2796408d20cf3c0741094304e09f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8690: 1022f2615722b105176a8cc4ce102896329b5016 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_159319v2: 77ca0c5f244b2796408d20cf3c0741094304e09f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/index.html

--===============7617395755706501124==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Prevent u64 underflow in i=
ntel_fbc_stolen_end (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/159319/">https://patchwork.freedesktop.org/series/159319/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_159319v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_159319v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17776_full -&gt; Patchwork_159319v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_159319v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_159319v2_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
159319v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-3/igt@i915_selftest@live@gem_co=
ntexts.html">DMESG-FAIL</a> +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms-hdcp14:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_content_protection@at=
omic-dpms-hdcp14.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_17776_full and Patchwork_1=
59319v2_full:</p>
<h3>New IGT tests (4)</h3>
<ul>
<li>
<p>igt@kms_color_pipeline@plane-lut1d-post-ctm3x4@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.34] s</li>
</ul>
</li>
<li>
<p>igt@kms_color_pipeline@plane-lut1d-post-ctm3x4@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.32] s</li>
</ul>
</li>
<li>
<p>igt@kms_color_pipeline@plane-lut1d-post-ctm3x4@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.32] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms-hdcp14@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [120.79] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_159319v2_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@api_intel_bb@blit-reloc-k=
eep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@gem_ccs@ctrl-surf-copy.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@gem_ccs@large-ctrl-surf-c=
opy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/13008">i915#13008</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@gem_ccs@suspend-resume.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-4/igt@gem_eio@suspend.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-1=
/igt@gem_eio@suspend.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/15131">i915#15131</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@gem_exec_balancer@paralle=
l-keep-in-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4525">i915#4525</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-pro-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@gem_exec_flush@basic-wb-p=
ro-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@gem_exec_reloc@basic-gtt.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3281">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@gem_exec_schedule@semapho=
re-power.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-8/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/sh=
ard-rkl-3/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>=
) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@gem_fenced_exec_thrash@no=
-spare-fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/4860">i915#4860</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@gem_lmem_swapping@verify-=
ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/4613">i915#4613</a>) +1 other test skip</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-glk1/igt@gem_lmem_swapping@verify-cc=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@gem_lmem_swapping@verify-=
random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@gem_mmap_gtt@cpuset-basic=
-small-copy-xy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4077">i915#4077</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@bench:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@gem_pread@bench.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3=
282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@gem_pxp@reject-modify-con=
text-protection-on.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@gem_render_tiled_blits@ba=
sic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@gem_softpin@evict-snoop-i=
nterruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@gem_userptr_blits@coheren=
cy-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@gem_userptr_blits@create-=
destroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-3/igt@gem_userptr_blits@dmabuf-=
sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@gem_userptr_blits@forbidd=
en-operations.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3282">i915#3282</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@gen9_exec_parse@basic-rej=
ected-ctx-param.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@gen9_exec_parse@batch-inv=
alid-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@gen9_exec_parse@bb-large.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@busy-idle@bcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@i915_drm_fdinfo@busy-idle=
@bcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14073">i915#14073</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-glk1/igt@i915_module_load@fault-inje=
ction.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/15342">i915#15342</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15481">i915#15481</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@i915_driver_hw_probe:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-glk1/igt@i915_module_load@fault-inje=
ction@i915_driver_hw_probe.html">ABORT</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/15481">i915#15481</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@intel_connector_register:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-glk1/igt@i915_module_load@fault-inje=
ction@intel_connector_register.html">DMESG-WARN</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/15342">i915#15342</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-tglu:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17776/shard-tglu-6/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-8/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_17776/shard-tglu-10/igt@i915_module_load@load.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776=
/shard-tglu-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-9/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_17776/shard-tglu-7/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-6/i=
gt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_17776/shard-tglu-4/igt@i915_module_load@load.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776=
/shard-tglu-5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-10/igt@i915_module=
_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_17776/shard-tglu-2/igt@i915_module_load@load.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-3/=
igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_17776/shard-tglu-4/igt@i915_module_load@load.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1777=
6/shard-tglu-3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-9/igt@i915_module=
_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_17776/shard-tglu-7/igt@i915_module_load@load.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-10=
/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-5/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_177=
76/shard-tglu-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-4/igt@i915_modul=
e_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_17776/shard-tglu-9/igt@i915_module_load@load.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-8=
/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-3/igt@i915_module_load@load.htm=
l">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_159319v2/shard-tglu-8/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tg=
lu-9/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-3/igt@i915_module_loa=
d@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_159319v2/shard-tglu-7/igt@i915_module_load@load.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard=
-tglu-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-6/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-tglu-3/igt@i915_module_load@load.html">SKIP</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/sh=
ard-tglu-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-10/igt@i915_mod=
ule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_159319v2/shard-tglu-4/igt@i915_module_load@load.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v=
2/shard-tglu-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-6/igt@i915_=
module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_159319v2/shard-tglu-6/igt@i915_module_load@load.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1593=
19v2/shard-tglu-9/igt@i915_module_load@load.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-5/igt@i9=
15_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_159319v2/shard-tglu-7/igt@i915_module_load@load.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
59319v2/shard-tglu-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-4/igt=
@i915_module_load@load.html">PASS</a>) (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/14785">i915#14785</a>)</li>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17776/shard-glk5/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk6/igt@i9=
15_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_17776/shard-glk1/igt@i915_module_load@load.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-=
glk9/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk6/igt@i915_module_load@load.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
7776/shard-glk9/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk5/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_17776/shard-glk1/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk5/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_17776/shard-glk9/igt@i915_module_load@load.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard=
-glk6/igt@i915_module_load@load.html">PASS</a>) -&gt; (<a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk6/igt@i915_modu=
le_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-glk1/igt@i915_module_load@load.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/s=
hard-glk5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk1/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-glk6/igt@i915_module_load@load.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shar=
d-glk1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk5/igt@i915_module_loa=
d@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_159319v2/shard-glk9/igt@i915_module_load@load.html">SKIP</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-g=
lk5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk9/igt@i915_module_load@l=
oad.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@i915_pm_freq_api@freq-res=
et-multiple.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@i915_pm_rps@min-max-confi=
g-loaded.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/11681">i915#11681</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@i915_query@hwconfig_table=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@i915_query@test-query-geo=
metry-subslices.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg2-6/igt@i915_selftest@live@workarounds.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319=
v2/shard-dg2-8/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915=
#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-3/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/sh=
ard-rkl-6/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@kms_addfb_basic@addfb25-x-=
tiled-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_addfb_basic@addfb25-x=
-tiled-mismatch-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-3/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3=
555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@kms_big_fb@4-tiled-16bpp-r=
otate-270.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_big_fb@4-tiled-32bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +5 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_159319v2/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bp=
p-rotate-0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286=
</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg1-14/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159=
319v2/shard-dg1-18/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423"=
>i915#4423</a>) +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@kms_big_fb@yf-tiled-max-hw=
-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#51=
90</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-14/igt@kms_ccs@bad-rotation-90-4=
-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +206 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-glk10/igt@kms_ccs@bad-rotation-90-y-=
tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> +26 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-3/igt@kms_ccs@ccs-on-another-bo=
-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +34 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg2-11/igt@kms_ccs@crc-primary-basic=
-y-tiled-gen12-rc-ccs@pipe-a-dp-3.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095=
</a>) +149 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1:=
</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +64=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +65 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg2-6/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +35 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#609=
5</a>) +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-glk9/igt@kms_ccs@crc-primary-suspend=
-y-tiled-ccs@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/12796">i915#12796</a>) +1 other =
test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_ccs@random-ccs-data-4=
-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg2-4/igt@kms_ccs@random-ccs-data-yf=
-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i9=
15#6095</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_chamelium_audio@hdmi-=
audio-edid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +6 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-negative:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-glk5/igt@kms_chamelium_color@ctm-neg=
ative.html">SKIP</a> +172 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-fast:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_chamelium_hpd@hdmi-hp=
d-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@kms_chamelium_hpd@hdmi-hp=
d-storm.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_color_pipeline@plane-lut3d-green-only@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg2-6/igt@kms_color_pipeline@plane-l=
ut3d-green-only@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/15523">i915#15523</a>) +3 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>{igt@kms_content_protection@atomic-dpms-hdcp14@pipe-a-dp-3} (NEW):</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg2-11/igt@kms_content_protection@at=
omic-dpms-hdcp14@pipe-a-dp-3.html">FAIL</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-suspend-resume:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@kms_content_protection@dp=
-mst-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_content_protection@li=
c-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@suspend-resume:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_content_protection@su=
spend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-max-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_cursor_crc@cursor-offs=
creen-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@kms_cursor_crc@cursor-ons=
creen-256x85.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-256x85.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_159319v2/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-256x85.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/135=
66">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_cursor_crc@cursor-onsc=
reen-256x85@pipe-a-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +3 other tests f=
ail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_cursor_crc@cursor-ons=
creen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_cursor_crc@cursor-ran=
dom-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_cursor_crc@cursor-ran=
dom-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_cursor_crc@cursor-sli=
ding-128x42@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fa=
il</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_cursor_crc@cursor-sli=
ding-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-3/igt@kms_cursor_crc@cursor-sli=
ding-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_cursor_legacy@cursorb-=
vs-flipa-atomic-transitions.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-mst:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_dp_link_training@non-=
uhbr-mst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_dp_link_training@uhbr=
-mst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-sst:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-3/igt@kms_dp_link_training@uhbr=
-sst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@kms_dp_linktrain_fallback=
@dp-fallback.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_dsc@dsc-basic.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_dsc@dsc-with-bpc.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_dsc@dsc-with-formats.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fb_coherency@memset-crc@mmap-gtt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-glk9/igt@kms_fb_coherency@memset-crc=
@mmap-gtt.html">CRASH</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15351">i915#15351</a>) +1 other test crash</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@kms_feature_discovery@dp-=
mst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-on-nop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_flip@2x-flip-vs-dpms-=
on-nop.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@kms_flip@2x-flip-vs-fences=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_flip@2x-flip-vs-panni=
ng-vs-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_159319v2/shard-snb4/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.h=
tml">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14033">i915#14033</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_flip@2x-plain-flip.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@kms_flip@2x-wf_vblank-ts-c=
heck-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_flip@flip-vs-fences.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i=
915#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915=
#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/2672">i915#2672</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-upscaling.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#=
3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#=
2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i=
915#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tile-downscaling.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#355=
5</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3=
555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_frontbuffer_tracking@=
fbc-1p-offscreen-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
indfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_159319v2/shard-dg2-11/igt@kms_frontbuffer_tracking@f=
bc-1p-primscrn-pri-indfb-draw-blt.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/15389">i915#15389</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880">i915#6880=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +5 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-cur-indfb-onoff.html">SKIP</a> +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +2 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-spr-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> +16 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> +43 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_frontbuffer_tracking@=
pipe-fbc-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9766">i915#9766</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_frontbuffer_tracking@=
psr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +16=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-indfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>=
) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +1 other=
 test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +3 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-modesetfrombusy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_frontbuffer_tracking@=
psr-modesetfrombusy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +7 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_frontbuffer_tracking@=
psr-rgb565-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +13 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl=
-5/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_hdr@brightness-with-h=
dr.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_hdr@static-toggle.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-3/igt@kms_hdr@static-toggle-sus=
pend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg2-11/igt@kms_joiner@basic-force-big-joiner.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
9319v2/shard-dg2-6/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459">i91=
5#15459</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_joiner@basic-force-ul=
tra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15458">i915#15458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_joiner@basic-ultra-jo=
iner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_joiner@switch-modeset-=
ultra-joiner-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/13522">i915#13522</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/1839">i915#1839</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_panel_fitting@legacy.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-glk5/igt@kms_plane@plane-panning-bot=
tom-right-suspend.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/13026">i915#13026</a>) +1 other test incomp=
lete</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-x:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_plane_multiple@2x-til=
ing-x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-yf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_plane_multiple@2x-til=
ing-yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_plane_multiple@tiling=
-yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14259">i915#14259</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a:</=
p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_plane_scaling@plane-s=
caler-unity-scaling-with-rotation@pipe-a.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +4 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_pm_backlight@fade-wit=
h-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9812">i915#9812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9685">i915#9685</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_pm_dc@dc5-psr.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_pm_dc@dc6-dpms.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9295">i915#9295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_pm_rpm@modeset-lpsp.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_159319v2/shard-dg1-17/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15073">i915#15073</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_pm_rpm@modeset-non-lp=
sp.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
9319v2/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i9=
15#15073</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_159319v2/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/15073">i915#15073</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@package-g7:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_pm_rpm@package-g7.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/15403">i915#15403</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-idle:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg2-11/igt@kms_pm_rpm@system-suspend-idle.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931=
9v2/shard-dg2-1/igt@kms_pm_rpm@system-suspend-idle.html">INCOMPLETE</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419">i91=
5#14419</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_pm_rpm@system-suspend-=
modeset.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/14419">i915#14419</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-vgem:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_prime@basic-crc-vgem.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@kms_psr2_sf@fbc-pr-overla=
y-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf:</=
p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-glk10/igt@kms_psr2_sf@fbc-psr2-curso=
r-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-glk5/igt@kms_psr2_sf@pr-plane-move-s=
f-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/11520">i915#11520</a>) +5 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_psr2_sf@pr-plane-move=
-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_psr2_sf@pr-primary-pla=
ne-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@kms_psr2_sf@psr2-cursor-pl=
ane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-=
plane-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_psr2_su@frontbuffer-x=
rgb8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-no-drrs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_psr@fbc-pr-no-drrs.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9732">i915#9732</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-no-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@kms_psr@fbc-psr-no-drrs.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9732">i915#9732</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-render:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_psr@fbc-psr-primary-r=
ender.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9732">i915#9732</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@kms_psr@psr2-sprite-render=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9732">i915#9732</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@multiplane-rotation:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-glk1/igt@kms_rotation_crc@multiplane=
-rotation.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/118">i915#118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-glk5/igt@kms_rotation_crc@multiplane=
-rotation-cropping-bottom.html">INCOMPLETE</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/15500">i915#15500</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@kms_scaling_modes@scaling=
-mode-center.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_tiled_display@basic-t=
est-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg1-18/igt@kms_universal_plane@cursor-fb-leak.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
59319v2/shard-dg1-12/igt@kms_universal_plane@cursor-fb-leak.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196">i=
915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_universal_plane@curso=
r-fb-leak@pipe-c-hdmi-a-3.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_vrr@negative-basic.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_vrr@seamless-rr-switc=
h-virtual.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9906">i915#9906</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@perf@unprivileged-single-=
ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/2433">i915#2433</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@perf_pmu@module-unload.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14433">i915#14433</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@prime_vgem@coherency-gtt.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf@vf-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-1/igt@sriov_basic@bind-unbind-v=
f@vf-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/12910">i915#12910</a>) +18 other tests fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-tglu-5/igt@gem_exec_big@single.html">ABORT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713">i915#117=
13</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_159319v2/shard-tglu-3/igt@gem_exec_big@single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-glk9/igt@gem_workarounds@suspend-resume-fd.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/13356">i915#13356</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14586">i915#14586</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk1/igt@gem_workarounds@s=
uspend-resume-fd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk10:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-glk10/igt@gen9_exec_parse@allowed-all.html">ABORT</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566">i9=
15#5566</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_159319v2/shard-glk10/igt@gen9_exec_parse@allowed-all.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1379=
0">i915#13790</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2681">i915#2681</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_159319v2/shard-tglu-6/igt@i915_pm_rc6_residency@r=
c6-fence.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg1-14/igt@i915_pm_rpm@gem-execbuf-stress@lmem0.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4423">i915#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@i915_pm_rpm@gem-execbuf-stre=
ss@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg1-12/igt@i915_pm_rpm@system-suspend-execbuf.html">ABO=
RT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
13562">i915#13562</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-dg1-12/igt@i915_pm_rpm@system-suspend-execbu=
f.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/5138">i915#5138</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_159319v2/shard-mtlp-6/igt@kms_big_fb@4-tile=
d-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-sst:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg2-1/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/137=
49">i915#13749</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg2-11/igt@kms_dp_link_training@non-uhbr-sst.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrf=
b-pgflip-blt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/15389">i915#15389</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/6880">i915#6880</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-11/ig=
t@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html">PASS</a> =
+1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
6953">i915#6953</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg1-14/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/15073">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_159319v2/shard-dg1-18/igt@kms_pm_rpm@modeset-non-lps=
p-stress-no-wait.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@api_intel_bb@object-reloc-purge-cache.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/8411">i915#8411</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@api_intel_bb@object=
-reloc-purge-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_ccs@blo=
ck-multicopy-inplace.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9323">i915#9323</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy-new=
-ctx.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#932=
3</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
159319v2/shard-rkl-6/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/932=
3">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@gem_create@create-ext-set-pat.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/8562">i915#8562</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_create@create-ext-set-p=
at.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-3/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#2=
80</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_159319v2/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@gem_exec_balancer@parallel-k=
eep-submit-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@gem_exec_capture@capture-invisible.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/6334">i915#6334</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_exec_capture@captu=
re-invisible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_exec_reloc@basic=
-gtt-cpu-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-softpin:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@gem_exec_reloc@basic-softpin.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i9=
15#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_159319v2/shard-rkl-6/igt@gem_exec_reloc@basic-softpin.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4613">i915#4613</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/7582">i915#7582</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_lmem=
_evict@dontneed-evict-race.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582">i915#7582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-multi.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
4613">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@gem_lmem_swapping@verify.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#=
14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/4613">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_lmem_swapping@verify.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads-d=
isplay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@gem_partial_pwrite_pr=
ead@writes-after-reads-display.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)=
 +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@gem_pwrite@basic-exhaustion.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-context.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717"=
>i915#13717</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_pxp@hw-rejects-pxp-c=
ontext.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/13717">i915#13717</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@gem_userptr_blits@coherency-unsync.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/32=
97">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_159319v2/shard-rkl-6/igt@gem_userptr_blits@coherency-unsync.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-after-close.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_userptr_bl=
its@unsync-unmap-after-close.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +2 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-3/igt@gen7_exec_parse@chained-batch.html">SKIP</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v=
2/shard-rkl-6/igt@gen7_exec_parse@chained-batch.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</=
a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@gen9_exec_parse@allowed-all.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2527">i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gen9_exec_parse@allowed-all.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@gen9_exec_parse@batch-invalid-length.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
2527">i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-rkl-6/igt@gen9_exec_parse@batch-invalid-length=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/8399">i915#8399</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@i915_pm_freq_api@freq-reset.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498"=
>i915#14498</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@i915_pm_rc6_residency@rc=
6-idle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14498">i915#14498</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg2-5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">ABOR=
T</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
59319v2/shard-dg2-1/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">SKIP</a></=
li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@i915_query@hwconfig_table.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245">i915#=
6245</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_159319v2/shard-rkl-6/igt@i915_query@hwconfig_table.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#1=
4544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/12454">i915#12454</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12712">i915#12712</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5=
/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454">i915#12454<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
712">i915#12712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9531">i915#9531</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_atomic@=
plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-internal-panels.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rk=
l-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/1769">i915#1769</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5=
286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_159319v2/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate=
-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms=
_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286=
</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3638">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_big_fb@linear-8bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3=
638">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_ccs@bad-ro=
tation-90-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">=
i915#6095</a>) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-=
ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12313">i915#12313</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_ccs@crc-primary-ro=
tation-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-=
rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_c=
cs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/6095">i915#6095</a>) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@=
kms_ccs@crc-primary-suspend-yf-tiled-ccs.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915=
#6095</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-c=
cs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/12313">i915#12313</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_ccs=
@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 =
other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-single:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-single.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_=
chamelium_frames@hdmi-crc-single.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a=
>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_chameliu=
m_hpd@dp-hpd-enable-disable-mode.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/78=
28">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms-hdcp14:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg2-1/igt@kms_content_protection@atomic-dpms-hdcp14.htm=
l">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_159319v2/shard-dg2-11/igt@kms_content_protection@atomic-dpms-hdcp14.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_content_protection@mei-interface.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_co=
ntent_protection@mei-interface.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</=
li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg1-12/igt@kms_content_protection@mei-interface.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9433">i915#9433</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_159319v2/shard-dg1-14/igt@kms_content_protection@mei-interfa=
ce.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_content_protection@suspend-resume.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6944">i915#6944</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_content_protection@suspend-resu=
me.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i=
915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/7162">i915#7162</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-6/igt@k=
ms_content_protection@type1.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#=
9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_content_protection@uevent.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt=
@kms_content_protection@uevent.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i9=
15#9424</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x170.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
13049">i915#13049</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_cursor_crc@cur=
sor-random-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3=
555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-32x10.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9723">i915#9723</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_dirtyfb@drrs-dirtyfb-i=
octl.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-sst:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/137=
49">i915#13749</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-sst.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/13749">i915#13749</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-3/igt@kms_dp_link_training@uhbr-mst.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">=
i915#13748</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_159319v2/shard-rkl-6/igt@kms_dp_link_training@uhbr-mst.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/137=
48">i915#13748</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dsc-fallback:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/13707">i915#13707</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_dp_linktrain=
_fallback@dsc-fallback.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3840">i915#3840</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_dsc@dsc-fractiona=
l-bpp-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3=
555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3840">i915#3840</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_dsc@dsc-with-formats.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_dsc@dsc=
-with-output-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931=
9v2/shard-rkl-6/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#39=
55</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3955">i915#3955</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#=
14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_flip@2x-flip-vs-dpms.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9934">i915#9934</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_flip@2x-flip-vs-panning-vs-hang.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-rkl-6/igt@kms_flip@2x-flip-vs-panning-vs-hang.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-glk5/igt@kms_flip@2x-flip-vs-suspend.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1231=
4">i915#12314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12745">i915#12745</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/4839">i915#4839</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk6=
/igt@kms_flip@2x-flip-vs-suspend.html">INCOMPLETE</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4=
839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-glk5/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/12314">i915#12314</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/4839">i915#4839</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-g=
lk6/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">=
i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp=
-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#267=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
159319v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4til=
e-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp=
-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl=
-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a=
-valid-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp=
-4tile-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319=
v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upsc=
aling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/2672">i915#2672</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bp=
p-yftile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl=
-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/2672">i915#2672</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-=
shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_fron=
tbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/1825">i915#1825</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-=
pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_fro=
ntbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15102">i915#15102</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-4/igt@kms_frontbuffer_tr=
acking@fbcpsr-1p-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#345=
8</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-flip=
track-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_frontbu=
ffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> +14 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9766">i915#9766</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-r=
te.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9766">i915#9766</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
59319v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-=
draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +2 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/s=
hard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3023">i915#3023</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri=
-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-19/igt@kms_fron=
tbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indf=
b-msflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt=
@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i9=
15#1825</a>) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-rend=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_front=
buffer_tracking@psr-rgb565-draw-render.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#=
15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3023">i915#3023</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i9=
15#12713</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_159319v2/shard-rkl-6/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331">=
i915#13331</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a>)</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg1-19/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i=
915#12713</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_159319v2/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187"=
>i915#1187</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-max-non-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_joiner@basic-max-non-joiner.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688=
">i915#13688</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_159319v2/shard-rkl-6/igt@kms_joiner@basic-max-non-joiner.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13688">i915#13688</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-3/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458">=
i915#15458</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_159319v2/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-big-joiner.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/15459">i915#15459</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_joiner@=
invalid-modeset-force-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15459">i915#15459</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/1839">i915#1839</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4816">i915#4816</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_multipip=
e_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_stress@stress-xrgb8888-yftiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14712">i915#14712</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_pipe_stress=
@stress-xrgb8888-yftiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14712">i915#14712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_plane_lowres@tiling-yf.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3555">i915#3555</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-4.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958"=
>i915#13958</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_159319v2/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-4.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
3958">i915#13958</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-none:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/139=
58">i915#13958</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_plane_multiple@2x=
-tiling-none.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-rotation@pipe-c.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_pl=
ane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/15329">i915#15329</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-8/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
59319v2/shard-rkl-3/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#150=
73</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_159319v2/shard-rkl-6/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1507=
3">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915=
#6524</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_159319v2/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-s=
f-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/11520">i915#11520</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt=
@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i91=
5#11520</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-e=
xceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_psr2_sf=
@pr-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9683">i915#9683</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_psr2_su@page_flip-xrgb=
8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">=
i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_psr@fbc-=
psr2-sprite-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +14 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-move:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg1-12/igt@kms_psr@psr-cursor-plane-move.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">=
i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_psr@psr-c=
ursor-plane-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-3/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i=
915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +11 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-dg1-17/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-=
90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/5289">i915#5289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_159319v2/shard-dg1-17/igt@kms_rotation_crc@primary=
-yf-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/8623">i915#8623</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_tiled_display@ba=
sic-test-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_tiled_display@basic-test-pattern-with-cha=
melium.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/8623">i915#8623</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_tiled_display@bas=
ic-test-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@kms_vrr@lobf.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920">i915#11920</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_159319v2/shard-rkl-5/igt@kms_vrr@lobf.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920">i915#11920</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/99=
06">i915#9906</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_159319v2/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-virtual.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9906">i915#9906</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-6/igt@prime_vgem@fence-flip-hang.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3708">i915#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@prime_vgem@fence-flip-hang.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17776/shard-rkl-7/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915=
#9917</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_159319v2/shard-rkl-6/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17776 -&gt; Patchwork_159319v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17776: 77ca0c5f244b2796408d20cf3c0741094304e09f @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_8690: 1022f2615722b105176a8cc4ce102896329b5016 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_159319v2: 77ca0c5f244b2796408d20cf3c0741094304e09f @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7617395755706501124==--
