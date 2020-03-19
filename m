Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A94A18B271
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 12:39:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 289D86E148;
	Thu, 19 Mar 2020 11:39:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7D01B6EA03;
 Thu, 19 Mar 2020 11:39:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5FC2AA0094;
 Thu, 19 Mar 2020 11:39:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 19 Mar 2020 11:39:20 -0000
Message-ID: <158461796036.17935.2574009952884885005@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200319091943.7815-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200319091943.7815-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915=3A_Prefer_=27=25ps=27_for_?=
 =?utf-8?q?printing_function_symbol_names?=
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

Series: series starting with [1/6] drm/i915: Prefer '%ps' for printing function symbol names
URL   : https://patchwork.freedesktop.org/series/74865/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8157_full -> Patchwork_17022_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17022_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17022_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17022_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@engines-cleanup@vecs0:
    - shard-tglb:         [PASS][1] -> [FAIL][2] +32 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-tglb2/igt@gem_ctx_persistence@engines-cleanup@vecs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-tglb1/igt@gem_ctx_persistence@engines-cleanup@vecs0.html

  * igt@gem_ctx_persistence@engines-hostile@bcs0:
    - shard-kbl:          [PASS][3] -> [FAIL][4] +28 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl6/igt@gem_ctx_persistence@engines-hostile@bcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-kbl3/igt@gem_ctx_persistence@engines-hostile@bcs0.html

  * igt@gem_ctx_persistence@engines-queued@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][5] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb4/igt@gem_ctx_persistence@engines-queued@vcs1.html

  * igt@gem_ctx_persistence@legacy-engines-hostile@bsd:
    - shard-iclb:         [PASS][6] -> [FAIL][7] +25 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb6/igt@gem_ctx_persistence@legacy-engines-hostile@bsd.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb6/igt@gem_ctx_persistence@legacy-engines-hostile@bsd.html

  * igt@gem_ctx_persistence@legacy-engines-queued@vebox:
    - shard-skl:          [PASS][8] -> [FAIL][9] +20 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl3/igt@gem_ctx_persistence@legacy-engines-queued@vebox.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-skl9/igt@gem_ctx_persistence@legacy-engines-queued@vebox.html

  * igt@gem_ctx_persistence@replace@vcs0:
    - shard-apl:          [PASS][10] -> [FAIL][11] +28 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl4/igt@gem_ctx_persistence@replace@vcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-apl8/igt@gem_ctx_persistence@replace@vcs0.html

  * igt@gem_ctx_persistence@saturated-hostile@vecs0:
    - shard-glk:          [PASS][12] -> [FAIL][13] +20 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-glk8/igt@gem_ctx_persistence@saturated-hostile@vecs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-glk2/igt@gem_ctx_persistence@saturated-hostile@vecs0.html

  * igt@gem_exec_schedule@preempt-hang-vebox:
    - shard-tglb:         [PASS][14] -> [INCOMPLETE][15] +8 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-tglb1/igt@gem_exec_schedule@preempt-hang-vebox.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-tglb8/igt@gem_exec_schedule@preempt-hang-vebox.html
    - shard-skl:          [PASS][16] -> [INCOMPLETE][17] +8 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl3/igt@gem_exec_schedule@preempt-hang-vebox.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-skl9/igt@gem_exec_schedule@preempt-hang-vebox.html

  * igt@gem_exec_schedule@preemptive-hang-render:
    - shard-iclb:         NOTRUN -> [INCOMPLETE][18] +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-render.html
    - shard-kbl:          [PASS][19] -> [INCOMPLETE][20] +10 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl4/igt@gem_exec_schedule@preemptive-hang-render.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-kbl1/igt@gem_exec_schedule@preemptive-hang-render.html

  * igt@gem_exec_schedule@preemptive-hang-vebox:
    - shard-iclb:         [PASS][21] -> [INCOMPLETE][22] +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-vebox.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-vebox.html

  
