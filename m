Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86634182CF3
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 11:01:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5830C89D46;
	Thu, 12 Mar 2020 10:01:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3644A89CE3;
 Thu, 12 Mar 2020 10:01:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2E13AA0009;
 Thu, 12 Mar 2020 10:01:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 12 Mar 2020 10:01:46 -0000
Message-ID: <158400730615.4947.1024723311770858074@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200311123943.14044-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200311123943.14044-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Prefer_unlocked_engine_iteration?=
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

Series: drm/i915/gem: Prefer unlocked engine iteration
URL   : https://patchwork.freedesktop.org/series/74582/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8120_full -> Patchwork_16927_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_16927_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16927_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16927_full:

### IGT changes ###

#### Warnings ####

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][1], [FAIL][2]) ([i915#1389] / [i915#1402] / [i915#92]) -> ([FAIL][3], [FAIL][4], [FAIL][5], [FAIL][6]) ([i915#1333] / [i915#1389] / [i915#1402] / [i915#92])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-kbl7/igt@runner@aborted.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-kbl7/igt@runner@aborted.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-kbl7/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-kbl2/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-kbl2/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-kbl1/igt@runner@aborted.html
    - shard-apl:          ([FAIL][7], [FAIL][8]) ([fdo#103927] / [i915#1402]) -> ([FAIL][9], [FAIL][10], [FAIL][11]) ([fdo#103927] / [i915#1333])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-apl8/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-apl7/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-apl8/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-apl2/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-apl1/igt@runner@aborted.html
    - shard-tglb:         [FAIL][12] ([i915#1389]) -> ([FAIL][13], [FAIL][14], [FAIL][15]) ([i915#1333] / [i915#1389])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-tglb8/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-tglb2/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-tglb3/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-tglb7/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_ctx_ringsize@active@bcs0}:
    - shard-skl:          [PASS][16] -> [INCOMPLETE][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-skl1/igt@gem_ctx_ringsize@active@bcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-skl3/igt@gem_ctx_ringsize@active@bcs0.html
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-tglb2/igt@gem_ctx_ringsize@active@bcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-tglb7/igt@gem_ctx_ringsize@active@bcs0.html

  * {igt@gem_ctx_ringsize@idle@bcs0}:
    - shard-iclb:         [PASS][20] -> [INCOMPLETE][21] +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb4/igt@gem_ctx_ringsize@idle@bcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-iclb8/igt@gem_ctx_ringsize@idle@bcs0.html
    - shard-kbl:          [PASS][22] -> [INCOMPLETE][23] +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-kbl6/igt@gem_ctx_ringsize@idle@bcs0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-kbl2/igt@gem_ctx_ringsize@idle@bcs0.html
    - shard-skl:          NOTRUN -> [INCOMPLETE][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-skl5/igt@gem_ctx_ringsize@idle@bcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_16927_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@q-smoketest-bsd2:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109276]) +14 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb2/igt@gem_ctx_shared@q-smoketest-bsd2.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-iclb6/igt@gem_ctx_shared@q-smoketest-bsd2.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([i915#677])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109276] / [i915#677]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@preempt-self-bsd:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#112146]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb3/igt@gem_exec_schedule@preempt-self-bsd.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-iclb2/igt@gem_exec_schedule@preempt-self-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][33] -> [FAIL][34] ([i915#644])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_selftest@live@execlists:
    - shard-glk:          [PASS][35] -> [INCOMPLETE][36] ([i915#1430] / [i915#58] / [k.org#198133])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-glk9/igt@i915_selftest@live@execlists.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-glk4/igt@i915_selftest@live@execlists.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109349])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#79])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441]) +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][47] -> [FAIL][48] ([i915#31])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-kbl7/igt@kms_setmode@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-kbl3/igt@kms_setmode@basic.html

  * igt@perf@short-reads:
    - shard-glk:          [PASS][49] -> [FAIL][50] ([i915#51])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-glk6/igt@perf@short-reads.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-glk6/igt@perf@short-reads.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#112080]) +10 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-iclb8/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][53] ([fdo#112080]) -> [PASS][54] +5 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb3/igt@gem_busy@busy-vcs1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-iclb:         [INCOMPLETE][55] ([i915#1402]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb8/igt@gem_ctx_persistence@close-replace-race.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-iclb6/igt@gem_ctx_persistence@close-replace-race.html
    - shard-apl:          [INCOMPLETE][57] ([fdo#103927] / [i915#1402]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-apl8/igt@gem_ctx_persistence@close-replace-race.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-apl6/igt@gem_ctx_persistence@close-replace-race.html
    - shard-skl:          [INCOMPLETE][59] ([i915#1402]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-skl10/igt@gem_ctx_persistence@close-replace-race.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-skl8/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][61] ([fdo#110854]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb3/igt@gem_exec_balancer@smoke.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@deep-bsd:
    - shard-iclb:         [SKIP][63] ([fdo#112146]) -> [PASS][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb4/igt@gem_exec_schedule@deep-bsd.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-iclb8/igt@gem_exec_schedule@deep-bsd.html

  * igt@gem_exec_schedule@implicit-write-read-bsd2:
    - shard-iclb:         [SKIP][65] ([fdo#109276] / [i915#677]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb5/igt@gem_exec_schedule@implicit-write-read-bsd2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd2.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][67] ([fdo#109276]) -> [PASS][68] +10 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb3/igt@gem_exec_schedule@promotion-bsd1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-iclb2/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_linear_blits@normal:
    - shard-apl:          [TIMEOUT][69] ([fdo#111732] / [i915#1322]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-apl3/igt@gem_linear_blits@normal.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-apl7/igt@gem_linear_blits@normal.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-iclb:         [TIMEOUT][71] -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb2/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-iclb4/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +3 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
    - shard-apl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76] +4 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][77] ([i915#79]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [INCOMPLETE][79] ([i915#61]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-apl:          [FAIL][81] ([i915#34]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-apl7/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-apl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][83] ([i915#1188]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][85] ([fdo#108145]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][87] ([fdo#108145] / [i915#265]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][89] ([i915#899]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][91] ([fdo#109441]) -> [PASS][92] +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb3/igt@kms_psr@psr2_suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][93] ([i915#69]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-skl5/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][95] ([i915#454]) -> [SKIP][96] ([i915#468])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-tglb1/igt@i915_pm_dc@dc6-psr.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@runner@aborted:
    - shard-glk:          [FAIL][97] ([i915#1402] / [k.org#202321]) -> ([FAIL][98], [FAIL][99], [FAIL][100]) ([i915#1333] / [i915#1402] / [k.org#202321])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-glk8/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-glk1/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-glk4/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-glk4/igt@runner@aborted.html
    - shard-skl:          [FAIL][101] ([i915#1402] / [i915#69]) -> ([FAIL][102], [FAIL][103]) ([i915#1333] / [i915#69])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-skl10/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-skl5/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/shard-skl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1322]: https://gitlab.freedesktop.org/drm/intel/issues/1322
  [i915#1333]: https://gitlab.freedesktop.org/drm/intel/issues/1333
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8120 -> Patchwork_16927

  CI-20190529: 20190529
  CI_DRM_8120: ce66c439df71f01b018803664c4a50fc61255788 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5505: 8973d811f3fdfb4ace4aabab2095ce0309881648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16927: 960a7130d0e361becfcea09b0b48e6edc8bbb35c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16927/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
