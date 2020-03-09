Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A78117E888
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 20:34:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25A1F897E0;
	Mon,  9 Mar 2020 19:34:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9FF62897CD;
 Mon,  9 Mar 2020 19:34:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9975BA3ECB;
 Mon,  9 Mar 2020 19:34:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 09 Mar 2020 19:34:16 -0000
Message-ID: <158378245660.9451.8588301848456222702@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200309112431.13903-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200309112431.13903-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Defend_against_concurrent_updates_to_execlists-=3Ea?=
 =?utf-8?q?ctive?=
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

Series: drm/i915/gt: Defend against concurrent updates to execlists->active
URL   : https://patchwork.freedesktop.org/series/74447/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8097_full -> Patchwork_16878_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16878_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +12 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [i915#677])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb5/igt@gem_exec_schedule@wide-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#644])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([fdo#111870] / [i915#211] / [i915#836])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-apl7/igt@gem_userptr_blits@sync-unmap-after-close.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-apl3/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#72])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-iclb3/igt@kms_psr@psr2_sprite_render.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109276]) +12 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb1/igt@prime_busy@hang-bsd2.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-iclb3/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [INCOMPLETE][21] ([i915#155]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-kbl3/igt@gem_eio@in-flight-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-kbl7/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][23] ([fdo#109276] / [i915#677]) -> [PASS][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][25] ([fdo#112146]) -> [PASS][26] +5 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][27] ([i915#677]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][29] ([fdo#109276]) -> [PASS][30] +24 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_whisper@basic-contexts:
    - shard-glk:          [DMESG-WARN][31] ([i915#118] / [i915#95]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-glk2/igt@gem_exec_whisper@basic-contexts.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-glk6/igt@gem_exec_whisper@basic-contexts.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][33] ([i915#454]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [FAIL][37] ([i915#57]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-hsw4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-hsw:          [INCOMPLETE][39] ([i915#61]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-hsw8/igt@kms_flip@flip-vs-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-hsw6/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][41] ([i915#899]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][43] ([fdo#109441]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_psr@suspend:
    - shard-iclb:         [INCOMPLETE][45] ([i915#1185]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb3/igt@kms_psr@suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-iclb1/igt@kms_psr@suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][47] ([fdo#112080]) -> [PASS][48] +10 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb8/igt@perf_pmu@busy-vcs1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-iclb4/igt@perf_pmu@busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-apl:          [TIMEOUT][49] ([i915#1340]) -> [INCOMPLETE][50] ([fdo#103927] / [i915#1402])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-apl8/igt@gem_ctx_persistence@close-replace-race.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-apl1/igt@gem_ctx_persistence@close-replace-race.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][51], [FAIL][52]) ([i915#1389] / [i915#1402] / [i915#92]) -> [FAIL][53] ([i915#92])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-kbl6/igt@runner@aborted.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-kbl6/igt@runner@aborted.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-kbl2/igt@runner@aborted.html
    - shard-apl:          [FAIL][54] ([fdo#103927]) -> ([FAIL][55], [FAIL][56], [FAIL][57]) ([fdo#103927] / [fdo#111870] / [i915#1402] / [i915#211] / [i915#771])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-apl1/igt@runner@aborted.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-apl1/igt@runner@aborted.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-apl4/igt@runner@aborted.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/shard-apl3/igt@runner@aborted.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1340]: https://gitlab.freedesktop.org/drm/intel/issues/1340
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#211]: https://gitlab.freedesktop.org/drm/intel/issues/211
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#771]: https://gitlab.freedesktop.org/drm/intel/issues/771
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8097 -> Patchwork_16878

  CI-20190529: 20190529
  CI_DRM_8097: 2e46e269a2843c5d0b6c72bfb7fa9d9913c15415 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5499: 2e23cf6f63fc6ba1d9543f8327698d6f21813cec @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16878: 97cfa95059160fb433579a941ae2620d15d43b24 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16878/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
