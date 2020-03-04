Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DA7179911
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 20:31:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 351716E0EF;
	Wed,  4 Mar 2020 19:31:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B91816E0EF;
 Wed,  4 Mar 2020 19:31:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AAE8BA363D;
 Wed,  4 Mar 2020 19:31:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Wed, 04 Mar 2020 19:31:29 -0000
Message-ID: <158335028967.431.13311605990885214733@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_add_OA_interrupt_support_=28rev5=29?=
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

Series: drm/i915/perf: add OA interrupt support (rev5)
URL   : https://patchwork.freedesktop.org/series/54280/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8061_full -> Patchwork_16808_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_16808_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16808_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16808_full:

### IGT changes ###

#### Warnings ####

  * igt@gem_exec_schedule@pi-userfault-bsd2:
    - shard-iclb:         [SKIP][1] ([fdo#109276]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb7/igt@gem_exec_schedule@pi-userfault-bsd2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd2.html

  
Known issues
------------

  Here are the changes found in Patchwork_16808_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-apl4/igt@gem_ctx_isolation@bcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-apl6/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-kbl2/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-kbl7/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_ctx_persistence@engines-mixed-process@vcs1:
    - shard-kbl:          [PASS][7] -> [INCOMPLETE][8] ([fdo#103665])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-kbl2/igt@gem_ctx_persistence@engines-mixed-process@vcs1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-kbl7/igt@gem_ctx_persistence@engines-mixed-process@vcs1.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#110854])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112080]) +14 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276] / [i915#677]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109276]) +23 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-iclb3/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([i915#677])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +8 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-apl:          [PASS][21] -> [INCOMPLETE][22] ([fdo#103927])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-apl6/igt@gem_exec_whisper@basic-queues-forked.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-apl2/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#413])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb4/igt@i915_pm_rps@reset.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-iclb3/igt@i915_pm_rps@reset.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#54])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#79])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#79])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#34])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#1188])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([fdo#108145])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109642] / [fdo#111068])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-iclb7/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109441]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-c-accuracy-idle:
    - shard-glk:          [PASS][43] -> [FAIL][44] ([i915#43])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-glk5/igt@kms_vblank@pipe-c-accuracy-idle.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-glk4/igt@kms_vblank@pipe-c-accuracy-idle.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#110841]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][47] ([fdo#109276] / [i915#677]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb7/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [SKIP][49] ([fdo#112146]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb1/igt@gem_exec_schedule@preempt-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-iclb3/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][51] ([i915#644]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][53] -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-skl:          [INCOMPLETE][55] ([i915#151] / [i915#69]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-skl6/igt@i915_pm_rpm@system-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-skl10/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-apl6/igt@i915_suspend@fence-restore-untiled.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-apl7/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-glk:          [FAIL][59] ([i915#1119]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-glk2/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-glk9/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled:
    - shard-skl:          [FAIL][61] ([i915#52] / [i915#54]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][65] ([fdo#108145]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][67] ([i915#899]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb8/igt@kms_psr@psr2_no_drrs.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][71] ([i915#31]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-glk5/igt@kms_setmode@basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-glk4/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][73] ([fdo#112080]) -> [PASS][74] +4 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb6/igt@perf_pmu@busy-vcs1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-iclb2/igt@perf_pmu@busy-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][75] ([fdo#109276]) -> [PASS][76] +15 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8061 -> Patchwork_16808

  CI-20190529: 20190529
  CI_DRM_8061: e6398b7ae826a02206308a7e164bcf354bbf4993 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5490: f98b33cbd5b57bae52b8e2fae2039e89ac877822 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16808: cd7ce8c94fd002813b25c573ab7db8a7b7ce7f14 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
