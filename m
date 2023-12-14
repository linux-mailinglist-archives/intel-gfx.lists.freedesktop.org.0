Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C2B813E24
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 00:17:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5EE810E985;
	Thu, 14 Dec 2023 23:17:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1570910E28D;
 Thu, 14 Dec 2023 23:17:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F04EDAADF2;
 Thu, 14 Dec 2023 23:17:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7494623736235579089=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/display/dp=3A_Update_th?=
 =?utf-8?q?e_name_of_bit=234_of_DPCD_TEST=5FREQUEST?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Khaled Almahallawy" <khaled.almahallawy@intel.com>
Date: Thu, 14 Dec 2023 23:17:29 -0000
Message-ID: <170259584994.19957.16151632070021955244@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231214213555.3643327-1-khaled.almahallawy@intel.com>
In-Reply-To: <20231214213555.3643327-1-khaled.almahallawy@intel.com>
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

--===============7494623736235579089==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/display/dp: Update the name of bit#4 of DPCD TEST_REQUEST
URL   : https://patchwork.freedesktop.org/series/127844/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14022_full -> Patchwork_127844v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_127844v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_127844v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (7 -> 9)
------------------------------

  Additional (2): shard-snb-0 shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127844v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@individual:
    - shard-glk:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk4/igt@gem_exec_balancer@individual.html

  
