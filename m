Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F671808E0
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 21:12:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F25E6E8DB;
	Tue, 10 Mar 2020 20:12:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DF9516E8DA;
 Tue, 10 Mar 2020 20:12:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D8163A41FB;
 Tue, 10 Mar 2020 20:12:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Tue, 10 Mar 2020 20:12:33 -0000
Message-ID: <158387115388.1150.17910214094892773940@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200309211057.38575-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20200309211057.38575-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_Invalidate_OA_TLB_on_when_closing_perf_stream?=
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

Series: drm/i915/perf: Invalidate OA TLB on when closing perf stream
URL   : https://patchwork.freedesktop.org/series/74469/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8106_full -> Patchwork_16897_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16897_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd:
    - shard-kbl:          [PASS][1] -> [FAIL][2] ([i915#679])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-kbl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-kbl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1:
    - shard-kbl:          [PASS][3] -> [INCOMPLETE][4] ([i915#1239])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-kbl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-kbl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110854])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-iclb6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112080]) +7 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-write-read-bsd2:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276] / [i915#677])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-iclb6/igt@gem_exec_schedule@implicit-write-read-bsd2.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb7/igt@gem_exec_schedule@in-order-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([i915#677]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109276]) +14 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#1318])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-tglb6/igt@gem_exec_whisper@basic-contexts-forked.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-tglb6/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-glk:          [PASS][19] -> [DMESG-WARN][20] ([i915#118] / [i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-glk8/igt@gem_exec_whisper@basic-fds-priority.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-glk7/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][21] -> [DMESG-WARN][22] ([i915#716])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-glk5/igt@gen9_exec_parse@allowed-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-glk9/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#52] / [i915#54])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#79])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#456] / [i915#460] / [i915#516])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-tglb1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-tglb6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip_tiling@flip-to-yf-tiled:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#107931] / [i915#167])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-skl6/igt@kms_flip_tiling@flip-to-yf-tiled.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-skl9/igt@kms_flip_tiling@flip-to-yf-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#49])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#899])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - shard-skl:          [PASS][35] -> [DMESG-WARN][36] ([IGT#6])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-skl10/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-skl8/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][39] -> [FAIL][40] ([i915#31])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-apl1/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-apl8/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][41] -> [INCOMPLETE][42] ([i915#69])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-skl4/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-skl2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +6 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][45] -> [DMESG-WARN][46] ([i915#180]) +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-apl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-apl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@processes:
    - shard-kbl:          [FAIL][49] ([i915#570] / [i915#679]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-kbl2/igt@gem_ctx_persistence@processes.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-kbl1/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [FAIL][51] ([i915#1277]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-tglb1/igt@gem_exec_balancer@hang.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-tglb2/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [SKIP][53] ([i915#677]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-iclb7/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [SKIP][55] ([fdo#109276] / [i915#677]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb5/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][57] ([fdo#112146]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-iclb3/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [DMESG-WARN][59] ([i915#118] / [i915#95]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-glk2/igt@gem_exec_whisper@basic-queues-forked.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-glk8/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@i915_suspend@sysfs-reader:
    - shard-snb:          [DMESG-WARN][61] ([i915#42]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-snb4/igt@i915_suspend@sysfs-reader.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-snb4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][63] ([i915#79]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][65] ([i915#1188]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [INCOMPLETE][67] ([i915#69]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][69] ([fdo#108145] / [i915#265]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][75] ([fdo#112080]) -> [PASS][76] +14 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][77] ([fdo#109276]) -> [PASS][78] +16 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb5/igt@prime_busy@hang-bsd2.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_linear_blits@normal:
    - shard-apl:          [TIMEOUT][79] ([i915#1322]) -> [TIMEOUT][80] ([fdo#111732] / [i915#1322])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-apl4/igt@gem_linear_blits@normal.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-apl6/igt@gem_linear_blits@normal.html

  * igt@i915_pm_rpm@fences:
    - shard-snb:          [INCOMPLETE][81] ([i915#82]) -> [SKIP][82] ([fdo#109271])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-snb4/igt@i915_pm_rpm@fences.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-snb5/igt@i915_pm_rpm@fences.html

  * igt@kms_flip@2x-flip-vs-modeset-interruptible:
    - shard-snb:          [SKIP][83] ([fdo#109271]) -> [INCOMPLETE][84] ([i915#82])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-snb6/igt@kms_flip@2x-flip-vs-modeset-interruptible.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-snb6/igt@kms_flip@2x-flip-vs-modeset-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][85] ([i915#180] / [i915#56]) -> [DMESG-WARN][86] ([i915#180])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#107931]: https://bugs.freedesktop.org/show_bug.cgi?id=107931
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#1318]: https://gitlab.freedesktop.org/drm/intel/issues/1318
  [i915#1322]: https://gitlab.freedesktop.org/drm/intel/issues/1322
  [i915#167]: https://gitlab.freedesktop.org/drm/intel/issues/167
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#516]: https://gitlab.freedesktop.org/drm/intel/issues/516
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8106 -> Patchwork_16897

  CI-20190529: 20190529
  CI_DRM_8106: 5b0076e8066ea8218e7857ee1aa28b0670acde94 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5504: d6788bf0404f76b66170e18eb26c85004b5ccb25 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16897: 021298fc7d84d7e14dc86b824a565fe6b57479fb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16897/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
