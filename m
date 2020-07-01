Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7005210DD7
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 16:36:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B7656E912;
	Wed,  1 Jul 2020 14:36:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 494A96E910;
 Wed,  1 Jul 2020 14:36:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4256FA47EB;
 Wed,  1 Jul 2020 14:36:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Jul 2020 14:36:06 -0000
Message-ID: <159361416625.16669.17805674546970514767@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200701084053.6086-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200701084053.6086-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/33=5D_drm/i915/gt=3A_Harden_the_heartbe?=
 =?utf-8?q?at_against_a_stuck_driver?=
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

Series: series starting with [01/33] drm/i915/gt: Harden the heartbeat against a stuck driver
URL   : https://patchwork.freedesktop.org/series/78987/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8683_full -> Patchwork_18054_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18054_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18054_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18054_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [PASS][1] -> [FAIL][2] +5 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-tglb8/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_schedule@reorder-wide@bcs0:
    - shard-skl:          [PASS][3] -> [FAIL][4] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-skl10/igt@gem_exec_schedule@reorder-wide@bcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-skl5/igt@gem_exec_schedule@reorder-wide@bcs0.html

  * igt@gem_exec_schedule@reorder-wide@rcs0:
    - shard-hsw:          NOTRUN -> [FAIL][5] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-hsw4/igt@gem_exec_schedule@reorder-wide@rcs0.html
    - shard-apl:          [PASS][6] -> [FAIL][7] +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-apl8/igt@gem_exec_schedule@reorder-wide@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-apl2/igt@gem_exec_schedule@reorder-wide@rcs0.html
    - shard-glk:          [PASS][8] -> [FAIL][9] +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-glk9/igt@gem_exec_schedule@reorder-wide@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-glk3/igt@gem_exec_schedule@reorder-wide@rcs0.html
    - shard-snb:          NOTRUN -> [FAIL][10] +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-snb1/igt@gem_exec_schedule@reorder-wide@rcs0.html

  * igt@gem_exec_schedule@reorder-wide@vcs0:
    - shard-iclb:         [PASS][11] -> [FAIL][12] +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-iclb7/igt@gem_exec_schedule@reorder-wide@vcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-iclb4/igt@gem_exec_schedule@reorder-wide@vcs0.html

  * igt@gem_exec_schedule@reorder-wide@vcs1:
    - shard-kbl:          [PASS][13] -> [FAIL][14] +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-kbl6/igt@gem_exec_schedule@reorder-wide@vcs1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-kbl2/igt@gem_exec_schedule@reorder-wide@vcs1.html
    - shard-iclb:         NOTRUN -> [FAIL][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-iclb4/igt@gem_exec_schedule@reorder-wide@vcs1.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8683_full and Patchwork_18054_full:

### New IGT tests (1) ###

  * igt@i915_selftest@mock@scheduler:
    - Statuses : 2 pass(s)
    - Exec time: [0.21, 1.04] s

  

Known issues
------------

  Here are the changes found in Patchwork_18054_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-snb:          [PASS][16] -> [SKIP][17] ([fdo#109271])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-snb6/igt@gem_ctx_param@set-priority-not-supported.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-snb6/igt@gem_ctx_param@set-priority-not-supported.html
    - shard-hsw:          [PASS][18] -> [SKIP][19] ([fdo#109271])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-hsw7/igt@gem_ctx_param@set-priority-not-supported.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-hsw7/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_exec_balancer@smoke:
    - shard-kbl:          [PASS][20] -> [TIMEOUT][21] ([i915#2119]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-kbl2/igt@gem_exec_balancer@smoke.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-kbl6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@preempt-engines@bcs0:
    - shard-kbl:          [PASS][22] -> [INCOMPLETE][23] ([i915#2119])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-kbl1/igt@gem_exec_schedule@preempt-engines@bcs0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-kbl7/igt@gem_exec_schedule@preempt-engines@bcs0.html
    - shard-apl:          [PASS][24] -> [INCOMPLETE][25] ([i915#1635] / [i915#2119])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-apl6/igt@gem_exec_schedule@preempt-engines@bcs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-apl1/igt@gem_exec_schedule@preempt-engines@bcs0.html

  * igt@gem_exec_schedule@preempt-engines@rcs0:
    - shard-tglb:         [PASS][26] -> [INCOMPLETE][27] ([i915#2119])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-tglb1/igt@gem_exec_schedule@preempt-engines@rcs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-tglb8/igt@gem_exec_schedule@preempt-engines@rcs0.html
    - shard-skl:          [PASS][28] -> [INCOMPLETE][29] ([i915#2119])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-skl6/igt@gem_exec_schedule@preempt-engines@rcs0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-skl9/igt@gem_exec_schedule@preempt-engines@rcs0.html
    - shard-glk:          [PASS][30] -> [INCOMPLETE][31] ([i915#2119] / [i915#58] / [k.org#198133])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-glk5/igt@gem_exec_schedule@preempt-engines@rcs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-glk9/igt@gem_exec_schedule@preempt-engines@rcs0.html

  * igt@gem_mmap_gtt@ptrace:
    - shard-apl:          [PASS][32] -> [DMESG-WARN][33] ([i915#1635] / [i915#95]) +15 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-apl1/igt@gem_mmap_gtt@ptrace.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-apl8/igt@gem_mmap_gtt@ptrace.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [PASS][34] -> [DMESG-WARN][35] ([i915#1436] / [i915#716])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-skl9/igt@gen9_exec_parse@allowed-all.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-skl8/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
    - shard-kbl:          [PASS][36] -> [DMESG-WARN][37] ([i915#93] / [i915#95]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:
    - shard-skl:          [PASS][38] -> [DMESG-WARN][39] ([i915#1982]) +10 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-skl5/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-skl7/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#79])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([i915#46])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-kbl:          [PASS][44] -> [DMESG-WARN][45] ([i915#180]) +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-kbl3/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#1928])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-tglb:         [PASS][48] -> [TIMEOUT][49] ([i915#2119]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-farfromfence:
    - shard-tglb:         [PASS][50] -> [DMESG-WARN][51] ([i915#1982])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-tglb5/igt@kms_frontbuffer_tracking@psr-farfromfence.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-tglb1/igt@kms_frontbuffer_tracking@psr-farfromfence.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][52] -> [DMESG-FAIL][53] ([fdo#108145] / [i915#1982])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][54] -> [FAIL][55] ([fdo#108145] / [i915#265]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_prime@basic-crc@second-to-first:
    - shard-kbl:          [PASS][56] -> [DMESG-FAIL][57] ([i915#95])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-kbl7/igt@kms_prime@basic-crc@second-to-first.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-kbl3/igt@kms_prime@basic-crc@second-to-first.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][58] -> [SKIP][59] ([fdo#109441]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][60] -> [FAIL][61] ([i915#31])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-kbl6/igt@kms_setmode@basic.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-kbl2/igt@kms_setmode@basic.html

  * igt@perf@blocking:
    - shard-glk:          [PASS][62] -> [DMESG-WARN][63] ([i915#118] / [i915#95]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-glk6/igt@perf@blocking.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-glk5/igt@perf@blocking.html

  * igt@perf_pmu@module-unload:
    - shard-tglb:         [PASS][64] -> [DMESG-WARN][65] ([i915#402])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-tglb5/igt@perf_pmu@module-unload.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-tglb7/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][66] -> [FAIL][67] ([i915#1820])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-kbl6/igt@perf_pmu@semaphore-busy@rcs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-kbl2/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [FAIL][68] ([i915#1930]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-glk3/igt@gem_exec_reloc@basic-concurrent0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-glk7/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-hsw:          [SKIP][70] ([fdo#109271]) -> [PASS][71] +22 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-hsw1/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-hsw1/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-glk:          [DMESG-WARN][72] ([i915#118] / [i915#95]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-glk4/igt@gem_exec_whisper@basic-fds-priority-all.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-glk6/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-snb:          [TIMEOUT][74] ([i915#1958] / [i915#2119]) -> [PASS][75] +3 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-snb4/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-snb1/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-skl:          [DMESG-WARN][76] ([i915#1982]) -> [PASS][77] +6 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-skl7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-skl6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][78] ([i915#1436] / [i915#716]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-apl6/igt@gen9_exec_parse@allowed-all.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-apl3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [DMESG-WARN][80] ([i915#180]) -> [PASS][81] +3 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-kbl4/igt@i915_suspend@sysfs-reader.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-kbl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_addfb_basic@invalid-set-prop:
    - shard-tglb:         [DMESG-WARN][82] ([i915#402]) -> [PASS][83] +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-tglb3/igt@kms_addfb_basic@invalid-set-prop.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-tglb6/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][84] ([i915#118] / [i915#95]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-glk4/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][86] ([IGT#5]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset@ab-vga1-hdmi-a1:
    - shard-hsw:          [DMESG-WARN][88] ([i915#1982]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-hsw6/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset@ab-vga1-hdmi-a1.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-hsw2/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@d-edp1:
    - shard-tglb:         [INCOMPLETE][90] -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-tglb8/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt:
    - shard-kbl:          [DMESG-WARN][92] ([i915#93] / [i915#95]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack:
    - shard-tglb:         [DMESG-WARN][94] ([i915#1982]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][96] ([i915#1188]) -> [PASS][97] +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-snb:          [SKIP][98] ([fdo#109271]) -> [PASS][99] +20 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-snb6/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-snb2/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [DMESG-WARN][100] ([i915#1982]) -> [PASS][101] +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-iclb6/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][102] ([fdo#109441]) -> [PASS][103] +3 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-iclb5/igt@kms_psr@psr2_no_drrs.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-tglb:         [SKIP][104] ([i915#668]) -> [PASS][105] +4 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-tglb7/igt@kms_psr@psr2_primary_mmap_gtt.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-tglb8/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_vblank@pipe-b-accuracy-idle:
    - shard-apl:          [DMESG-WARN][106] ([i915#1635] / [i915#95]) -> [PASS][107] +6 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-apl4/igt@kms_vblank@pipe-b-accuracy-idle.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-apl2/igt@kms_vblank@pipe-b-accuracy-idle.html

  * igt@kms_vblank@pipe-c-wait-idle:
    - shard-kbl:          [DMESG-WARN][108] ([i915#1982]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-kbl3/igt@kms_vblank@pipe-c-wait-idle.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-kbl7/igt@kms_vblank@pipe-c-wait-idle.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [FAIL][110] ([i915#1542]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-iclb8/igt@perf@polling-parameterized.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-iclb2/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [TIMEOUT][112] ([i915#1958] / [i915#2119]) -> [FAIL][113] ([i915#1930])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-snb1/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-iclb:         [INCOMPLETE][114] ([i915#1958]) -> [TIMEOUT][115] ([i915#1958] / [i915#2119])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-iclb5/igt@gem_exec_reloc@basic-concurrent16.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-iclb8/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-skl:          [INCOMPLETE][116] ([i915#1958]) -> [TIMEOUT][117] ([i915#1958] / [i915#2119])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-skl3/igt@gem_exec_reloc@basic-concurrent16.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-skl4/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-kbl:          [INCOMPLETE][118] ([i915#1958]) -> [TIMEOUT][119] ([i915#1958] / [i915#2119])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-kbl6/igt@gem_exec_reloc@basic-concurrent16.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-kbl2/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-apl:          [INCOMPLETE][120] ([i915#1635] / [i915#1958]) -> [TIMEOUT][121] ([i915#1635] / [i915#1958] / [i915#2119])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-apl2/igt@gem_exec_reloc@basic-concurrent16.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-apl3/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-tglb:         [INCOMPLETE][122] ([i915#1958]) -> [TIMEOUT][123] ([i915#1958] / [i915#2119])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-tglb5/igt@gem_exec_reloc@basic-concurrent16.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-tglb7/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-glk:          [INCOMPLETE][124] ([i915#1958] / [i915#58] / [k.org#198133]) -> [TIMEOUT][125] ([i915#1958] / [i915#2119])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-glk6/igt@gem_exec_reloc@basic-concurrent16.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-glk8/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_exec_reloc@basic-spin-others@vcs0:
    - shard-snb:          [WARN][126] ([i915#2021]) -> [WARN][127] ([i915#2036])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-snb1/igt@gem_exec_reloc@basic-spin-others@vcs0.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-snb4/igt@gem_exec_reloc@basic-spin-others@vcs0.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-75:
    - shard-apl:          [SKIP][128] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][129] ([fdo#109271] / [fdo#111827])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-apl1/igt@kms_color_chamelium@pipe-b-ctm-0-75.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-apl8/igt@kms_color_chamelium@pipe-b-ctm-0-75.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][130] ([i915#1319] / [i915#1958] / [i915#2119]) -> [TIMEOUT][131] ([i915#1319] / [i915#2119])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-kbl7/igt@kms_content_protection@srm.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-kbl3/igt@kms_content_protection@srm.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
    - shard-snb:          [TIMEOUT][132] ([i915#1958] / [i915#2119]) -> [SKIP][133] ([fdo#109271]) +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-snb4/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-snb1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt:
    - shard-kbl:          [SKIP][134] ([fdo#109271]) -> [TIMEOUT][135] ([i915#2119]) +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-kbl2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-kbl6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-apl:          [SKIP][136] ([fdo#109271] / [i915#1635]) -> [SKIP][137] ([fdo#109271]) +2 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-apl4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-apl2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-apl:          [SKIP][138] ([fdo#109271]) -> [SKIP][139] ([fdo#109271] / [i915#1635]) +4 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-apl4/igt@kms_frontbuffer_tracking@psr-1p-rte.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-apl2/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-tglb:         [SKIP][140] ([i915#668]) -> [DMESG-WARN][141] ([i915#1982])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-tglb7/igt@kms_frontbuffer_tracking@psr-suspend.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-tglb8/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][142] ([i915#93] / [i915#95]) -> [DMESG-WARN][143] ([i915#180] / [i915#93] / [i915#95])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant:
    - shard-apl:          [DMESG-FAIL][144] ([fdo#108145] / [i915#1635] / [i915#1982] / [i915#95]) -> [DMESG-FAIL][145] ([fdo#108145] / [i915#1635] / [i915#95])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - shard-skl:          [FAIL][146] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][147] ([fdo#108145] / [i915#1982])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][148], [FAIL][149]) ([fdo#109271] / [i915#1635] / [i915#716]) -> [FAIL][150] ([i915#1635])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-apl6/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/shard-apl3/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/shard-apl8/igt@runner@aborted.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: h

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
