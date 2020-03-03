Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA49177569
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 12:43:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 924E06E1D2;
	Tue,  3 Mar 2020 11:43:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AFE086E1D2;
 Tue,  3 Mar 2020 11:43:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7B1BDA00FD;
 Tue,  3 Mar 2020 11:43:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sharma, Swati2" <swati2.sharma@intel.com>
Date: Tue, 03 Mar 2020 11:43:45 -0000
Message-ID: <158323582547.15379.17992135289712303214@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200302213807.6488-1-swati2.sharma@intel.com>
In-Reply-To: <20200302213807.6488-1-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Decrease_log_level?=
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

Series: drm/i915/display: Decrease log level
URL   : https://patchwork.freedesktop.org/series/74166/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8049_full -> Patchwork_16786_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16786_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +12 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [i915#677])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +11 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@promotion-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb3/igt@gem_exec_schedule@promotion-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-iclb2/igt@gem_exec_schedule@promotion-bsd.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [PASS][11] -> [INCOMPLETE][12] ([i915#58] / [k.org#198133])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-glk3/igt@gem_exec_whisper@basic-queues-forked.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-glk3/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [PASS][15] -> [DMESG-FAIL][16] ([fdo#112406])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-apl4/igt@i915_selftest@live@gt_heartbeat.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-apl3/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-apl2/igt@i915_suspend@debugfs-reader.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-apl1/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][19] -> [INCOMPLETE][20] ([fdo#103665])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#34]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-skl7/igt@kms_flip@plain-flip-ts-check.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-skl8/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#899])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109642] / [fdo#111068])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-iclb1/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-apl:          [FAIL][33] ([i915#679]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-apl7/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-apl4/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][35] ([fdo#110854]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb3/igt@gem_exec_balancer@smoke.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [SKIP][37] ([fdo#109276]) -> [PASS][38] +15 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb5/igt@gem_exec_schedule@fifo-bsd1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-iclb2/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][39] ([fdo#112146]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-kbl:          [INCOMPLETE][41] ([fdo#103665]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-kbl2/igt@gem_exec_whisper@basic-queues-forked.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-kbl6/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][43] ([i915#644]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-iclb:         [INCOMPLETE][45] ([i915#1185] / [i915#189]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb2/igt@i915_pm_rpm@system-suspend-modeset.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-iclb5/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [INCOMPLETE][47] ([i915#529]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-skl8/igt@i915_selftest@live@execlists.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-skl1/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [INCOMPLETE][49] ([i915#300]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][51] ([i915#72]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][57] ([fdo#108145]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-none:
    - shard-snb:          [SKIP][59] ([fdo#109271]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-snb4/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-snb2/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb8/igt@kms_psr@psr2_cursor_render.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][63] ([fdo#112080]) -> [PASS][64] +8 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb7/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][65] ([i915#716]) -> [INCOMPLETE][66] ([i915#58] / [k.org#198133])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-glk3/igt@gen9_exec_parse@allowed-all.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][67] ([fdo#109349]) -> [DMESG-WARN][68] ([i915#1226])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8049 -> Patchwork_16786

  CI-20190529: 20190529
  CI_DRM_8049: 7d5c1a40d4e68b642cf581e92435ccbf90e7482a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5483: 1707153df224ffb6333c6c660a792b7f334eb3d3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16786: d616a7f8b001c575620c9a77ffb97dffb9d41ff2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16786/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
