Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FE717BBFE
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 12:45:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AD5F6ECDE;
	Fri,  6 Mar 2020 11:45:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D1F816ECDD;
 Fri,  6 Mar 2020 11:45:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BF203A00E7;
 Fri,  6 Mar 2020 11:45:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 06 Mar 2020 11:45:26 -0000
Message-ID: <158349512675.3083.14164330185096591874@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200305082856.2595525-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200305082856.2595525-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Improve_the_start_alignment_of_bonded_pairs?=
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

Series: drm/i915: Improve the start alignment of bonded pairs
URL   : https://patchwork.freedesktop.org/series/74315/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8070_full -> Patchwork_16835_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16835_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_balancer@bonded-early}:
    - shard-iclb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb4/igt@gem_exec_balancer@bonded-early.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-iclb2/igt@gem_exec_balancer@bonded-early.html
    - shard-kbl:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-kbl1/igt@gem_exec_balancer@bonded-early.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-kbl4/igt@gem_exec_balancer@bonded-early.html
    - shard-tglb:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-tglb3/igt@gem_exec_balancer@bonded-early.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-tglb8/igt@gem_exec_balancer@bonded-early.html

  
Known issues
------------

  Here are the changes found in Patchwork_16835_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110854])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-iclb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@deep-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb7/igt@gem_exec_schedule@deep-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-iclb4/igt@gem_exec_schedule@deep-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276] / [i915#677])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-iclb5/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +22 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-iclb7/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([i915#677]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][17] -> [DMESG-WARN][18] ([i915#118] / [i915#95]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-glk6/igt@gem_exec_whisper@basic-queues-forked-all.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-glk8/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-apl1/igt@gem_softpin@noreloc-s3.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-apl6/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#716])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-skl2/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#79])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip_tiling@flip-yf-tiled:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl8/igt@kms_flip_tiling@flip-yf-tiled.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-skl2/igt@kms_flip_tiling@flip-yf-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-snb:          [PASS][27] -> [SKIP][28] ([fdo#109271])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-snb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#49])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +7 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#899])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109642] / [fdo#111068])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-iclb3/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][39] -> [FAIL][40] ([i915#31])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-apl7/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-apl8/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][41] -> [FAIL][42] ([i915#31])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-kbl7/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-kbl2/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#112080]) +19 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-iclb8/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][45] ([fdo#112080]) -> [PASS][46] +17 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb6/igt@gem_busy@busy-vcs1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-tglb:         [INCOMPLETE][47] -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-tglb6/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-tglb6/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2:
    - shard-tglb:         [FAIL][49] ([i915#679]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-tglb6/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-tglb6/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][51] ([fdo#109276] / [i915#677]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb7/igt@gem_exec_schedule@implicit-both-bsd1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][53] ([i915#677]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][55] ([fdo#112146]) -> [PASS][56] +4 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][57] ([i915#447]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-iclb8/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][59] ([i915#413]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb8/igt@i915_pm_rps@waitboost.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-iclb6/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][63] ([IGT#5]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [INCOMPLETE][65] ([i915#61]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-hsw6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
    - shard-skl:          [INCOMPLETE][69] ([i915#69]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][71] ([fdo#108145]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][75] ([fdo#109276]) -> [PASS][76] +22 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [INCOMPLETE][77] ([i915#1381]) -> [SKIP][78] ([i915#677])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb7/igt@gem_exec_schedule@pi-userfault-bsd.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@pi-userfault-bsd1:
    - shard-iclb:         [INCOMPLETE][79] ([i915#1381]) -> [SKIP][80] ([fdo#109276])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-iclb3/igt@gem_exec_schedule@pi-userfault-bsd1.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-hsw:          [DMESG-WARN][81] ([fdo#111870]) -> [DMESG-WARN][82] ([fdo#110789] / [fdo#111870])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-hsw2/igt@gem_userptr_blits@sync-unmap-cycles.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-hsw2/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_module_load@reload:
    - shard-kbl:          [INCOMPLETE][83] ([fdo#103665]) -> [INCOMPLETE][84] ([fdo#103665] / [i915#1390])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-kbl1/igt@i915_module_load@reload.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-kbl4/igt@i915_module_load@reload.html
    - shard-glk:          [INCOMPLETE][85] ([i915#58] / [k.org#198133]) -> [INCOMPLETE][86] ([i915#1390] / [i915#58] / [k.org#198133])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-glk6/igt@i915_module_load@reload.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-glk8/igt@i915_module_load@reload.html
    - shard-apl:          [INCOMPLETE][87] ([fdo#103927]) -> [INCOMPLETE][88] ([fdo#103927] / [i915#1390])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-apl6/igt@i915_module_load@reload.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-apl7/igt@i915_module_load@reload.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][89] ([i915#454]) -> [SKIP][90] ([i915#468])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][91] ([i915#468]) -> [FAIL][92] ([i915#454])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/shard-tglb1/igt@i915_pm_dc@dc6-psr.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
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
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
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
  * Linux: CI_DRM_8070 -> Patchwork_16835

  CI-20190529: 20190529
  CI_DRM_8070: d4e6f8b48e361f0cae9132f50f1778707b2546a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5495: 22df72de8affcec22d9f354bb6148d77f60cc580 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16835: 8a1189eb3710e14e381d51497f6d5a13bdc0a66d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16835/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
