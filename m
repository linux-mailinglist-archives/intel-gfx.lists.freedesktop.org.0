Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1658187A13
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 07:59:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 725406E4E3;
	Tue, 17 Mar 2020 06:59:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 512F66E4E3;
 Tue, 17 Mar 2020 06:59:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 417E5A47DA;
 Tue, 17 Mar 2020 06:59:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Tue, 17 Mar 2020 06:59:18 -0000
Message-ID: <158442835823.5177.15576501618558609812@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200312053841.2794-1-vandita.kulkarni@intel.com>
In-Reply-To: <20200312053841.2794-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_support_for_mipi_dsi_cmd_mode_=28rev8=29?=
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

Series: Add support for mipi dsi cmd mode (rev8)
URL   : https://patchwork.freedesktop.org/series/69290/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8138_full -> Patchwork_16982_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16982_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@sysfs_preempt_timeout@timeout@rcs0}:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl1/igt@sysfs_preempt_timeout@timeout@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-skl7/igt@sysfs_preempt_timeout@timeout@rcs0.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8138_full and Patchwork_16982_full:

### New IGT tests (3) ###

  * igt@sysfs_heartbeat_interval@off:
    - Statuses :
    - Exec time: [None] s

  * igt@sysfs_heartbeat_interval@precise:
    - Statuses :
    - Exec time: [None] s

  * igt@sysfs_preempt_timeout@idempotent:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_16982_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +6 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb1/igt@gem_ctx_isolation@vcs1-none.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-iclb5/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#1402])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl8/igt@gem_ctx_persistence@close-replace-race.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-skl6/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_shared@q-independent-vebox:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#935])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl1/igt@gem_ctx_shared@q-independent-vebox.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-skl7/igt@gem_ctx_shared@q-independent-vebox.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-render:
    - shard-snb:          [PASS][11] -> [INCOMPLETE][12] ([i915#82])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-snb2/igt@gem_exec_schedule@implicit-read-write-render.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-snb5/igt@gem_exec_schedule@implicit-read-write-render.html

  * igt@gem_exec_schedule@implicit-write-read-bsd2:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276] / [i915#677])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-iclb5/igt@gem_exec_schedule@implicit-write-read-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#644])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [PASS][19] -> [FAIL][20] ([i915#644])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#54])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
    - shard-kbl:          [PASS][23] -> [FAIL][24] ([i915#54])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
    - shard-apl:          [PASS][25] -> [FAIL][26] ([i915#54])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#34])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-glk5/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-glk1/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#221])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl5/igt@kms_flip@flip-vs-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-skl5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#34])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl6/igt@kms_flip@plain-flip-ts-check.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-skl6/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move:
    - shard-glk:          [PASS][37] -> [FAIL][38] ([i915#49])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#1188]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109642] / [fdo#111068])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-iclb6/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109441])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-b-query-idle-hang:
    - shard-skl:          [PASS][45] -> [SKIP][46] ([fdo#109271]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl1/igt@kms_vblank@pipe-b-query-idle-hang.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-skl7/igt@kms_vblank@pipe-b-query-idle-hang.html

  * igt@prime_busy@after-bsd2:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109276]) +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb2/igt@prime_busy@after-bsd2.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-iclb6/igt@prime_busy@after-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [INCOMPLETE][49] ([i915#1402]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-tglb1/igt@gem_ctx_persistence@close-replace-race.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-tglb1/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][51] ([fdo#109276] / [i915#677]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-render:
    - shard-skl:          [DMESG-WARN][53] ([i915#836]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl10/igt@gem_exec_schedule@pi-distinct-iova-render.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-skl2/igt@gem_exec_schedule@pi-distinct-iova-render.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][55] ([i915#677]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-render:
    - shard-skl:          [FAIL][57] -> [PASS][58] +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl3/igt@gem_exec_schedule@preempt-queue-contexts-render.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-skl10/igt@gem_exec_schedule@preempt-queue-contexts-render.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][59] ([fdo#112146]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_softpin@noreloc-s3:
    - shard-snb:          [DMESG-WARN][61] ([i915#42]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-snb5/igt@gem_softpin@noreloc-s3.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-snb6/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][63] ([i915#454]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][65] ([i915#413]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb3/igt@i915_pm_rps@reset.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-iclb7/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [FAIL][67] ([i915#413]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-tglb3/igt@i915_pm_rps@waitboost.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-tglb3/igt@i915_pm_rps@waitboost.html

  * igt@kms_color@pipe-c-ctm-0-5:
    - shard-skl:          [FAIL][69] ([i915#182]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl1/igt@kms_color@pipe-c-ctm-0-5.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-skl3/igt@kms_color@pipe-c-ctm-0-5.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][71] ([IGT#5]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-glk:          [FAIL][75] ([i915#34]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-glk2/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-glk4/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][77] ([i915#69]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
    - shard-kbl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][81] ([fdo#108145]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][83] ([fdo#108145] / [i915#265]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][85] ([fdo#109441]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb4/igt@kms_psr@psr2_suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][87] ([i915#31]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-apl1/igt@kms_setmode@basic.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-apl8/igt@kms_setmode@basic.html
    - shard-glk:          [FAIL][89] ([i915#31]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-glk7/igt@kms_setmode@basic.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-glk4/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][91] ([fdo#112080]) -> [PASS][92] +7 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][93] ([fdo#109276]) -> [PASS][94] +10 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb3/igt@prime_busy@hang-bsd2.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [TIMEOUT][95] ([i915#1340]) -> [INCOMPLETE][96] ([i915#1402])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-kbl4/igt@gem_ctx_persistence@close-replace-race.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-kbl2/igt@gem_ctx_persistence@close-replace-race.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][97] ([i915#588]) -> [SKIP][98] ([i915#658])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][99] ([i915#454]) -> [SKIP][100] ([i915#468])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-snb:          [INCOMPLETE][101] ([i915#82]) -> [SKIP][102] ([fdo#109271])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-snb5/igt@i915_pm_rpm@dpms-non-lpsp.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-snb4/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][103] ([i915#92]) -> ([FAIL][104], [FAIL][105]) ([i915#1389] / [i915#1402] / [i915#92])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-kbl7/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-kbl2/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-kbl2/igt@runner@aborted.html
    - shard-skl:          [FAIL][106] ([i915#69]) -> [FAIL][107] ([i915#1402] / [i915#69])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl10/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/shard-skl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1340]: https://gitlab.freedesktop.org/drm/intel/issues/1340
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#182]: https://gitlab.freedesktop.org/drm/intel/issues/182
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#935]: https://gitlab.freedesktop.org/drm/intel/issues/935


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8138 -> Patchwork_16982

  CI-20190529: 20190529
  CI_DRM_8138: 652084cff0971058d1acb1746001f89ef8ea7321 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5512: f6fef7eff6f121e5e89afd7e70116f471ccd5b8b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16982: 43785a14fc4abcd5137d04c291788f4efe141aeb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
