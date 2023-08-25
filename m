Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F0578867D
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 13:58:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B167110E65C;
	Fri, 25 Aug 2023 11:58:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 983B610E65C;
 Fri, 25 Aug 2023 11:58:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8E85AA00CC;
 Fri, 25 Aug 2023 11:58:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3963437697990246785=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Date: Fri, 25 Aug 2023 11:58:50 -0000
Message-ID: <169296473056.10953.12202552906528422727@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230824224249.365665-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20230824224249.365665-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgaW9t?=
 =?utf-8?q?mu/vt-d=3A_Check_domain_flags_before_setting_snp_bit_in_page-co?=
 =?utf-8?q?ntrol_=28rev2=29?=
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

--===============3963437697990246785==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: iommu/vt-d: Check domain flags before setting snp bit in page-control (rev2)
URL   : https://patchwork.freedesktop.org/series/121893/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13562_full -> Patchwork_121893v2_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/index.html

Participating hosts (9 -> 10)
------------------------------

  Additional (1): shard-rkl0 

Known issues
------------

  Here are the changes found in Patchwork_121893v2_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-apl:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([FAIL][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50]) ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl1/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl1/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl2/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl2/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl2/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl2/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl2/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl3/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl3/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl3/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl3/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl4/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl7/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl7/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl6/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl6/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl6/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl2/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl4/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl6/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl6/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@render-ccs:
    - shard-dg2:          NOTRUN -> [FAIL][51] ([i915#6122])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@api_intel_bb@render-ccs.html

  * igt@drm_fdinfo@busy-idle@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#8414]) +21 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@drm_fdinfo@busy-idle@bcs0.html

  * igt@feature_discovery@chamelium:
    - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#4854])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@feature_discovery@chamelium.html

  * igt@gem_basic@multigpu-create-close:
    - shard-tglu:         NOTRUN -> [SKIP][54] ([i915#7697])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-tglu-2/igt@gem_basic@multigpu-create-close.html

  * igt@gem_caching@writes:
    - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#4873])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-mtlp-7/igt@gem_caching@writes.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#7697])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_ctx_persistence@heartbeat-many:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#8555]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-many.html

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#1099]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-snb1/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [PASS][59] -> [FAIL][60] ([i915#5784])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-dg1-19/igt@gem_eio@reset-stress.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg1-17/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4771])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [PASS][62] -> [FAIL][63] ([i915#2842]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fence@invalid-fence-array:
    - shard-dg1:          [PASS][64] -> [DMESG-WARN][65] ([i915#4423]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-dg1-17/igt@gem_exec_fence@invalid-fence-array.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg1-14/igt@gem_exec_fence@invalid-fence-array.html

  * igt@gem_exec_fence@submit67:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4812])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@gem_exec_fence@submit67.html

  * igt@gem_exec_flush@basic-batch-kernel-default-uc:
    - shard-mtlp:         [PASS][67] -> [DMESG-FAIL][68] ([i915#8962] / [i915#9121])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-mtlp-8/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-mtlp-4/igt@gem_exec_flush@basic-batch-kernel-default-uc.html

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#3539] / [i915#4852]) +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#3281]) +5 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#4537] / [i915#4812])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#4860])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html

  * igt@gem_mmap@short-mmap:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#4083])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@gem_mmap@short-mmap.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#4077]) +9 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#3282]) +6 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][76] ([i915#2658]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-snb1/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4270])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-tglu:         NOTRUN -> [SKIP][78] ([i915#4270])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-tglu-2/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_readwrite@write-bad-handle:
    - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#3282])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-mtlp-7/igt@gem_readwrite@write-bad-handle.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#4079])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#3297] / [i915#4880])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#3297] / [i915#4958])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@gem_userptr_blits@sd-probe.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#3297]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-snb:          NOTRUN -> [DMESG-WARN][84] ([i915#8841])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-snb4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([fdo#109289])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#2856]) +2 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-tglu:         NOTRUN -> [SKIP][87] ([i915#2527] / [i915#2856])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-tglu-2/igt@gen9_exec_parse@bb-chained.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#7091])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#658]) +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-dg1:          [PASS][90] -> [FAIL][91] ([i915#3591])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-dg1:          [PASS][92] -> [SKIP][93] ([i915#1397])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-dg1-15/igt@i915_pm_rpm@dpms-non-lpsp.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#1397])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-mtlp-7/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#1397])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          [PASS][96] -> [SKIP][97] ([i915#1397])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-rkl-2/igt@i915_pm_rpm@modeset-non-lpsp.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([fdo#109506])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_pm_rps@thresholds-park@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#8925]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@i915_pm_rps@thresholds-park@gt0.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#4215] / [i915#5190])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#4212]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#8502] / [i915#8709]) +11 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-1-y-rc_ccs:
    - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#8502]) +7 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg1-19/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-1-y-rc_ccs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-snb:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#1769])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-snb4/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([fdo#111614]) +4 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#5190]) +10 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][107] ([fdo#111615])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-mtlp-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#4538] / [i915#5190]) +5 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#3689] / [i915#5354]) +16 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#3689] / [i915#3886] / [i915#5354]) +10 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][111] ([i915#6095]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-mtlp-7/igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_rc_ccs:
    - shard-tglu:         NOTRUN -> [SKIP][112] ([i915#5354] / [i915#6095]) +2 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-tglu-2/igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_rc_ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#3886] / [i915#6095])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-mtlp-7/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:
    - shard-tglu:         NOTRUN -> [SKIP][114] ([i915#3689] / [i915#5354] / [i915#6095]) +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-tglu-2/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs.html

  * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#7213]) +3 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-2/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html

  * igt@kms_cdclk@plane-scaling@pipe-c-dp-2:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#4087]) +3 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-12/igt@kms_cdclk@plane-scaling@pipe-c-dp-2.html

  * igt@kms_chamelium_color@gamma:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([fdo#111827]) +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@kms_chamelium_color@gamma.html

  * igt@kms_chamelium_edid@hdmi-mode-timings:
    - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#7828]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-mtlp-7/igt@kms_chamelium_edid@hdmi-mode-timings.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#7828]) +8 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#7828])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-tglu-2/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html

  * igt@kms_color@deep-color:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#3555]) +7 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-2/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#7118]) +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#3299])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@lic@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][124] ([i915#7173]) +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_content_protection@lic@pipe-a-dp-4.html

  * igt@kms_content_protection@mei_interface:
    - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#6944] / [i915#7116] / [i915#7118])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-tglu-2/igt@kms_content_protection@mei_interface.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#3359])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([fdo#109274] / [fdo#111767] / [i915#5354]) +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([fdo#109274] / [i915#5354]) +7 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#4103] / [i915#4213])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#8588])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#3555] / [i915#3840])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#3469])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#4881])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-snb:          NOTRUN -> [SKIP][134] ([fdo#109271] / [fdo#111767]) +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-snb4/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([fdo#109274] / [fdo#111767])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([fdo#109274]) +6 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@flip-vs-fences:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#8381])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#2672]) +3 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [FAIL][139] ([i915#6880])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#8708]) +21 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][141] ([fdo#109280]) +3 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-dg2:          [PASS][142] -> [FAIL][143] ([i915#6880])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#3458]) +13 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#5354]) +44 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#5460])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:
    - shard-tglu:         NOTRUN -> [SKIP][147] ([fdo#110189]) +2 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move:
    - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#1825])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#3555] / [i915#8228])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-rkl-2/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#3555] / [i915#8228])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-2:
    - shard-dg2:          NOTRUN -> [FAIL][151] ([i915#8292])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-12/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-2.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][152] ([i915#8292])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg1-13/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-c-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#5176]) +7 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-c-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#5176]) +11 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg1-19/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#5176]) +7 similar issues
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#5235]) +15 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#5235]) +1 similar issue
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#5235]) +7 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg1-17/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-hdmi-a-4.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#6524] / [i915#6805])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr@psr2_dpms:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#1072]) +4 similar issues
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_psr@psr2_dpms.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#4235] / [i915#5190])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#4235])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_selftest@drm_cmdline:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#8661]) +1 similar issue
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_selftest@drm_cmdline.html

  * igt@kms_selftest@drm_damage:
    - shard-snb:          NOTRUN -> [SKIP][164] ([fdo#109271] / [i915#8661]) +1 similar issue
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-snb4/igt@kms_selftest@drm_damage.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-1:
    - shard-snb:          NOTRUN -> [FAIL][165] ([i915#5465]) +1 similar issue
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-snb1/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html

  * igt@kms_vblank@pipe-c-query-busy-hang:
    - shard-snb:          NOTRUN -> [SKIP][166] ([fdo#109271]) +269 similar issues
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-snb1/igt@kms_vblank@pipe-c-query-busy-hang.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#2437])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          NOTRUN -> [FAIL][168] ([i915#9100])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf_pmu@module-unload:
    - shard-dg2:          NOTRUN -> [FAIL][169] ([i915#5793] / [i915#6121])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#8516])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          NOTRUN -> [CRASH][171] ([i915#7331])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  * igt@prime_vgem@basic-write:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#3291] / [i915#3708])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@coherency-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#3708] / [i915#4077])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@prime_vgem@coherency-gtt.html

  * igt@v3d/v3d_submit_csd@single-out-sync:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#2575]) +13 similar issues
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@v3d/v3d_submit_csd@single-out-sync.html

  * igt@vc4/vc4_perfmon@create-two-perfmon:
    - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#7711])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-mtlp-7/igt@vc4/vc4_perfmon@create-two-perfmon.html

  * igt@vc4/vc4_perfmon@destroy-invalid-perfmon:
    - shard-tglu:         NOTRUN -> [SKIP][176] ([i915#2575])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-tglu-2/igt@vc4/vc4_perfmon@destroy-invalid-perfmon.html

  * igt@vc4/vc4_wait_bo@unused-bo-1ns:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#7711]) +6 similar issues
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@vc4/vc4_wait_bo@unused-bo-1ns.html

  
#### Possible fixes ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [FAIL][178] ([i915#6268]) -> [PASS][179]
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-dg2:          [FAIL][180] ([fdo#103375]) -> [PASS][181] +1 similar issue
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-dg2-5/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_exec_capture@capture@vcs1-smem:
    - shard-mtlp:         [DMESG-WARN][182] ([i915#5591]) -> [PASS][183]
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-mtlp-3/igt@gem_exec_capture@capture@vcs1-smem.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-mtlp-5/igt@gem_exec_capture@capture@vcs1-smem.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-rkl:          [FAIL][184] ([i915#2842]) -> [PASS][185] +1 similar issue
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-rkl-7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-rkl-6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-apl:          [FAIL][186] ([i915#2842]) -> [PASS][187]
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_schedule@noreorder-priority@ccs0:
    - shard-mtlp:         [DMESG-FAIL][188] ([i915#9121]) -> [PASS][189]
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-mtlp-4/igt@gem_exec_schedule@noreorder-priority@ccs0.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-mtlp-6/igt@gem_exec_schedule@noreorder-priority@ccs0.html

  * igt@i915_pipe_stress@stress-xrgb8888-untiled:
    - shard-mtlp:         [FAIL][190] ([i915#8691]) -> [PASS][191]
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-mtlp-8/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-mtlp-4/igt@i915_pipe_stress@stress-xrgb8888-untiled.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglu:         [FAIL][192] ([i915#3989] / [i915#454]) -> [PASS][193]
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-tglu-2/igt@i915_pm_dc@dc6-dpms.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-tglu-2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - shard-dg1:          [SKIP][194] ([i915#1397]) -> [PASS][195] +2 similar issues
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-dg1-14/igt@i915_pm_rpm@dpms-lpsp.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg1-19/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg2:          [SKIP][196] ([i915#1397]) -> [PASS][197]
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-dg2-12/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-2/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
    - shard-rkl:          [SKIP][198] ([i915#1397]) -> [PASS][199]
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-rkl-1/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [FAIL][200] ([i915#5138]) -> [PASS][201]
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-mtlp:         [FAIL][202] ([i915#3743]) -> [PASS][203]
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - shard-mtlp:         [FAIL][204] ([i915#8248]) -> [PASS][205]
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-mtlp-5/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-mtlp-7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-apl:          [FAIL][206] ([i915#2346]) -> [PASS][207]
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][208] ([i915#2346]) -> [PASS][209]
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg1:          [FAIL][210] ([fdo#103375]) -> [PASS][211]
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-dg1-18/igt@kms_fbcon_fbt@fbc-suspend.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg1-15/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - shard-dg2:          [FAIL][212] ([i915#6880]) -> [PASS][213]
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:
    - shard-mtlp:         [FAIL][214] ([i915#1623]) -> [PASS][215] +1 similar issue
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-mtlp-7/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-mtlp-4/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          [FAIL][216] ([IGT#2]) -> [PASS][217]
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-dg2-5/igt@kms_sysfs_edid_timing.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_sysfs_edid_timing.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-dg1:          [SKIP][218] ([i915#658]) -> [SKIP][219] ([i915#4423] / [i915#658])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-dg1-17/igt@i915_pm_dc@dc6-psr.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg1-14/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-tglu:         [FAIL][220] ([i915#2681] / [i915#3591]) -> [WARN][221] ([i915#2681])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-tglu:         [WARN][222] ([i915#2681]) -> [FAIL][223] ([i915#2681] / [i915#3591])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@kms_content_protection@mei_interface:
    - shard-dg2:          [SKIP][224] ([i915#7118]) -> [SKIP][225] ([i915#7118] / [i915#7162]) +1 similar issue
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-dg2-5/igt@kms_content_protection@mei_interface.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_content_protection@mei_interface.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-mtlp:         [FAIL][226] ([i915#2346]) -> [DMESG-FAIL][227] ([i915#1982] / [i915#2017] / [i915#5954])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-mtlp-3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-mtlp-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          [SKIP][228] ([i915#8708]) -> [SKIP][229] ([i915#4423] / [i915#8708])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg1:          [SKIP][230] ([i915#3555] / [i915#8228]) -> [SKIP][231] ([i915#3555] / [i915#4423] / [i915#8228])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-dg1-17/igt@kms_hdr@invalid-metadata-sizes.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg1-14/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][232] ([i915#4816]) -> [SKIP][233] ([i915#4070] / [i915#4816])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_psr@cursor_plane_move:
    - shard-dg1:          [SKIP][234] ([i915#1072]) -> [SKIP][235] ([i915#1072] / [i915#4078])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-dg1-14/igt@kms_psr@cursor_plane_move.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg1-13/igt@kms_psr@cursor_plane_move.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1623]: https://gitlab.freedesktop.org/drm/intel/issues/1623
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
  [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5793]: https://gitlab.freedesktop.org/drm/intel/issues/5793
  [i915#5954]: https://gitlab.freedesktop.org/drm/intel/issues/5954
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#6122]: https://gitlab.freedesktop.org/drm/intel/issues/6122
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#7091]: https://gitlab.freedesktop.org/drm/intel/issues/7091
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7331]: https://gitlab.freedesktop.org/drm/intel/issues/7331
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8248]: https://gitlab.freedesktop.org/drm/intel/issues/8248
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
  [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8588]: https://gitlab.freedesktop.org/drm/intel/issues/8588
  [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
  [i915#8691]: https://gitlab.freedesktop.org/drm/intel/issues/8691
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
  [i915#8962]: https://gitlab.freedesktop.org/drm/intel/issues/8962
  [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
  [i915#9100]: https://gitlab.freedesktop.org/drm/intel/issues/9100
  [i915#9121]: https://gitlab.freedesktop.org/drm/intel/issues/9121


Build changes
-------------

  * Linux: CI_DRM_13562 -> Patchwork_121893v2
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_13562: 6cd46255547ba72bb6cc6aab91c905b1dec95696 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7451: 5d48d1fb231f449fe2f80cda14ea7a1ecfda59fa @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_121893v2: 6cd46255547ba72bb6cc6aab91c905b1dec95696 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/index.html

--===============3963437697990246785==
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
<tr><td><b>Series:</b></td><td>iommu/vt-d: Check domain flags before settin=
g snp bit in page-control (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/121893/">https://patchwork.freedesktop.org/series/121893/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_121893v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_121893v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13562_full -&gt; Patchwork_121893v=
2_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v=
2/index.html</p>
<h2>Participating hosts (9 -&gt; 10)</h2>
<p>Additional (1): shard-rkl0 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_121893v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13562/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl2/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13562/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13562/shard-apl2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/sha=
rd-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13562/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl3/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13562/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13562/shard-apl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562=
/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13562/shard-apl4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-ap=
l6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3562/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13562/shard-apl7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13562/shar=
d-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13562/shard-apl1/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl6/boot.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121=
893v2/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_121893v2/shard-apl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_121893v2/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/sh=
ard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_121893v2/shard-apl1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
1893v2/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_121893v2/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_121893v2/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/sh=
ard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_121893v2/shard-apl3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
1893v2/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_121893v2/shard-apl4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_121893v2/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/sh=
ard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_121893v2/shard-apl6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-apl6/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8293=
">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@render-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@api_intel_bb@render-ccs.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
122">i915#6122</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@drm_fdinfo@busy-idle@bcs0=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8414">i915#8414</a>) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@chamelium:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@feature_discovery@chameli=
um.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-tglu-2/igt@gem_basic@multigpu-create=
-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_caching@writes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-mtlp-7/igt@gem_caching@writes.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4873">=
i915#4873</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@gem_close_race@multigpu-ba=
sic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-many:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@gem_ctx_persistence@heart=
beat-many.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8555">i915#8555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-snb1/igt@gem_ctx_persistence@legacy-=
engines-queued.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1099">i915#1099</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-dg1-19/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-=
dg1-17/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@gem_exec_balancer@bonded-s=
ync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
1893v2/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@invalid-fence-array:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-dg1-17/igt@gem_exec_fence@invalid-fence-array.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
21893v2/shard-dg1-14/igt@gem_exec_fence@invalid-fence-array.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4423">i91=
5#4423</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit67:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@gem_exec_fence@submit67.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/48=
12">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-uc:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-mtlp-8/igt@gem_exec_flush@basic-batch-kernel-default-uc=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_121893v2/shard-mtlp-4/igt@gem_exec_flush@basic-batch-kernel-defaul=
t-uc.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8962">i915#8962</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9121">i915#9121</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@gem_exec_flush@basic-wb-rw=
-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4852">i915#4852</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@gem_exec_reloc@basic-write=
-read-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3281">i915#3281</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@gem_exec_schedule@preempt=
-queue-contexts-chain.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@gem_fenced_exec_thrash@no=
-spare-fences-busy-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@short-mmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@gem_mmap@short-mmap.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083">=
i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@gem_mmap_gtt@cpuset-big-co=
py-odd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4077">i915#4077</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@gem_partial_pwrite_pread@w=
rites-after-reads-display.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3282">i915#3282</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-snb1/igt@gem_pread@exhaustion.html">=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">=
i915#2658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@gem_pxp@protected-encrypt=
ed-src-copy-not-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-tglu-2/igt@gem_pxp@verify-pxp-stale-=
ctx-execution.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-mtlp-7/igt@gem_readwrite@write-bad-h=
andle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@gem_set_tiling_vs_pwrite.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@gem_userptr_blits@map-fixe=
d-invalidate-overlap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@gem_userptr_blits@sd-probe=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3297">i915#3297</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4958">i915#4958</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@gem_userptr_blits@unsync-=
unmap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3297">i915#3297</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-snb4/igt@gem_workarounds@suspend-res=
ume-fd.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8841">i915#8841</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@gen7_exec_parse@oacontrol=
-tracking.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@gen9_exec_parse@allowed-si=
ngle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2856">i915#2856</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-tglu-2/igt@gen9_exec_parse@bb-chaine=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@i915_pipe_stress@stress-x=
rgb8888-ytiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/7091">i915#7091</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@i915_pm_dc@dc6-psr.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i=
915#658</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
121893v2/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#35=
91</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13562/shard-dg1-15/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/sh=
ard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_121893v2/shard-mtlp-7/igt@i915_pm_rpm@dpms-non-lpsp.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1397">i915#1397</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@i915_pm_rpm@modeset-lpsp.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-rkl-2/igt@i915_pm_rpm@modeset-non-lpsp.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2=
/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@i915_pm_rpm@modeset-pc8-re=
sidency-stress.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@i915_pm_rps@thresholds-par=
k@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/8925">i915#8925</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_addfb_basic@basic-y-t=
iled-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4215">i915#4215</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@kms_addfb_basic@framebuffe=
r-vs-set-tiling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4212">i915#4212</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-m=
c_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/8502">i915#8502</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) =
+11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-1-y-r=
c_ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg1-19/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-d-hdmi-a-1-y-rc_ccs.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/8502">i915#8502</a>) +7 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-snb4/igt@kms_atomic_transition@plane=
-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_big_fb@x-tiled-16bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111614">fdo#111614</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-=
size-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5190">i915#5190</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-mtlp-7/igt@kms_big_fb@y-tiled-max-hw=
-stride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-32bpp=
-rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5190">i915#5190</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@kms_ccs@pipe-a-crc-primary=
-basic-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5354">i915#5354</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@kms_ccs@pipe-a-random-ccs-=
data-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +10 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-mtlp-7/igt@kms_ccs@pipe-b-crc-primar=
y-basic-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/6095">i915#6095</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_rc_ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-tglu-2/igt@kms_ccs@pipe-c-bad-rotati=
on-90-4_tiled_mtl_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/6095">i915#6095</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-mtlp-7/igt@kms_ccs@pipe-c-crc-sprite=
-planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-tglu-2/igt@kms_ccs@pipe-d-crc-sprite=
-planes-basic-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-2/igt@kms_cdclk@mode-transition@=
pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/7213">i915#7213</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-dp-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-12/igt@kms_cdclk@plane-scaling@p=
ipe-c-dp-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4087">i915#4087</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@gamma:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@kms_chamelium_color@gamma.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-mode-timings:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-mtlp-7/igt@kms_chamelium_edid@hdmi-m=
ode-timings.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7828">i915#7828</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@kms_chamelium_hpd@dp-hpd-s=
torm.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7828">i915#7828</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-tglu-2/igt@kms_chamelium_hpd@hdmi-hp=
d-enable-disable-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-2/igt@kms_color@deep-color.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-2/igt@kms_content_protection@ato=
mic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7118">i915#7118</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@kms_content_protection@dp-=
mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_content_protection@li=
c@pipe-a-dp-4.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7173">i915#7173</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-tglu-2/igt@kms_content_protection@me=
i_interface.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/7116">i915#7116</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@kms_cursor_crc@cursor-offs=
creen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@kms_cursor_legacy@cursorb-=
vs-flipb-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5354">i915#5354</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_display_modes@mst-ext=
ended-mode-negative.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/8588">i915#8588</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@kms_fbcon_fbt@psr-suspend.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_fence_pin_leak.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4881">=
i915#4881</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-snb4/igt@kms_flip@2x-flip-vs-blockin=
g-wf-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111767">fdo#111767</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@kms_flip@2x-flip-vs-rmfb-i=
nterruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@kms_flip@2x-modeset-vs-vbl=
ank-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109274">fdo#109274</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_flip@flip-vs-fences.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) =
+3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbc-1p-offscren-pri-shrfb-draw-pwrite.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +21 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-tglu-2/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-cur-indfb-draw-render.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +3 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_121893v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#=
6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +13 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +44 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@=
fbcpsr-tiling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5460">i915#5460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-tglu-2/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1825">i915#1825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-rkl-2/igt@kms_hdr@bpc-switch.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-1/igt@kms_hdr@static-toggle-susp=
end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-12/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-dp-2.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg1-13/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-3.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe=
-c-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-2/igt@kms_plane_scaling@plane-do=
wnscale-with-pixel-format-factor-0-25@pipe-c-hdmi-a-2.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) =
+7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-hd=
mi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg1-19/igt@kms_plane_scaling@plane-d=
ownscale-with-rotation-factor-0-5@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +1=
1 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-a-h=
dmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-rkl-7/igt@kms_plane_scaling@plane-do=
wnscale-with-rotation-factor-0-75@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +7=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-6/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a=
>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-rkl-7/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-=
hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg1-17/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-25@pipe-d-hdmi-a-4.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +7=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/6524">i915#6524</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/6805">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_psr@psr2_dpms.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i=
915#1072</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_rotation_crc@primary-=
y-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4235">i915#4235</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@kms_rotation_crc@sprite-ro=
tation-90-pos-100-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_cmdline:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_selftest@drm_cmdline.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8661">i915#8661</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_damage:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-snb4/igt@kms_selftest@drm_damage.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/8661">i915#8661</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-snb1/igt@kms_setmode@basic@pipe-a-hd=
mi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5465">i915#5465</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-query-busy-hang:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-snb1/igt@kms_vblank@pipe-c-query-bus=
y-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) +269 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@kms_writeback@writeback-i=
nvalid-parameters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@perf@non-zero-reason@0-rc=
s0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9100">i915#9100</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@perf_pmu@module-unload.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/579=
3">i915#5793</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/6121">i915#6121</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@perf_pmu@rc6-all-gts.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8516=
">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@prime_mmap@test_aperture_=
limit@test_aperture_limit-smem.html">CRASH</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/7331">i915#7331</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@prime_vgem@basic-write.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/32=
91">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-11/igt@prime_vgem@coherency-gtt.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@single-out-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@v3d/v3d_submit_csd@single-=
out-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2575">i915#2575</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@create-two-perfmon:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-mtlp-7/igt@vc4/vc4_perfmon@create-tw=
o-perfmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7711">i915#7711</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@destroy-invalid-perfmon:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-tglu-2/igt@vc4/vc4_perfmon@destroy-i=
nvalid-perfmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@unused-bo-1ns:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_121893v2/shard-dg2-5/igt@vc4/vc4_wait_bo@unused-bo-=
1ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7711">i915#7711</a>) +6 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
121893v2/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-dg2-5/igt@gem_ctx_isolation@preservation-s3@bcs0.html">=
FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375"=
>fdo#103375</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_121893v2/shard-dg2-11/igt@gem_ctx_isolation@preservation-s3@bcs0.=
html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture@vcs1-smem:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-mtlp-3/igt@gem_exec_capture@capture@vcs1-smem.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/559=
1">i915#5591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_121893v2/shard-mtlp-5/igt@gem_exec_capture@capture@vcs1-smem.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-rkl-7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_121893v2/shard-rkl-6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-apl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_121893v2/shard-apl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@noreorder-priority@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-mtlp-4/igt@gem_exec_schedule@noreorder-priority@ccs0.ht=
ml">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9121">i915#9121</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_121893v2/shard-mtlp-6/igt@gem_exec_schedule@noreorder-pri=
ority@ccs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-untiled:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-mtlp-8/igt@i915_pipe_stress@stress-xrgb8888-untiled.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/869=
1">i915#8691</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_121893v2/shard-mtlp-4/igt@i915_pipe_stress@stress-xrgb8888-until=
ed.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-tglu-2/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12189=
3v2/shard-tglu-2/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-dg1-14/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2=
/shard-dg1-19/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a> +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>
<p>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13562/shard-dg2-12/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i9=
15#1397</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_121893v2/shard-dg2-2/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">P=
ASS</a></p>
</li>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13562/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i91=
5#1397</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_121893v2/shard-rkl-1/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">PA=
SS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5138">i9=
15#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_121893v2/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-mtlp-2/igt@kms_big_fb@4-t=
iled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-mtlp-5/igt@kms_cursor_legacy@cursor-vs-flip-atomic-tran=
sitions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/8248">i915#8248</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-mtlp-7/igt@kms_cursor_leg=
acy@cursor-vs-flip-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_121893v2/shard-apl6/igt@kms_cursor_legacy@flip-vs-curso=
r-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-glk5/igt@kms_cursor_legacy@=
flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-dg1-18/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
1893v2/shard-dg1-15/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-ind=
fb-pgflip-blt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/6880">i915#6880</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_121893v2/shard-dg2-6/igt@kms_frontbuffer_tracki=
ng@fbc-1p-primscrn-indfb-pgflip-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-mtlp-7/igt@kms_plane@pixel-format-source-clamping@pipe-=
b-planes.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1623">i915#1623</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_121893v2/shard-mtlp-4/igt@kms_plane@pixel-format-sou=
rce-clamping@pipe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-dg2-5/igt@kms_sysfs_edid_timing.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2">IGT#2</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2=
/shard-dg2-11/igt@kms_sysfs_edid_timing.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-dg1-17/igt@i915_pm_dc@dc6-psr.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121893v2/sh=
ard-dg1-14/igt@i915_pm_dc@dc6-psr.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/4423">i915#4423</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i9=
15#2681</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
91">i915#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_121893v2/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.h=
tml">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
681">i915#2681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i=
915#2681</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_121893v2/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681"=
>i915#2681</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3591">i915#3591</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-dg2-5/igt@kms_content_protection@mei_interface.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i9=
15#7118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_121893v2/shard-dg2-11/igt@kms_content_protection@mei_interface.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">=
i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
7162">i915#7162</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-mtlp-3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-tran=
sitions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-mtlp-8/igt@kms_cursor_leg=
acy@flip-vs-cursor-atomic-transitions-varying-size.html">DMESG-FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2017">i915#2=
017</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5954">=
i915#5954</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri=
-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/8708">i915#8708</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_121893v2/shard-dg1-14/igt@kms_frontbuffe=
r_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-dg1-17/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#35=
55</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8228">i=
915#8228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_121893v2/shard-dg1-14/igt@kms_hdr@invalid-metadata-sizes.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#=
3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4423"=
>i915#4423</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4816">i915#4816</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_121893v2/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pi=
pe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13562/shard-dg1-14/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1218=
93v2/shard-dg1-13/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>)<=
/li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13562 -&gt; Patchwork_121893v2</li>
<li>Piglit: piglit_4509 -&gt; None</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13562: 6cd46255547ba72bb6cc6aab91c905b1dec95696 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7451: 5d48d1fb231f449fe2f80cda14ea7a1ecfda59fa @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_121893v2: 6cd46255547ba72bb6cc6aab91c905b1dec95696 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3963437697990246785==--
