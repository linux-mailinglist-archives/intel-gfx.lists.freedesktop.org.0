Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B2D177E7B
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 19:34:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D53388D18;
	Tue,  3 Mar 2020 18:34:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AB93188D18;
 Tue,  3 Mar 2020 18:34:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2B51A47DA;
 Tue,  3 Mar 2020 18:34:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 03 Mar 2020 18:34:39 -0000
Message-ID: <158326047983.15380.17956782610999126137@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=5Fdevice_managed_resources_=28rev4=29?=
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

Series: drm_device managed resources (rev4)
URL   : https://patchwork.freedesktop.org/series/73633/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8050_full -> Patchwork_16793_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16793_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@implicit-read-write-bsd:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([i915#677]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [i915#677]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-iclb7/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#644])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#644])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-apl3/igt@gem_workarounds@suspend-resume-context.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([IGT#5])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#79])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#221])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1188])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl7/igt@kms_hdr@bpc-switch.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-skl2/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_psr@suspend:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#198])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl8/igt@kms_psr@suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-skl7/igt@kms_psr@suspend.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][25] -> [FAIL][26] ([i915#31])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-apl7/igt@kms_setmode@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-apl8/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#112080]) +14 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb1/igt@perf_pmu@busy-check-all-vcs1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-iclb5/igt@perf_pmu@busy-check-all-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109276]) +26 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd:
    - shard-skl:          [INCOMPLETE][31] ([i915#1197] / [i915#1239]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-skl:          [FAIL][33] ([i915#679]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][35] ([fdo#109276] / [i915#677]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb5/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][37] ([i915#677]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][39] ([fdo#112146]) -> [PASS][40] +7 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][41] ([i915#413]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb4/igt@i915_pm_rps@reset.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-iclb8/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
    - shard-hsw:          [FAIL][47] ([i915#57]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-hsw5/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-hsw:          [INCOMPLETE][49] ([i915#61]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-hsw5/igt@kms_flip@flip-vs-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-hsw7/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][51] ([i915#899]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@primary_mmap_gtt:
    - shard-tglb:         [SKIP][53] ([i915#668]) -> [PASS][54] +4 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-tglb5/igt@kms_psr@primary_mmap_gtt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-tglb7/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][55] ([fdo#109441]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][57] ([i915#31]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-hsw8/igt@kms_setmode@basic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-hsw5/igt@kms_setmode@basic.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-a:
    - shard-snb:          [SKIP][59] ([fdo#109271]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-snb5/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-snb4/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][61] ([i915#69]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl8/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-skl8/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][63] ([fdo#112080]) -> [PASS][64] +7 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb7/igt@perf_pmu@busy-vcs1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-iclb1/igt@perf_pmu@busy-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][65] ([fdo#109276]) -> [PASS][66] +15 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb3/igt@prime_busy@hang-bsd2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][67] ([i915#454]) -> [SKIP][68] ([i915#468]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@i2c:
    - shard-snb:          [SKIP][69] ([fdo#109271]) -> [INCOMPLETE][70] ([i915#82])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-snb6/igt@i915_pm_rpm@i2c.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/shard-snb5/igt@i915_pm_rpm@i2c.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (9 -> 10)
------------------------------

  Additional (1): pig-skl-6260u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8050 -> Patchwork_16793

  CI-20190529: 20190529
  CI_DRM_8050: 422d76f5669ce8b7cd0c579f60628877159cbe7c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5484: 91b36b61e76901a2bd09fe93ac7bf7b8a60f258c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16793: b37c1e68565a05cdc7806b5dd628ac9654d4dfa2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
