Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD20131272
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 14:00:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E48B889948;
	Mon,  6 Jan 2020 13:00:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F313E898CA;
 Mon,  6 Jan 2020 13:00:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E8F0BA0075;
 Mon,  6 Jan 2020 13:00:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 06 Jan 2020 13:00:23 -0000
Message-ID: <157831562392.24769.6485230098905028191@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106102227.2438478-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200106102227.2438478-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/8=5D_drm/i915/selftests=3A_Fixup_sparse_?=
 =?utf-8?q?=5F=5Fuser_annotation_on_local_var?=
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

Series: series starting with [1/8] drm/i915/selftests: Fixup sparse __user annotation on local var
URL   : https://patchwork.freedesktop.org/series/71648/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7680_full -> Patchwork_15999_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15999_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15999_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15999_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_schedule@wide-bsd:
    - shard-skl:          [PASS][1] -> [FAIL][2] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl9/igt@gem_exec_schedule@wide-bsd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-skl5/igt@gem_exec_schedule@wide-bsd.html
    - shard-glk:          [PASS][3] -> [FAIL][4] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-glk5/igt@gem_exec_schedule@wide-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-glk5/igt@gem_exec_schedule@wide-bsd.html
    - shard-iclb:         [PASS][5] -> [FAIL][6] +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb7/igt@gem_exec_schedule@wide-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-iclb5/igt@gem_exec_schedule@wide-bsd.html
    - shard-apl:          [PASS][7] -> [FAIL][8] +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-apl7/igt@gem_exec_schedule@wide-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-apl1/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_schedule@wide-render:
    - shard-kbl:          [PASS][9] -> [FAIL][10] +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-kbl2/igt@gem_exec_schedule@wide-render.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-kbl4/igt@gem_exec_schedule@wide-render.html

  * igt@gem_exec_schedule@wide-vebox:
    - shard-tglb:         [PASS][11] -> [FAIL][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb8/igt@gem_exec_schedule@wide-vebox.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-tglb2/igt@gem_exec_schedule@wide-vebox.html

  * igt@i915_selftest@mock_gtt:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl8/igt@i915_selftest@mock_gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-skl2/igt@i915_selftest@mock_gtt.html
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb1/igt@i915_selftest@mock_gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-tglb2/igt@i915_selftest@mock_gtt.html

  * igt@i915_selftest@mock_timelines:
    - shard-glk:          [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-glk6/igt@i915_selftest@mock_timelines.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-glk7/igt@i915_selftest@mock_timelines.html
    - shard-hsw:          [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-hsw5/igt@i915_selftest@mock_timelines.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-hsw5/igt@i915_selftest@mock_timelines.html
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-kbl7/igt@i915_selftest@mock_timelines.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-kbl2/igt@i915_selftest@mock_timelines.html
    - shard-iclb:         [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb8/igt@i915_selftest@mock_timelines.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-iclb4/igt@i915_selftest@mock_timelines.html
    - shard-snb:          [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-snb6/igt@i915_selftest@mock_timelines.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-snb7/igt@i915_selftest@mock_timelines.html
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl8/igt@i915_selftest@mock_timelines.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-skl2/igt@i915_selftest@mock_timelines.html
    - shard-tglb:         [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb1/igt@i915_selftest@mock_timelines.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-tglb2/igt@i915_selftest@mock_timelines.html
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-apl3/igt@i915_selftest@mock_timelines.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-apl4/igt@i915_selftest@mock_timelines.html

  * igt@runner@aborted:
    - shard-hsw:          NOTRUN -> [FAIL][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-hsw5/igt@runner@aborted.html
    - shard-kbl:          NOTRUN -> [FAIL][34]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-kbl2/igt@runner@aborted.html
    - shard-apl:          NOTRUN -> [FAIL][35]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-apl4/igt@runner@aborted.html
    - shard-snb:          NOTRUN -> [FAIL][36]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-snb7/igt@runner@aborted.html

  
#### Warnings ####

  * igt@gem_exec_schedule@deep-bsd1:
    - shard-iclb:         [SKIP][37] ([fdo#109276]) -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb3/igt@gem_exec_schedule@deep-bsd1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-iclb4/igt@gem_exec_schedule@deep-bsd1.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7680_full and Patchwork_15999_full:

### New Piglit tests (3) ###

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat4x2-position-float_vec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-int_ivec3_array3-double_dvec4-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat2x3-float_mat2_array3:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  

Known issues
------------

  Here are the changes found in Patchwork_15999_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#679])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl4/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-skl8/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109276] / [fdo#112080]) +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#110841])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][45] -> [INCOMPLETE][46] ([fdo#111735])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb8/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#110854])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-iclb8/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@deep-blt:
    - shard-apl:          [PASS][49] -> [FAIL][50] ([i915#412]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-apl1/igt@gem_exec_schedule@deep-blt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-apl4/igt@gem_exec_schedule@deep-blt.html

  * igt@gem_exec_schedule@deep-bsd:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#412]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl5/igt@gem_exec_schedule@deep-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-skl9/igt@gem_exec_schedule@deep-bsd.html

  * igt@gem_exec_schedule@deep-bsd1:
    - shard-tglb:         [PASS][53] -> [FAIL][54] ([i915#412]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb2/igt@gem_exec_schedule@deep-bsd1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-tglb3/igt@gem_exec_schedule@deep-bsd1.html

  * igt@gem_exec_schedule@deep-render:
    - shard-kbl:          [PASS][55] -> [FAIL][56] ([i915#412]) +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-kbl1/igt@gem_exec_schedule@deep-render.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-kbl2/igt@gem_exec_schedule@deep-render.html

  * igt@gem_exec_schedule@deep-vebox:
    - shard-glk:          [PASS][57] -> [FAIL][58] ([i915#412]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-glk1/igt@gem_exec_schedule@deep-vebox.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-glk2/igt@gem_exec_schedule@deep-vebox.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([fdo#112146]) +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb7/igt@gem_exec_schedule@in-order-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][61] -> [SKIP][62] ([fdo#109276]) +15 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb2/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-iclb7/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd1:
    - shard-tglb:         [PASS][63] -> [INCOMPLETE][64] ([fdo#111606] / [fdo#111677])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb9/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-tglb5/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [PASS][65] -> [TIMEOUT][66] ([fdo#112126] / [i915#530])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-tglb5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_wait@write-busy-rcs0:
    - shard-skl:          [PASS][67] -> [DMESG-WARN][68] ([i915#109])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl6/igt@gem_wait@write-busy-rcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-skl7/igt@gem_wait@write-busy-rcs0.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [PASS][69] -> [FAIL][70] ([i915#447])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb6/igt@i915_pm_dc@dc5-dpms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][71] -> [FAIL][72] ([i915#454])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@mock_gtt:
    - shard-apl:          [PASS][73] -> [INCOMPLETE][74] ([fdo#103927])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-apl3/igt@i915_selftest@mock_gtt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-apl4/igt@i915_selftest@mock_gtt.html
    - shard-glk:          [PASS][75] -> [INCOMPLETE][76] ([i915#58] / [k.org#198133])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-glk6/igt@i915_selftest@mock_gtt.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-glk7/igt@i915_selftest@mock_gtt.html
    - shard-iclb:         [PASS][77] -> [INCOMPLETE][78] ([i915#140])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb8/igt@i915_selftest@mock_gtt.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-iclb4/igt@i915_selftest@mock_gtt.html
    - shard-hsw:          [PASS][79] -> [INCOMPLETE][80] ([i915#61])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-hsw5/igt@i915_selftest@mock_gtt.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-hsw5/igt@i915_selftest@mock_gtt.html
    - shard-kbl:          [PASS][81] -> [INCOMPLETE][82] ([fdo#103665])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-kbl7/igt@i915_selftest@mock_gtt.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-kbl2/igt@i915_selftest@mock_gtt.html
    - shard-snb:          [PASS][83] -> [INCOMPLETE][84] ([i915#82])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-snb6/igt@i915_selftest@mock_gtt.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-snb7/igt@i915_selftest@mock_gtt.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [PASS][85] -> [FAIL][86] ([i915#129])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl3/igt@kms_color@pipe-a-ctm-green-to-red.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-skl4/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-skl:          [PASS][87] -> [FAIL][88] ([i915#52] / [i915#54])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-skl4/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][89] -> [FAIL][90] ([i915#46])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-skl:          [PASS][91] -> [FAIL][92] ([i915#49])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][93] -> [DMESG-WARN][94] ([i915#180]) +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-position-covered-pipe-a-planes:
    - shard-skl:          [PASS][95] -> [FAIL][96] ([i915#247])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl3/igt@kms_plane@plane-position-covered-pipe-a-planes.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-skl4/igt@kms_plane@plane-position-covered-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][97] -> [FAIL][98] ([fdo#108145]) +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][99] -> [FAIL][100] ([fdo#108145] / [i915#265])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][101] -> [SKIP][102] ([fdo#109441])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-iclb7/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][103] -> [FAIL][104] ([i915#31])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl5/igt@kms_setmode@basic.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-skl9/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][105] -> [DMESG-WARN][106] ([i915#180]) +6 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][107] -> [SKIP][108] ([fdo#112080]) +13 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-iclb8/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@perf_pmu@enable-race-vcs1:
    - shard-tglb:         [PASS][109] -> [INCOMPLETE][110] ([i915#435] / [i915#923])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb1/igt@perf_pmu@enable-race-vcs1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-tglb1/igt@perf_pmu@enable-race-vcs1.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][111] -> [FAIL][112] ([i915#831])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-hsw6/igt@prime_mmap_coherency@ioctl-errors.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-hsw7/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][113] ([i915#180]) -> [PASS][114] +7 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-apl:          [FAIL][115] ([i915#679]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-apl4/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-apl6/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-cleanup:
    - shard-iclb:         [SKIP][117] ([fdo#109276] / [fdo#112080]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb3/igt@gem_ctx_persistence@vcs1-cleanup.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-iclb2/igt@gem_ctx_persistence@vcs1-cleanup.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][119] ([fdo#111735]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb9/igt@gem_ctx_shared@q-smoketest-vebox.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-tglb1/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [FAIL][121] ([i915#232]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-snb6/igt@gem_eio@reset-stress.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-snb7/igt@gem_eio@reset-stress.html

  * igt@gem_exec_basic@basic-vcs1:
    - shard-iclb:         [SKIP][123] ([fdo#112080]) -> [PASS][124] +7 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb3/igt@gem_exec_basic@basic-vcs1.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-iclb2/igt@gem_exec_basic@basic-vcs1.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [INCOMPLETE][125] ([i915#470]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb3/igt@gem_exec_parallel@fds.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-tglb5/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][127] ([fdo#109276]) -> [PASS][128] +20 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb5/igt@gem_exec_schedule@independent-bsd2.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html

  * {igt@gem_exec_schedule@pi-common-bsd}:
    - shard-iclb:         [SKIP][129] ([i915#677]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][131] ([fdo#112146]) -> [PASS][132] +7 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-tglb:         [INCOMPLETE][133] ([fdo#111606] / [fdo#111677]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb3/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-tglb7/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-chain-vebox:
    - shard-tglb:         [INCOMPLETE][135] ([fdo#111677]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-vebox.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-tglb7/igt@gem_exec_schedule@preempt-queue-chain-vebox.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][137] ([i915#180]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-apl1/igt@gem_softpin@noreloc-s3.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-apl4/igt@gem_softpin@noreloc-s3.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][139] ([i915#109]) -> [PASS][140] +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-skl5/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][141] ([IGT#5]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [FAIL][143] ([i915#49]) -> [PASS][144] +3 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][145] ([fdo#109441]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][147] ([i915#31]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-apl2/igt@kms_setmode@basic.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-apl1/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][149] ([fdo#109276] / [fdo#112080]) -> [FAIL][150] ([IGT#28])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs2-dirty-create:
    - shard-tglb:         [SKIP][151] ([fdo#112080]) -> [SKIP][152] ([fdo#111912] / [fdo#112080])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-create.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-tglb3/igt@gem_ctx_isolation@vcs2-dirty-create.html

  * igt@gem_ctx_isolation@vcs2-reset:
    - shard-tglb:         [SKIP][153] ([fdo#111912] / [fdo#112080]) -> [SKIP][154] ([fdo#112080])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb3/igt@gem_ctx_isolation@vcs2-reset.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-tglb9/igt@gem_ctx_isolation@vcs2-reset.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][155] ([i915#832]) -> [FAIL][156] ([i915#818])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-hsw5/igt@gem_tiled_blits@normal.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-hsw7/igt@gem_tiled_blits@normal.html

  * igt@kms_atomic_transition@6x-modeset-transitions:
    - shard-tglb:         [SKIP][157] ([fdo#112021]) -> [SKIP][158] ([fdo#112016] / [fdo#112021])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-tglb1/igt@kms_atomic_transition@6x-modeset-transitions.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-FAIL][159] ([i915#180] / [i915#54]) -> [FAIL][160] ([i915#54])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#11

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
