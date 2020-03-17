Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F7F187F22
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 11:59:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 000C66E0CB;
	Tue, 17 Mar 2020 10:59:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 482A06E0A5;
 Tue, 17 Mar 2020 10:59:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4114DA00CC;
 Tue, 17 Mar 2020 10:59:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 17 Mar 2020 10:59:18 -0000
Message-ID: <158444275823.5179.12386560826865039167@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200316225153.3394-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200316225153.3394-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Avoid_gem=5Fcontext-=3Emutex_for_simple_vma_lookup?=
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

Series: drm/i915/gem: Avoid gem_context->mutex for simple vma lookup
URL   : https://patchwork.freedesktop.org/series/74759/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8139_full -> Patchwork_16988_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16988_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16988_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16988_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_alignment@single:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-kbl3/igt@gem_exec_alignment@single.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-kbl1/igt@gem_exec_alignment@single.html
    - shard-iclb:         [PASS][3] -> [DMESG-WARN][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-iclb7/igt@gem_exec_alignment@single.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-iclb5/igt@gem_exec_alignment@single.html
    - shard-tglb:         [PASS][5] -> [DMESG-WARN][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-tglb7/igt@gem_exec_alignment@single.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-tglb2/igt@gem_exec_alignment@single.html
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-apl3/igt@gem_exec_alignment@single.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-apl2/igt@gem_exec_alignment@single.html

  * igt@gem_exec_parallel@vecs0-fds:
    - shard-skl:          NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-skl5/igt@gem_exec_parallel@vecs0-fds.html

  * igt@gem_softpin@invalid:
    - shard-skl:          [PASS][10] -> [DMESG-WARN][11] +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-skl8/igt@gem_softpin@invalid.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-skl1/igt@gem_softpin@invalid.html
    - shard-kbl:          [PASS][12] -> [INCOMPLETE][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-kbl7/igt@gem_softpin@invalid.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-kbl4/igt@gem_softpin@invalid.html
    - shard-glk:          [PASS][14] -> [DMESG-WARN][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-glk8/igt@gem_softpin@invalid.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-glk9/igt@gem_softpin@invalid.html

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> ([FAIL][16], [FAIL][17])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-tglb2/igt@runner@aborted.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-tglb1/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][18], [FAIL][19]) ([i915#1389] / [i915#1402] / [i915#92]) -> ([FAIL][20], [FAIL][21], [FAIL][22]) ([i915#92])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-kbl1/igt@runner@aborted.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-kbl1/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-kbl4/igt@runner@aborted.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-kbl1/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-kbl4/igt@runner@aborted.html
    - shard-apl:          ([FAIL][23], [FAIL][24], [FAIL][25]) ([fdo#103927] / [i915#1402] / [i915#529]) -> ([FAIL][26], [FAIL][27], [FAIL][28]) ([fdo#103927])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-apl6/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-apl6/igt@runner@aborted.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-apl4/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-apl2/igt@runner@aborted.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-apl2/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-apl6/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16988_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#112146])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-iclb8/igt@gem_exec_async@concurrent-writes-bsd.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109276] / [i915#677])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-iclb8/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#644])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@invalid:
    - shard-apl:          [PASS][35] -> [INCOMPLETE][36] ([fdo#103927])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-apl3/igt@gem_softpin@invalid.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-apl6/igt@gem_softpin@invalid.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-kbl2/igt@i915_suspend@debugfs-reader.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-kbl2/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#54])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
    - shard-kbl:          [PASS][41] -> [FAIL][42] ([i915#54])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
    - shard-apl:          [PASS][43] -> [FAIL][44] ([i915#54])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][45] -> [DMESG-WARN][46] ([i915#180])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move:
    - shard-glk:          [PASS][47] -> [FAIL][48] ([i915#49])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#1188])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-skl10/igt@kms_hdr@bpc-switch.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-skl6/igt@kms_hdr@bpc-switch.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#109642] / [fdo#111068])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-iclb7/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109441])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-iclb7/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-a-query-busy-hang:
    - shard-glk:          [PASS][55] -> [INCOMPLETE][56] ([i915#58] / [k.org#198133]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-glk6/igt@kms_vblank@pipe-a-query-busy-hang.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-glk7/igt@kms_vblank@pipe-a-query-busy-hang.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][57] -> [SKIP][58] ([fdo#112080]) +11 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-iclb8/igt@perf_pmu@busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([fdo#109276]) +22 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [INCOMPLETE][61] ([i915#1402]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-kbl1/igt@gem_ctx_persistence@close-replace-race.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-kbl7/igt@gem_ctx_persistence@close-replace-race.html
    - shard-iclb:         [INCOMPLETE][63] ([i915#1402]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-iclb8/igt@gem_ctx_persistence@close-replace-race.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-iclb1/igt@gem_ctx_persistence@close-replace-race.html
    - shard-apl:          [INCOMPLETE][65] ([fdo#103927]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-apl4/igt@gem_ctx_persistence@close-replace-race.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-apl3/igt@gem_ctx_persistence@close-replace-race.html
    - shard-skl:          [INCOMPLETE][67] ([i915#1402]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-skl9/igt@gem_ctx_persistence@close-replace-race.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-skl2/igt@gem_ctx_persistence@close-replace-race.html
    - shard-glk:          [INCOMPLETE][69] ([i915#1402] / [i915#58] / [k.org#198133]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-glk1/igt@gem_ctx_persistence@close-replace-race.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-glk2/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_shared@q-independent-vebox:
    - shard-skl:          [FAIL][71] ([i915#935]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-skl8/igt@gem_ctx_shared@q-independent-vebox.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-skl1/igt@gem_ctx_shared@q-independent-vebox.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [DMESG-WARN][73] ([i915#56]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-kbl6/igt@gem_eio@in-flight-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-kbl3/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][75] ([fdo#110854]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][77] ([fdo#109276] / [i915#677]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@implicit-write-read-bsd:
    - shard-iclb:         [SKIP][79] ([i915#677]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-iclb8/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [SKIP][81] ([fdo#112146]) -> [PASS][82] +5 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-iclb1/igt@gem_exec_schedule@wide-bsd.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-iclb8/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-skl:          [FAIL][83] -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-skl6/igt@gem_exec_whisper@basic-fds-priority.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-skl3/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][85] ([i915#644]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][87] ([i915#413]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-iclb6/igt@i915_pm_rps@reset.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-iclb2/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live@execlists:
    - shard-apl:          [INCOMPLETE][89] ([fdo#103927] / [i915#656]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-apl6/igt@i915_selftest@live@execlists.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-apl2/igt@i915_selftest@live@execlists.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [INCOMPLETE][91] ([i915#69]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-skl2/igt@i915_suspend@sysfs-reader.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-skl5/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][93] ([i915#180]) -> [PASS][94] +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][95] ([i915#79]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][97] ([i915#180]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-apl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][99] ([i915#1188]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][101] ([fdo#108145] / [i915#265]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][103] ([i915#899]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [SKIP][105] ([fdo#109441]) -> [PASS][106] +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-iclb5/igt@kms_psr@psr2_sprite_render.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-iclb2/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][107] ([i915#31]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-apl8/igt@kms_setmode@basic.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-apl7/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-query-idle-hang:
    - shard-skl:          [SKIP][109] ([fdo#109271]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-skl8/igt@kms_vblank@pipe-b-query-idle-hang.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-skl1/igt@kms_vblank@pipe-b-query-idle-hang.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-hsw:          [INCOMPLETE][111] ([i915#61]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-hsw4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-hsw1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [SKIP][113] ([fdo#112080]) -> [PASS][114] +11 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-iclb8/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-iclb1/igt@perf_pmu@busy-accuracy-98-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][115] ([fdo#109276]) -> [PASS][116] +12 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-iclb5/igt@prime_busy@hang-bsd2.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-iclb2/igt@prime_busy@hang-bsd2.html

  * {igt@sysfs_heartbeat_interval@precise@rcs0}:
    - shard-skl:          [FAIL][117] ([i915#1459]) -> [PASS][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-skl6/igt@sysfs_heartbeat_interval@precise@rcs0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-skl3/igt@sysfs_heartbeat_interval@precise@rcs0.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-glk:          [FAIL][119] ([i915#1402] / [k.org#202321]) -> ([FAIL][120], [FAIL][121]) ([k.org#202321])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-glk1/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-glk9/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-glk3/igt@runner@aborted.html
    - shard-skl:          [FAIL][122] ([i915#1402] / [i915#69]) -> ([FAIL][123], [FAIL][124]) ([i915#69])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8139/shard-skl9/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-skl1/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/shard-skl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#1459]: https://gitlab.freedesktop.org/drm/intel/issues/1459
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#935]: https://gitlab.freedesktop.org/drm/intel/issues/935
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8139 -> Patchwork_16988

  CI-20190529: 20190529
  CI_DRM_8139: 1516ff1b2279ede916d81b1978da0428414705f8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5512: f6fef7eff6f121e5e89afd7e70116f471ccd5b8b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16988: 4334dd7600ecdfd2d1be70a36bb6f2a4d6e46e59 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16988/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