#### Warnings ####

  * igt@gem_ctx_freq@sysfs@gt0:
    - shard-dg1:          [INCOMPLETE][2] ([i915#9855]) -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-dg1-16/igt@gem_ctx_freq@sysfs@gt0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg1-12/igt@gem_ctx_freq@sysfs@gt0.html

  * igt@i915_pm_rps@engine-order:
    - shard-snb:          [INCOMPLETE][4] ([i915#9847]) -> [INCOMPLETE][5] +1 other test incomplete
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-snb5/igt@i915_pm_rps@engine-order.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-snb1/igt@i915_pm_rps@engine-order.html
    - shard-dg2:          [INCOMPLETE][6] ([i915#9847]) -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-dg2-6/igt@i915_pm_rps@engine-order.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@i915_pm_rps@engine-order.html

  
Known issues
------------

  Here are the changes found in Patchwork_127844v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32]) -> ([PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [FAIL][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57]) ([i915#8293])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk1/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk1/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk2/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk2/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk2/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk2/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk3/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk3/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk5/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk5/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk6/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk6/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk6/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk7/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk9/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk9/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk9/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk6/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk7/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk7/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk7/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk8/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk8/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk8/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk9/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk9/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - shard-dg1:          [PASS][58] -> [DMESG-WARN][59] ([i915#4391] / [i915#4423])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-dg1-12/igt@core_hotunplug@unbind-rebind.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg1-16/igt@core_hotunplug@unbind-rebind.html

  * igt@drm_fdinfo@virtual-idle:
    - shard-rkl:          [PASS][60] -> [FAIL][61] ([i915#7742])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-rkl-2/igt@drm_fdinfo@virtual-idle.html

  * igt@gem_exec_balancer@busy:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][62] ([i915#9856])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-6/igt@gem_exec_balancer@busy.html
    - shard-rkl:          NOTRUN -> [ABORT][63] ([i915#9855] / [i915#9856])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-rkl-5/igt@gem_exec_balancer@busy.html
    - shard-dg1:          NOTRUN -> [INCOMPLETE][64] ([i915#9856])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg1-18/igt@gem_exec_balancer@busy.html

  * igt@gem_exec_balancer@full-late:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][65] ([i915#9856])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-rkl-7/igt@gem_exec_balancer@full-late.html

  * igt@gem_exec_balancer@hang:
    - shard-mtlp:         NOTRUN -> [ABORT][66] ([i915#9855]) +1 other test abort
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-3/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-dg2:          NOTRUN -> [ABORT][67] ([i915#9855])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-7/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
    - shard-rkl:          NOTRUN -> [ABORT][68] ([i915#9855])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-rkl-5/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html

  * igt@gem_exec_flush@basic-wb-prw-default:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#3539] / [i915#4852])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@gem_exec_flush@basic-wb-prw-default.html

  * igt@gem_exec_reloc@basic-gtt-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#3281])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@gem_exec_reloc@basic-gtt-noreloc.html
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#3281])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@gem_exec_reloc@basic-gtt-noreloc.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-dg2:          [PASS][72] -> [INCOMPLETE][73] ([i915#9275])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-dg2-10/igt@gem_exec_suspend@basic-s0@smem.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_exec_whisper@basic-contexts-priority:
    - shard-mtlp:         [PASS][74] -> [ABORT][75] ([i915#9855] / [i915#9857])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-mtlp-5/igt@gem_exec_whisper@basic-contexts-priority.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-2/igt@gem_exec_whisper@basic-contexts-priority.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-mtlp:         [PASS][76] -> [ABORT][77] ([i915#7392] / [i915#9857])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-mtlp-5/igt@gem_exec_whisper@basic-fds-forked-all.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-3/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#4613])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-3/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_mmap_gtt@flink-race:
    - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#4077]) +1 other test skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@gem_mmap_gtt@flink-race.html
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#4077])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@gem_mmap_gtt@flink-race.html

  * igt@gem_mmap_wc@coherency:
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#4083])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@gem_mmap_wc@coherency.html
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#4083])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@gem_mmap_wc@coherency.html

  * igt@gem_pwrite@basic-self:
    - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#3282])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@gem_pwrite@basic-self.html
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#3282])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@gem_pwrite@basic-self.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-mtlp:         NOTRUN -> [SKIP][85] ([i915#4270])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-3/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#8428])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#5190])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][88] ([i915#4079])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@gem_set_tiling_vs_gtt.html
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#4079])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@gem_set_tiling_vs_gtt.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-mtlp:         NOTRUN -> [SKIP][90] ([fdo#109289]) +1 other test skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@gen7_exec_parse@basic-offset.html
    - shard-dg2:          NOTRUN -> [SKIP][91] ([fdo#109289]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@gen7_exec_parse@basic-offset.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-mtlp:         NOTRUN -> [SKIP][92] ([i915#2856])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-3/igt@gen9_exec_parse@basic-rejected.html

  * igt@i915_pm_rps@waitboost:
    - shard-mtlp:         NOTRUN -> [FAIL][93] ([i915#8346])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@i915_pm_rps@waitboost.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([fdo#111614]) +1 other test skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-3/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([fdo#111614]) +1 other test skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-6/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y-tiled-gen12-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#5354]) +12 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-6/igt@kms_ccs@pipe-a-bad-aux-stride-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#5354] / [i915#6095]) +5 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@kms_ccs@pipe-a-ccs-on-another-bo-y-tiled-ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf-tiled-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#5354] / [i915#6095]) +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-rkl-7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf-tiled-ccs.html

  * igt@kms_chamelium_edid@dp-edid-read:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#7828])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@kms_chamelium_edid@dp-edid-read.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#7828]) +1 other test skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-3/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_chamelium_frames@vga-frame-dump:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#7828])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-rkl-7/igt@kms_chamelium_frames@vga-frame-dump.html

  * igt@kms_content_protection@srm@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][102] ([i915#7173])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-11/igt@kms_content_protection@srm@pipe-a-dp-4.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#3555])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-6/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][104] ([fdo#111825]) +1 other test skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-rkl-7/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-snb:          [PASS][105] -> [SKIP][106] ([fdo#109271] / [fdo#111767])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-snb5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#3469])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@kms_fbcon_fbt@psr.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#3637]) +1 other test skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-3/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][109] ([fdo#111767] / [fdo#111825])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-rkl-7/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@2x-flip-vs-wf_vblank:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([fdo#109274])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@kms_flip@2x-flip-vs-wf_vblank.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#2672])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#8708]) +1 other test skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-snb:          [PASS][113] -> [SKIP][114] ([fdo#109271]) +5 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([fdo#111825] / [i915#1825])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#3458]) +2 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:
    - shard-mtlp:         NOTRUN -> [SKIP][117] ([i915#1825]) +7 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
    - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#3023])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html

  * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
    - shard-rkl:          NOTRUN -> [SKIP][119] ([fdo#109289])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-rkl-7/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#5235]) +1 other test skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-1.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [PASS][121] -> [SKIP][122] ([i915#9519])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-rkl-1/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#9519])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([fdo#111068] / [i915#9683])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-rkl-7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#9683])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-6/igt@kms_psr2_su@page_flip-nv12.html

  * igt@perf@blocking@0-rcs0:
    - shard-mtlp:         NOTRUN -> [ABORT][126] ([i915#9847])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-3/igt@perf@blocking@0-rcs0.html

  * igt@perf@gen12-mi-rpc@rcs0:
    - shard-rkl:          NOTRUN -> [ABORT][127] ([i915#9847]) +1 other test abort
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-rkl-3/igt@perf@gen12-mi-rpc@rcs0.html

  * igt@perf@polling-parameterized:
    - shard-dg2:          NOTRUN -> [ABORT][128] ([i915#9847]) +1 other test abort
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-3/igt@perf@polling-parameterized.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-dg1:          NOTRUN -> [ABORT][129] ([i915#9847]) +1 other test abort
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg1-13/igt@perf@unprivileged-single-ctx-counters.html

  * igt@perf_pmu@init-wait@rcs0:
    - shard-rkl:          NOTRUN -> [ABORT][130] ([i915#9847] / [i915#9853])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-rkl-5/igt@perf_pmu@init-wait@rcs0.html

  * igt@prime_vgem@fence-read-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#3708])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@prime_vgem@fence-read-hang.html
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#3708])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@prime_vgem@fence-read-hang.html

  * igt@v3d/v3d_get_param@base-params:
    - shard-mtlp:         NOTRUN -> [SKIP][133] ([i915#2575]) +2 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@v3d/v3d_get_param@base-params.html

  * igt@v3d/v3d_submit_csd@single-in-sync:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#2575]) +1 other test skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@v3d/v3d_submit_csd@single-in-sync.html

  * igt@vc4/vc4_wait_bo@bad-bo:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#7711])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@vc4/vc4_wait_bo@bad-bo.html
    - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#7711])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@vc4/vc4_wait_bo@bad-bo.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-mtlp:         [ABORT][137] ([i915#9857]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-mtlp-2/igt@gem_exec_whisper@basic-fds-forked.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-mtlp-3/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
    - shard-snb:          [SKIP][139] ([fdo#109271]) -> [PASS][140] +4 other tests pass
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [SKIP][141] ([i915#9519]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html

  
#### Warnings ####

  * igt@gem_exec_balancer@full-late:
    - shard-dg2:          [INCOMPLETE][143] ([i915#9856]) -> [ABORT][144] ([i915#9855] / [i915#9856])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-dg2-10/igt@gem_exec_balancer@full-late.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-7/igt@gem_exec_balancer@full-late.html
    - shard-glk:          [ABORT][145] ([i915#9855] / [i915#9856]) -> [INCOMPLETE][146] ([i915#9856])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk1/igt@gem_exec_balancer@full-late.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk6/igt@gem_exec_balancer@full-late.html

  * igt@gem_exec_balancer@smoke:
    - shard-rkl:          [INCOMPLETE][147] ([i915#9856]) -> [ABORT][148] ([i915#9856])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-rkl-7/igt@gem_exec_balancer@smoke.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-rkl-3/igt@gem_exec_balancer@smoke.html
    - shard-dg1:          [ABORT][149] ([i915#9856]) -> [INCOMPLETE][150] ([i915#9856])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-dg1-13/igt@gem_exec_balancer@smoke.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg1-18/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-glk:          [INCOMPLETE][151] ([i915#9857]) -> [ABORT][152] ([i915#9857])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk2/igt@gem_exec_whisper@basic-fds-forked.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk1/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@kms_ccs@pipe-d-crc-primary-rotation-180-y-tiled-gen12-mc-ccs:
    - shard-dg1:          [SKIP][153] ([i915#5354] / [i915#6095]) -> [SKIP][154] ([i915#4423] / [i915#5354] / [i915#6095])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-dg1-12/igt@kms_ccs@pipe-d-crc-primary-rotation-180-y-tiled-gen12-mc-ccs.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg1-16/igt@kms_ccs@pipe-d-crc-primary-rotation-180-y-tiled-gen12-mc-ccs.html

  * igt@kms_chamelium_color@ctm-negative:
    - shard-dg1:          [SKIP][155] ([fdo#111827]) -> [SKIP][156] ([fdo#111827] / [i915#4423])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-dg1-12/igt@kms_chamelium_color@ctm-negative.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg1-16/igt@kms_chamelium_color@ctm-negative.html

  * igt@kms_content_protection@atomic:
    - shard-snb:          [INCOMPLETE][157] ([i915#8816]) -> [SKIP][158] ([fdo#109271])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-snb7/igt@kms_content_protection@atomic.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-snb5/igt@kms_content_protection@atomic.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][159] ([i915#3955]) -> [SKIP][160] ([fdo#110189] / [i915#3955])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-rkl-6/igt@kms_fbcon_fbt@psr.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-rkl-1/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][161] ([fdo#110189] / [i915#3955]) -> [SKIP][162] ([i915#3955])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg1:          [SKIP][163] ([fdo#111825]) -> [SKIP][164] ([fdo#111825] / [i915#4423])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@perf_pmu@gt-awake:
    - shard-dg2:          [ABORT][165] ([i915#9847] / [i915#9853]) -> [INCOMPLETE][166] ([i915#9853])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-dg2-7/igt@perf_pmu@gt-awake.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg2-6/igt@perf_pmu@gt-awake.html

  * igt@perf_pmu@module-unload:
    - shard-dg1:          [ABORT][167] ([i915#9847] / [i915#9853]) -> [INCOMPLETE][168] ([i915#9853])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-dg1-13/igt@perf_pmu@module-unload.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg1-17/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@semaphore-wait@rcs0:
    - shard-rkl:          [ABORT][169] ([i915#9847] / [i915#9853]) -> [INCOMPLETE][170] ([i915#9853]) +2 other tests incomplete
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-rkl-5/igt@perf_pmu@semaphore-wait@rcs0.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-rkl-2/igt@perf_pmu@semaphore-wait@rcs0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8346]: https://gitlab.freedesktop.org/drm/intel/issues/8346
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8816]: https://gitlab.freedesktop.org/drm/intel/issues/8816
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9847]: https://gitlab.freedesktop.org/drm/intel/issues/9847
  [i915#9853]: https://gitlab.freedesktop.org/drm/intel/issues/9853
  [i915#9855]: https://gitlab.freedesktop.org/drm/intel/issues/9855
  [i915#9856]: https://gitlab.freedesktop.org/drm/intel/issues/9856
  [i915#9857]: https://gitlab.freedesktop.org/drm/intel/issues/9857


Build changes
-------------

  * Linux: CI_DRM_14022 -> Patchwork_127844v1

  CI-20190529: 20190529
  CI_DRM_14022: 87fdea3fd86a02e2e7855e372c0d3fb32e53e4e6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7643: ced22f8bf4263ff395dc852c86b682e62a7a1c1b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127844v1: 87fdea3fd86a02e2e7855e372c0d3fb32e53e4e6 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/index.html

--===============7494623736235579089==
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
<tr><td><b>Series:</b></td><td>drm/display/dp: Update the name of bit#4 of =
DPCD TEST_REQUEST</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/127844/">https://patchwork.freedesktop.org/series/127844/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127844v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127844v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14022_full -&gt; Patchwork_127844v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_127844v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_127844v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (7 -&gt; 9)</h2>
<p>Additional (2): shard-snb-0 shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
127844v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_balancer@individual:<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-glk4/igt@gem_exec_balancer@individua=
l.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-dg1-16/igt@gem_ctx_freq@sysfs@gt0.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27844v1/shard-dg1-12/igt@gem_ctx_freq@sysfs@gt0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14022/shard-snb5/igt@i915_pm_rps@engine-order.html">INCOMPLETE</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7844v1/shard-snb1/igt@i915_pm_rps@engine-order.html">INCOMPLETE</a> +1 othe=
r test incomplete</p>
</li>
<li>
<p>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14022/shard-dg2-6/igt@i915_pm_rps@engine-order.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27844v1/shard-dg2-5/igt@i915_pm_rps@engine-order.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127844v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14022/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk2/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
14022/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_14022/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/sha=
rd-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14022/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk3/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_14022/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14022/shard-glk4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_14022/shard-glk5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-gl=
k6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
4022/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_14022/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shard-glk9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/shar=
d-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_14022/shard-glk9/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk1/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127=
844v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_127844v1/shard-glk2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127844v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/sh=
ard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_127844v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7844v1/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_127844v1/shard-glk4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127844v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/sh=
ard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_127844v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk7/boot.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7844v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_127844v1/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127844v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/sh=
ard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_127844v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-glk9/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8293=
">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-dg1-12/igt@core_hotunplug@unbind-rebind.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v=
1/shard-dg1-16/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423=
</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shar=
d-rkl-2/igt@drm_fdinfo@virtual-idle.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@busy:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127844v1/shard-dg2-6/igt@gem_exec_balancer@busy.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/9856">i915#9856</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127844v1/shard-rkl-5/igt@gem_exec_balancer@busy.html=
">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/985=
5">i915#9855</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9856">i915#9856</a>)</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127844v1/shard-dg1-18/igt@gem_exec_balancer@busy.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9856">i915#9856</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full-late:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-rkl-7/igt@gem_exec_balancer@full-lat=
e.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/9856">i915#9856</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-mtlp-3/igt@gem_exec_balancer@hang.ht=
ml">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
855">i915#9855</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-dg2-7/igt@gem_exec_balancer@parallel=
-bb-first.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9855">i915#9855</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-rkl-5/igt@gem_exec_balancer@parallel=
-dmabuf-import-out-fence.html">ABORT</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/9855">i915#9855</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-prw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@gem_exec_flush@basic-wb-pr=
w-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@gem_exec_reloc@basic-gtt-n=
oreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3281">i915#3281</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@gem_exec_reloc@basic-gtt-no=
reloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3281">i915#3281</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-dg2-10/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12784=
4v1/shard-dg2-1/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a=
>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-mtlp-5/igt@gem_exec_whisper@basic-contexts-priority.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_127844v1/shard-mtlp-2/igt@gem_exec_whisper@basic-contexts-priority.htm=
l">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/98=
55">i915#9855</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9857">i915#9857</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-mtlp-5/igt@gem_exec_whisper@basic-fds-forked-all.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_127844v1/shard-mtlp-3/igt@gem_exec_whisper@basic-fds-forked-all.html">ABO=
RT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7392">i9=
15#7392</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/98=
57">i915#9857</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-mtlp-3/igt@gem_lmem_swapping@random-=
engines.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@flink-race:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@gem_mmap_gtt@flink-race.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
77">i915#4077</a>) +1 other test skip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@gem_mmap_gtt@flink-race.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/407=
7">i915#4077</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@coherency:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@gem_mmap_wc@coherency.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083=
">i915#4083</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@gem_mmap_wc@coherency.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083"=
>i915#4083</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-self:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@gem_pwrite@basic-self.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282=
">i915#3282</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@gem_pwrite@basic-self.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282"=
>i915#3282</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-mtlp-3/igt@gem_pxp@verify-pxp-stale-=
buf-optout-execution.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-x-tiled:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-to=
-vebox-x-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/8428">i915#8428</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@gem_render_copy@y-tiled-to-=
vebox-x-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/5190">i915#5190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@gem_set_tiling_vs_gtt.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4079=
">i915#4079</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@gem_set_tiling_vs_gtt.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4079"=
>i915#4079</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@gen7_exec_parse@basic-offs=
et.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>) +1 other test skip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@gen7_exec_parse@basic-offse=
t.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-mtlp-3/igt@gen9_exec_parse@basic-rej=
ected.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@i915_pm_rps@waitboost.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/834=
6">i915#8346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-mtlp-3/igt@kms_big_fb@4-tiled-16bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-dg2-6/igt@kms_big_fb@linear-8bpp-rot=
ate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111614">fdo#111614</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-dg2-6/igt@kms_ccs@pipe-a-bad-aux-str=
ide-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/5354">i915#5354</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@kms_ccs@pipe-a-ccs-on-ano=
ther-bo-y-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/6095">i915#6095</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-rkl-7/igt@kms_ccs@pipe-b-crc-primary=
-rotation-180-yf-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@kms_chamelium_edid@dp-edid=
-read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-mtlp-3/igt@kms_chamelium_frames@dp-c=
rc-single.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@vga-frame-dump:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-rkl-7/igt@kms_chamelium_frames@vga-f=
rame-dump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-dg2-11/igt@kms_content_protection@sr=
m@pipe-a-dp-4.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-dg2-6/igt@kms_cursor_crc@cursor-slid=
ing-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-rkl-7/igt@kms_cursor_legacy@cursora-=
vs-flipb-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111825">fdo#111825</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-tran=
sitions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_127844v1/shard-snb5/igt@kms_cursor_legacy@cursorb-vs-flipb-=
atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@kms_fbcon_fbt@psr.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3469">i9=
15#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-mtlp-3/igt@kms_flip@2x-absolute-wf_v=
blank.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3637">i915#3637</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-rkl-7/igt@kms_flip@2x-flip-vs-rmfb-i=
nterruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@kms_flip@2x-flip-vs-wf_vbl=
ank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-dg2-6/igt@kms_frontbuffer_tracking@f=
bc-1p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-i=
ndfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_127844v1/shard-snb5/igt@kms_frontbuffer_tracking=
@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +5 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render:</=
p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@kms_frontbuffer_tracking@p=
sr-1p-offscren-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +2 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +7 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-modesetfrombusy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-rkl-7/igt@kms_frontbuffer_tracking@p=
sr-modesetfrombusy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3023">i915#3023</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-rkl-7/igt@kms_pipe_b_c_ivb@enable-pi=
pe-c-while-b-has-3-lanes.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-=
hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-rkl-7/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-r=
kl-1/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@kms_pm_rpm@dpms-non-lpsp.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-rkl-7/igt@kms_psr2_sf@overlay-plane-=
update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-dg2-6/igt@kms_psr2_su@page_flip-nv12=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@blocking@0-rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-mtlp-3/igt@perf@blocking@0-rcs0.html=
">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/984=
7">i915#9847</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-mi-rpc@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-rkl-3/igt@perf@gen12-mi-rpc@rcs0.htm=
l">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/98=
47">i915#9847</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-dg2-3/igt@perf@polling-parameterized=
.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/9847">i915#9847</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-dg1-13/igt@perf@unprivileged-single-=
ctx-counters.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9847">i915#9847</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@init-wait@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-rkl-5/igt@perf_pmu@init-wait@rcs0.ht=
ml">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
847">i915#9847</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9853">i915#9853</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@prime_vgem@fence-read-hang=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3708">i915#3708</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@prime_vgem@fence-read-hang.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3708">i915#3708</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_param@base-params:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@v3d/v3d_get_param@base-pa=
rams.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@single-in-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@v3d/v3d_submit_csd@single-=
in-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@bad-bo:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127844v1/shard-dg2-5/igt@vc4/vc4_wait_bo@bad-bo.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7711=
">i915#7711</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127844v1/shard-mtlp-5/igt@vc4/vc4_wait_bo@bad-bo.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/771=
1">i915#7711</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-mtlp-2/igt@gem_exec_whisper@basic-fds-forked.html">ABOR=
T</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9857">i91=
5#9857</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_127844v1/shard-mtlp-3/igt@gem_exec_whisper@basic-fds-forked.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb=
-pgflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_127844v1/shard-snb7/igt@kms_frontbuffer_trackin=
g@fbc-2p-scndscrn-shrfb-pgflip-blt.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#951=
9</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
127844v1/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@full-late:</p>
<ul>
<li>
<p>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14022/shard-dg2-10/igt@gem_exec_balancer@full-late.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#=
9856</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_127844v1/shard-dg2-7/igt@gem_exec_balancer@full-late.html">ABORT</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9=
856</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14022/shard-glk1/igt@gem_exec_balancer@full-late.html">ABORT</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9=
856</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_127844v1/shard-glk6/igt@gem_exec_balancer@full-late.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9856=
</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@smoke:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14022/shard-rkl-7/igt@gem_exec_balancer@smoke.html">INCOMPLETE</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9856<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7844v1/shard-rkl-3/igt@gem_exec_balancer@smoke.html">ABORT</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9856</a>)</p>
</li>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14022/shard-dg1-13/igt@gem_exec_balancer@smoke.html">ABORT</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9856</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844=
v1/shard-dg1-18/igt@gem_exec_balancer@smoke.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9856</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-glk2/igt@gem_exec_whisper@basic-fds-forked.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9857">=
i915#9857</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127844v1/shard-glk1/igt@gem_exec_whisper@basic-fds-forked.html">ABO=
RT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9857">i9=
15#9857</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-rotation-180-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-dg1-12/igt@kms_ccs@pipe-d-crc-primary-rotation-180-y-ti=
led-gen12-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg1-16/igt@kms_ccs@pipe=
-d-crc-primary-rotation-180-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#609=
5</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-negative:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-dg1-12/igt@kms_chamelium_color@ctm-negative.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111827">fdo#=
111827</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_127844v1/shard-dg1-16/igt@kms_chamelium_color@ctm-negative.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111827">fdo#=
111827</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/442=
3">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-snb7/igt@kms_content_protection@atomic.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8816">i915=
#8816</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127844v1/shard-snb5/igt@kms_content_protection@atomic.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-rkl-6/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shar=
d-rkl-1/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D110189">fdo#110189</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#=
3955</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_127844v1/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-=
cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111825">fdo#111825</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_127844v1/shard-dg1-16/igt@kms_front=
buffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#11182=
5</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4423">i9=
15#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@gt-awake:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-dg2-7/igt@perf_pmu@gt-awake.html">ABORT</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127844=
v1/shard-dg2-6/igt@perf_pmu@gt-awake.html">INCOMPLETE</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-dg1-13/igt@perf_pmu@module-unload.html">ABORT</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#985=
3</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
127844v1/shard-dg1-17/igt@perf_pmu@module-unload.html">INCOMPLETE</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>)=
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@semaphore-wait@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14022/shard-rkl-5/igt@perf_pmu@semaphore-wait@rcs0.html">ABORT</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853">i91=
5#9853</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_127844v1/shard-rkl-2/igt@perf_pmu@semaphore-wait@rcs0.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853">i915=
#9853</a>) +2 other tests incomplete</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14022 -&gt; Patchwork_127844v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14022: 87fdea3fd86a02e2e7855e372c0d3fb32e53e4e6 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7643: ced22f8bf4263ff395dc852c86b682e62a7a1c1b @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127844v1: 87fdea3fd86a02e2e7855e372c0d3fb32e53e4e6 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7494623736235579089==--
