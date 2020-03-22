Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D557318EC11
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Mar 2020 21:13:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB38289E59;
	Sun, 22 Mar 2020 20:13:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8ED6389E57;
 Sun, 22 Mar 2020 20:13:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 858DFA47DF;
 Sun, 22 Mar 2020 20:13:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 22 Mar 2020 20:13:41 -0000
Message-ID: <158490802151.23728.4250421022311956743@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200322181946.22059-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200322181946.22059-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Mark_timeline-=3Ecacheline_as_destroyed_after_rcu_g?=
 =?utf-8?q?race_period?=
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

Series: drm/i915/gt: Mark timeline->cacheline as destroyed after rcu grace period
URL   : https://patchwork.freedesktop.org/series/74950/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8170_full -> Patchwork_17048_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17048_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-apl7/igt@gem_ctx_isolation@bcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-apl6/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#679])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-skl10/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-skl9/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#1197] / [i915#1239])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-skl10/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-skl9/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_exec_schedule@implicit-read-write-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd.html

  * igt@gem_exec_schedule@implicit-write-read-bsd2:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276] / [i915#677])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-iclb7/igt@gem_exec_schedule@implicit-write-read-bsd2.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +15 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-iclb3/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@preempt-other-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb7/igt@gem_exec_schedule@preempt-other-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-iclb1/igt@gem_exec_schedule@preempt-other-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-tglb6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-tglb6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#454])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-skl7/igt@i915_pm_dc@dc6-psr.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-skl1/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#54])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109349])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-c:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#53])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-skl5/igt@kms_pipe_crc_basic@hang-read-crc-pipe-c.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-skl6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-c.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#31])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-skl9/igt@kms_setmode@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-skl7/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#112080]) +9 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb2/igt@perf_pmu@busy-check-all-vcs1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-iclb3/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][33] ([fdo#112080]) -> [PASS][34] +6 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb8/igt@gem_busy@busy-vcs1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +5 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][37] ([fdo#110854]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [SKIP][39] ([i915#677]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-iclb7/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [SKIP][41] ([fdo#109276] / [i915#677]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-blt:
    - shard-skl:          [INCOMPLETE][43] ([i915#1193]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-skl6/igt@gem_exec_schedule@pi-shared-iova-blt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-skl8/igt@gem_exec_schedule@pi-shared-iova-blt.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46] +4 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][47] ([i915#644]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [FAIL][49] ([i915#644]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-kbl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-kbl2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-apl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-apl1/igt@gem_workarounds@suspend-resume-fd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-apl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][53] ([i915#1188]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][55] ([fdo#109642] / [fdo#111068]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb7/igt@kms_psr2_su@page_flip.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb4/igt@kms_psr@psr2_dpms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-iclb2/igt@kms_psr@psr2_dpms.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][59] ([i915#31]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-glk9/igt@kms_setmode@basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-glk1/igt@kms_setmode@basic.html
    - shard-hsw:          [FAIL][61] ([i915#31]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-hsw6/igt@kms_setmode@basic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-hsw1/igt@kms_setmode@basic.html

  * igt@perf@oa-exponents:
    - shard-glk:          [FAIL][63] ([i915#84]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-glk5/igt@perf@oa-exponents.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-glk3/igt@perf@oa-exponents.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][65] ([fdo#109276]) -> [PASS][66] +12 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb7/igt@prime_busy@hang-bsd2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][67] ([i915#468]) -> [FAIL][68] ([i915#454])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/shard-tglb8/igt@i915_pm_dc@dc6-psr.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1193]: https://gitlab.freedesktop.org/drm/intel/issues/1193
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1459]: https://gitlab.freedesktop.org/drm/intel/issues/1459
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8170 -> Patchwork_17048

  CI-20190529: 20190529
  CI_DRM_8170: e464286ae9b7c18b0fab5fc638dff07c8afc5999 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5526: f49ebeee9f54d6f23c60a842f75f65561d452ab0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17048: d34794b80570ca685e79bfcd0ee3edb8648123c9 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