#### Warnings ####

  * igt@gem_exec_schedule@preempt-hang-bsd1:
    - shard-iclb:         [SKIP][23] ([fdo#109276]) -> [INCOMPLETE][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb8/igt@gem_exec_schedule@preempt-hang-bsd1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb4/igt@gem_exec_schedule@preempt-hang-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][25] ([fdo#112146]) -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  
Known issues
------------

  Here are the changes found in Patchwork_17022_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#1166])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-glk1/igt@gem_ctx_exec@basic-nohangcheck.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-glk3/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-snb:          [PASS][29] -> [FAIL][30] ([i915#1379])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-snb4/igt@gem_ctx_exec@basic-nohangcheck.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-snb4/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-hsw:          [PASS][31] -> [FAIL][32] ([i915#1379])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-hsw5/igt@gem_ctx_exec@basic-nohangcheck.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-hsw2/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-kbl:          [PASS][33] -> [FAIL][34] ([i915#1166])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl2/igt@gem_ctx_exec@basic-nohangcheck.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-kbl2/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-apl:          [PASS][35] -> [FAIL][36] ([i915#1166])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl1/igt@gem_ctx_exec@basic-nohangcheck.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-apl3/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#1166])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl3/igt@gem_ctx_exec@basic-nohangcheck.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-skl2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [PASS][39] -> [TIMEOUT][40] ([i915#1340])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-tglb6/igt@gem_ctx_persistence@close-replace-race.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-tglb7/igt@gem_ctx_persistence@close-replace-race.html
    - shard-iclb:         [PASS][41] -> [TIMEOUT][42] ([i915#1340])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb2/igt@gem_ctx_persistence@close-replace-race.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb5/igt@gem_ctx_persistence@close-replace-race.html
    - shard-apl:          [PASS][43] -> [TIMEOUT][44] ([i915#1340])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl6/igt@gem_ctx_persistence@close-replace-race.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-apl1/igt@gem_ctx_persistence@close-replace-race.html
    - shard-skl:          [PASS][45] -> [TIMEOUT][46] ([i915#1340])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl9/igt@gem_ctx_persistence@close-replace-race.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-skl7/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@engines-mixed-process@bcs0:
    - shard-kbl:          [PASS][47] -> [INCOMPLETE][48] ([i915#1197] / [i915#1239])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl2/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-kbl2/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html
    - shard-apl:          [PASS][49] -> [INCOMPLETE][50] ([fdo#103927] / [i915#1197] / [i915#1239])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl1/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-apl3/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html

  * igt@gem_ctx_persistence@engines-mixed-process@rcs0:
    - shard-iclb:         [PASS][51] -> [FAIL][52] ([i915#679]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb8/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb3/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd:
    - shard-iclb:         [PASS][53] -> [INCOMPLETE][54] ([i915#1239]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb8/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
    - shard-glk:          [PASS][55] -> [INCOMPLETE][56] ([i915#1197] / [i915#1239] / [i915#58] / [k.org#198133]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-glk5/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-glk7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
    - shard-skl:          [PASS][57] -> [INCOMPLETE][58] ([i915#1197] / [i915#1239]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-skl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1:
    - shard-tglb:         [PASS][59] -> [INCOMPLETE][60] ([i915#1239]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-tglb3/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-tglb6/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
    - shard-kbl:          [PASS][61] -> [INCOMPLETE][62] ([i915#1239])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-kbl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-tglb:         [PASS][63] -> [FAIL][64] ([i915#679]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-tglb3/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-tglb6/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
    - shard-kbl:          [PASS][65] -> [FAIL][66] ([i915#679]) +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-kbl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@gem_ctx_persistence@legacy-engines-mixed@blt:
    - shard-apl:          [PASS][67] -> [FAIL][68] ([i915#679]) +5 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl4/igt@gem_ctx_persistence@legacy-engines-mixed@blt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-apl8/igt@gem_ctx_persistence@legacy-engines-mixed@blt.html
    - shard-glk:          [PASS][69] -> [FAIL][70] ([i915#679]) +6 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-glk4/igt@gem_ctx_persistence@legacy-engines-mixed@blt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-glk1/igt@gem_ctx_persistence@legacy-engines-mixed@blt.html
    - shard-skl:          [PASS][71] -> [FAIL][72] ([i915#679]) +6 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed@blt.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed@blt.html

  * igt@gem_ctx_persistence@processes:
    - shard-apl:          [PASS][73] -> [FAIL][74] ([i915#570] / [i915#679])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl7/igt@gem_ctx_persistence@processes.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-apl2/igt@gem_ctx_persistence@processes.html
    - shard-iclb:         [PASS][75] -> [FAIL][76] ([i915#570])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb4/igt@gem_ctx_persistence@processes.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb4/igt@gem_ctx_persistence@processes.html
    - shard-glk:          [PASS][77] -> [FAIL][78] ([i915#570] / [i915#679])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-glk2/igt@gem_ctx_persistence@processes.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-glk3/igt@gem_ctx_persistence@processes.html
    - shard-kbl:          [PASS][79] -> [FAIL][80] ([i915#570] / [i915#679])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl2/igt@gem_ctx_persistence@processes.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-kbl2/igt@gem_ctx_persistence@processes.html
    - shard-tglb:         [PASS][81] -> [FAIL][82] ([i915#570])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-tglb5/igt@gem_ctx_persistence@processes.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-tglb7/igt@gem_ctx_persistence@processes.html
    - shard-skl:          [PASS][83] -> [FAIL][84] ([i915#570] / [i915#679])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl7/igt@gem_ctx_persistence@processes.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-skl6/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@replace-hostile@bcs0:
    - shard-skl:          [PASS][85] -> [FAIL][86] ([i915#1154]) +3 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl5/igt@gem_ctx_persistence@replace-hostile@bcs0.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-skl4/igt@gem_ctx_persistence@replace-hostile@bcs0.html
    - shard-apl:          [PASS][87] -> [FAIL][88] ([i915#1154]) +3 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl8/igt@gem_ctx_persistence@replace-hostile@bcs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-apl7/igt@gem_ctx_persistence@replace-hostile@bcs0.html
    - shard-glk:          [PASS][89] -> [FAIL][90] ([i915#1154]) +3 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-glk2/igt@gem_ctx_persistence@replace-hostile@bcs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-glk9/igt@gem_ctx_persistence@replace-hostile@bcs0.html

  * igt@gem_ctx_persistence@replace-hostile@vecs0:
    - shard-iclb:         [PASS][91] -> [FAIL][92] ([i915#1154]) +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb6/igt@gem_ctx_persistence@replace-hostile@vecs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb6/igt@gem_ctx_persistence@replace-hostile@vecs0.html

  * igt@gem_ctx_persistence@saturated-hostile@bcs0:
    - shard-kbl:          [PASS][93] -> [FAIL][94] ([i915#1368]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl3/igt@gem_ctx_persistence@saturated-hostile@bcs0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-kbl4/igt@gem_ctx_persistence@saturated-hostile@bcs0.html

  * igt@gem_exec_balancer@hang:
    - shard-kbl:          [PASS][95] -> [INCOMPLETE][96] ([i915#1212])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl4/igt@gem_exec_balancer@hang.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-kbl6/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@implicit-write-read-bsd:
    - shard-iclb:         [PASS][97] -> [SKIP][98] ([i915#677])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb3/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * igt@gem_exec_schedule@preempt-hang-blt:
    - shard-tglb:         [PASS][99] -> [INCOMPLETE][100] ([fdo#111606]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-tglb1/igt@gem_exec_schedule@preempt-hang-blt.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-tglb8/igt@gem_exec_schedule@preempt-hang-blt.html

  * igt@gem_exec_schedule@preempt-hang-bsd:
    - shard-glk:          [PASS][101] -> [INCOMPLETE][102] ([i915#58] / [k.org#198133]) +9 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-glk3/igt@gem_exec_schedule@preempt-hang-bsd.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-glk9/igt@gem_exec_schedule@preempt-hang-bsd.html

  * igt@gem_exec_schedule@preempt-hang-vebox:
    - shard-apl:          [PASS][103] -> [INCOMPLETE][104] ([fdo#103927]) +8 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl7/igt@gem_exec_schedule@preempt-hang-vebox.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-apl6/igt@gem_exec_schedule@preempt-hang-vebox.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][105] -> [SKIP][106] ([fdo#112146]) +7 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-blt:
    - shard-iclb:         [PASS][107] -> [INCOMPLETE][108] ([fdo#109100]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-blt.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-blt.html

  * igt@i915_pm_rpm@cursor:
    - shard-iclb:         [PASS][109] -> [INCOMPLETE][110] ([i915#189])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb4/igt@i915_pm_rpm@cursor.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb4/igt@i915_pm_rpm@cursor.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][111] -> [FAIL][112] ([i915#413])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb7/igt@i915_pm_rps@waitboost.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb8/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live@execlists:
    - shard-apl:          [PASS][113] -> [INCOMPLETE][114] ([fdo#103927] / [i915#656])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl6/igt@i915_selftest@live@execlists.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-apl7/igt@i915_selftest@live@execlists.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][115] -> [FAIL][116] ([i915#79])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-glk4/igt@kms_flip@flip-vs-expired-vblank.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-glk1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [PASS][117] -> [FAIL][118] ([i915#34])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][119] -> [DMESG-WARN][120] ([i915#180])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl8/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][121] -> [FAIL][122] ([i915#1188])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][123] -> [DMESG-WARN][124] ([i915#180]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][125] -> [SKIP][126] ([fdo#109642] / [fdo#111068])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][127] -> [SKIP][128] ([fdo#109441]) +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][129] -> [SKIP][130] ([fdo#112080]) +10 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][131] -> [SKIP][132] ([fdo#109276]) +17 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][133] ([fdo#112080]) -> [PASS][134] +8 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb5/igt@gem_ctx_isolation@vcs1-none.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb1/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][135] ([fdo#109276] / [i915#677]) -> [PASS][136] +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd1.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][137] ([i915#677]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [SKIP][139] ([fdo#112146]) -> [PASS][140] +4 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb1/igt@gem_exec_schedule@preempt-bsd.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb6/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][141] ([fdo#109276]) -> [PASS][142] +11 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb3/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb2/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-skl:          [INCOMPLETE][143] ([i915#69]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl3/igt@i915_suspend@fence-restore-untiled.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-skl9/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [DMESG-WARN][145] ([i915#180]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl4/igt@kms_flip@flip-vs-suspend.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-apl8/igt@kms_flip@flip-vs-suspend.html
    - shard-iclb:         [INCOMPLETE][147] ([i915#1185] / [i915#221]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb3/igt@kms_flip@flip-vs-suspend.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb2/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][149] ([i915#180]) -> [PASS][150] +7 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][151] ([i915#899]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][153] ([fdo#109441]) -> [PASS][154] +2 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [INCOMPLETE][155] ([i915#1402]) -> [TIMEOUT][156] ([i915#1340])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl4/igt@gem_ctx_persistence@close-replace-race.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-kbl7/igt@gem_ctx_persistence@close-replace-race.html
    - shard-glk:          [INCOMPLETE][157] ([i915#1402] / [i915#58] / [k.org#198133]) -> [TIMEOUT][158] ([i915#1340])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-glk6/igt@gem_ctx_persistence@close-replace-race.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/shard-glk4/igt@gem_ctx_persistence@close-replace-race.html

  * igt@runner@aborted:
    - shard-hsw:          ([FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166]) ([fdo#111870]) -> ([FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171], [FAIL][172], [FAIL][173], [FAIL][174]) ([fdo#111870] / [i915#1485])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-hsw6/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-hsw2/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-hsw6/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-hsw6/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-hsw4/igt@runner@aborted.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-hsw4/igt@runner@aborted.html
   [165]: https://intel-gfx-ci.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
