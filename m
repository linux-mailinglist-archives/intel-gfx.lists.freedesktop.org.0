Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F69181E76
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 17:55:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 822C36E9CC;
	Wed, 11 Mar 2020 16:55:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 387C86E9C1;
 Wed, 11 Mar 2020 16:55:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2909DA66C9;
 Wed, 11 Mar 2020 16:55:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 11 Mar 2020 16:55:53 -0000
Message-ID: <158394575314.13950.15005905864899239017@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200310154309.3759-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200310154309.3759-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/execlists=3A_Track_active_elements_during_dequeue_=28rev2?=
 =?utf-8?q?=29?=
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

Series: drm/i915/execlists: Track active elements during dequeue (rev2)
URL   : https://patchwork.freedesktop.org/series/74524/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8112_full -> Patchwork_16910_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16910_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16910_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16910_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@vecs0-fds:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-tglb3/igt@gem_exec_parallel@vecs0-fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-tglb8/igt@gem_exec_parallel@vecs0-fds.html

  
Known issues
------------

  Here are the changes found in Patchwork_16910_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#1402])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-tglb1/igt@gem_ctx_persistence@close-replace-race.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-tglb8/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +29 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-iclb5/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb3/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#1318] / [i915#1401])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-tglb8/igt@gem_exec_whisper@basic-fds-forked.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-tglb8/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#716])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-glk2/igt@gen9_exec_parse@allowed-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-glk7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#49])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#112080]) +14 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb4/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-iclb5/igt@perf_pmu@busy-accuracy-98-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-kbl:          [FAIL][25] ([i915#679]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-kbl7/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-kbl2/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][27] ([fdo#110841]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-apl2/igt@gem_eio@in-flight-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-apl1/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][31] ([fdo#110854]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][33] ([fdo#112080]) -> [PASS][34] +16 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [SKIP][35] ([fdo#109276] / [i915#677]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb3/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][37] ([i915#677]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][39] ([fdo#112146]) -> [PASS][40] +12 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-glk:          [DMESG-WARN][41] ([i915#118] / [i915#95]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-glk3/igt@gem_exec_whisper@basic-fds-priority.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-glk5/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][43] ([i915#413]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb6/igt@i915_pm_rps@waitboost.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-iclb1/igt@i915_pm_rps@waitboost.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled:
    - shard-glk:          [FAIL][45] ([i915#52] / [i915#54]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][47] ([i915#79]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][49] ([i915#1188]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][53] ([fdo#108145]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][55] ([fdo#108145] / [i915#265]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][57] ([i915#899]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][59] ([fdo#109642] / [fdo#111068]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb7/igt@kms_psr2_su@page_flip.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb7/igt@kms_psr@psr2_cursor_plane_onoff.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][63] ([i915#31]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-apl8/igt@kms_setmode@basic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-apl6/igt@kms_setmode@basic.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][65] ([fdo#109276]) -> [PASS][66] +21 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-iclb:         [INCOMPLETE][67] ([i915#1402]) -> [TIMEOUT][68] ([i915#1340])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb7/igt@gem_ctx_persistence@close-replace-race.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-iclb2/igt@gem_ctx_persistence@close-replace-race.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][69] ([i915#468]) -> [FAIL][70] ([i915#454])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][71] ([i915#180]) -> [INCOMPLETE][72] ([i915#155])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1318]: https://gitlab.freedesktop.org/drm/intel/issues/1318
  [i915#1340]: https://gitlab.freedesktop.org/drm/intel/issues/1340
  [i915#1401]: https://gitlab.freedesktop.org/drm/intel/issues/1401
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8112 -> Patchwork_16910

  CI-20190529: 20190529
  CI_DRM_8112: 032f2fe5c92eb1db6d417738431153c001a41bcc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5504: d6788bf0404f76b66170e18eb26c85004b5ccb25 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16910: 6d27a8572080d727e38eeaa879e00d936ccaf679 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16910/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
