Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC1817BFA2
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 14:54:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23A556ED24;
	Fri,  6 Mar 2020 13:54:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2CEDA6ED24;
 Fri,  6 Mar 2020 13:54:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 25362A00EF;
 Fri,  6 Mar 2020 13:54:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Fri, 06 Mar 2020 13:54:50 -0000
Message-ID: <158350289012.3082.9444385022430868878@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200305120434.111091-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200305120434.111091-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_drm=5Ffb=5Fhelper_cleanup=2E_=28rev3=29?=
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

Series: drm: drm_fb_helper cleanup. (rev3)
URL   : https://patchwork.freedesktop.org/series/74140/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8070_full -> Patchwork_16838_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16838_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#110854])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-iclb6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276]) +18 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-iclb6/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb8/igt@gem_exec_schedule@wide-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          [PASS][9] -> [DMESG-WARN][10] ([i915#118] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-glk9/igt@gem_exec_whisper@basic-queues-priority.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-glk4/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-iclb6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-kbl4/igt@gem_softpin@noreloc-s3.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-kbl7/igt@gem_softpin@noreloc-s3.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#79])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip_tiling@flip-yf-tiled:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl8/igt@kms_flip_tiling@flip-yf-tiled.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-skl1/igt@kms_flip_tiling@flip-yf-tiled.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#49])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#899])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109642] / [fdo#111068])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-iclb7/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][29] -> [FAIL][30] ([i915#31])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-apl7/igt@kms_setmode@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-apl8/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][31] -> [FAIL][32] ([i915#31])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-kbl7/igt@kms_setmode@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-kbl6/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#112080]) +16 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-iclb3/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-tglb:         [INCOMPLETE][35] -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-tglb6/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-tglb5/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2:
    - shard-tglb:         [FAIL][37] ([i915#679]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-tglb6/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-tglb5/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][39] ([fdo#112080]) -> [PASS][40] +9 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][43] ([fdo#109276]) -> [PASS][44] +13 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb8/igt@gem_exec_schedule@out-order-bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb2/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-iclb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-kbl4/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][49] ([i915#447]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-iclb7/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [FAIL][51] ([i915#413]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-tglb2/igt@i915_pm_rps@waitboost.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-tglb6/igt@i915_pm_rps@waitboost.html
    - shard-iclb:         [FAIL][53] ([i915#413]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb8/igt@i915_pm_rps@waitboost.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-iclb8/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][55] ([IGT#5]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [INCOMPLETE][57] ([i915#61]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
    - shard-skl:          [INCOMPLETE][61] ([i915#69]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][63] ([fdo#109642] / [fdo#111068]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb3/igt@kms_psr2_su@frontbuffer.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Warnings ####

  * igt@gem_exec_schedule@pi-userfault-bsd1:
    - shard-iclb:         [INCOMPLETE][67] ([i915#1381]) -> [SKIP][68] ([fdo#109276])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-iclb7/igt@gem_exec_schedule@pi-userfault-bsd1.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-hsw:          [DMESG-WARN][69] ([fdo#111870]) -> [DMESG-WARN][70] ([fdo#110789] / [fdo#111870])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-hsw2/igt@gem_userptr_blits@sync-unmap-cycles.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-hsw2/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_module_load@reload:
    - shard-kbl:          [INCOMPLETE][71] ([fdo#103665]) -> [INCOMPLETE][72] ([fdo#103665] / [i915#1390])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-kbl1/igt@i915_module_load@reload.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-kbl2/igt@i915_module_load@reload.html
    - shard-glk:          [INCOMPLETE][73] ([i915#58] / [k.org#198133]) -> [INCOMPLETE][74] ([i915#1390] / [i915#58] / [k.org#198133])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-glk6/igt@i915_module_load@reload.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-glk8/igt@i915_module_load@reload.html
    - shard-apl:          [INCOMPLETE][75] ([fdo#103927]) -> [INCOMPLETE][76] ([fdo#103927] / [i915#1390])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-apl6/igt@i915_module_load@reload.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-apl3/igt@i915_module_load@reload.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][77] ([i915#468]) -> [FAIL][78] ([i915#454])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/shard-tglb3/igt@i915_pm_dc@dc6-psr.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110789]: https://bugs.freedesktop.org/show_bug.cgi?id=110789
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1381]: https://gitlab.freedesktop.org/drm/intel/issues/1381
  [i915#1390]: https://gitlab.freedesktop.org/drm/intel/issues/1390
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8070 -> Patchwork_16838

  CI-20190529: 20190529
  CI_DRM_8070: d4e6f8b48e361f0cae9132f50f1778707b2546a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5495: 22df72de8affcec22d9f354bb6148d77f60cc580 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16838: 20055c3f1cd148890751083536dfd917d1455535 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16838/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
