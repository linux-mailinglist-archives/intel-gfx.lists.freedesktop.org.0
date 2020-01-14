Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D54813A044
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 05:39:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB0736E220;
	Tue, 14 Jan 2020 04:39:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0DA316E20C;
 Tue, 14 Jan 2020 04:39:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F1131A00E9;
 Tue, 14 Jan 2020 04:39:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Tue, 14 Jan 2020 04:39:22 -0000
Message-ID: <157897676296.24909.6498535034289903294@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200110133049.2705-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200110133049.2705-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUGVy?=
 =?utf-8?q?_client_engine_busyness_=28rev3=29?=
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

Series: Per client engine busyness (rev3)
URL   : https://patchwork.freedesktop.org/series/70977/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7718_full -> Patchwork_16052_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16052_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16052_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16052_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb7/igt@gem_busy@close-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-tglb6/igt@gem_busy@close-race.html

  
Known issues
------------

  Here are the changes found in Patchwork_16052_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-blt:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111735])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb4/igt@gem_ctx_shared@q-smoketest-blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-tglb3/igt@gem_ctx_shared@q-smoketest-blt.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111736] / [i915#472])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb5/igt@gem_exec_await@wide-contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-tglb3/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_create@forked:
    - shard-glk:          [PASS][9] -> [TIMEOUT][10] ([fdo#112271] / [i915#940])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-glk2/igt@gem_exec_create@forked.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-glk9/igt@gem_exec_create@forked.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112080]) +7 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +19 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-iclb6/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([i915#677]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-blt:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111606] / [fdo#111677] / [i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-blt.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#463] / [i915#472])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb5/igt@gem_exec_schedule@smoketest-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-tglb2/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#472] / [i915#707])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb7/igt@gem_exec_schedule@smoketest-vebox.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-tglb4/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-snb:          [PASS][25] -> [INCOMPLETE][26] ([i915#82])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-snb6/igt@gem_fenced_exec_thrash@2-spare-fences.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-snb5/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-snb:          [PASS][27] -> [TIMEOUT][28] ([fdo#112271] / [i915#530])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-snb4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-snb5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [PASS][29] -> [TIMEOUT][30] ([fdo#112126] / [fdo#112271] / [i915#530])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-tglb7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [PASS][31] -> [INCOMPLETE][32] ([i915#707] / [i915#796])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb2/igt@gem_pipe_control_store_loop@reused-buffer.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-tglb2/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#470] / [i915#472])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb7/igt@gem_sync@basic-all.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-tglb5/igt@gem_sync@basic-all.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@live_execlists:
    - shard-glk:          [PASS][37] -> [TIMEOUT][38] ([fdo#112271] / [i915#529])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-glk1/igt@i915_selftest@live_execlists.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-glk6/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#455])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb4/igt@i915_selftest@live_gt_timelines.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-tglb5/igt@i915_selftest@live_gt_timelines.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][41] -> [INCOMPLETE][42] ([i915#69])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl4/igt@i915_suspend@sysfs-reader.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-skl10/igt@i915_suspend@sysfs-reader.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][43] -> [DMESG-WARN][44] ([i915#109]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl8/igt@kms_color@pipe-a-ctm-0-5.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-skl6/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#79])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][47] -> [INCOMPLETE][48] ([fdo#103665])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [PASS][49] -> [FAIL][50] ([i915#49]) +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [PASS][51] -> [DMESG-WARN][52] ([i915#180])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([fdo#108145])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#109441]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-iclb6/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][57] ([fdo#109276] / [fdo#112080]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb7/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][59] ([fdo#110841]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [INCOMPLETE][61] ([fdo#111735]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb2/igt@gem_ctx_shared@q-smoketest-all.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-tglb4/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][63] ([i915#470] / [i915#472]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb6/igt@gem_exec_parallel@contexts.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-tglb5/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][65] ([fdo#112146]) -> [PASS][66] +6 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-blt:
    - shard-tglb:         [INCOMPLETE][67] ([fdo#111677] / [i915#472]) -> [PASS][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb3/igt@gem_exec_schedule@preempt-queue-blt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-tglb5/igt@gem_exec_schedule@preempt-queue-blt.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][69] ([fdo#109276]) -> [PASS][70] +24 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
    - shard-tglb:         [INCOMPLETE][71] -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb2/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-tglb7/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][73] ([i915#472]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb6/igt@gem_sync@basic-store-all.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-tglb1/igt@gem_sync@basic-store-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][75] ([i915#454]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][77] ([i915#109]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl6/igt@kms_color@pipe-b-ctm-0-75.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-skl3/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-iclb:         [INCOMPLETE][81] ([i915#123] / [i915#140]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb3/igt@kms_frontbuffer_tracking@psr-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-iclb1/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][83] ([i915#180]) -> [PASS][84] +3 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][85] ([fdo#108145]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][87] ([fdo#108145] / [i915#265]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-y:
    - shard-skl:          [DMESG-WARN][89] ([IGT#6]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl1/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-skl1/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][91] ([fdo#109642] / [fdo#111068]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][93] ([fdo#109441]) -> [PASS][94] +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf@short-reads:
    - shard-glk:          [TIMEOUT][95] ([fdo#112271] / [i915#51]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-glk5/igt@perf@short-reads.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-glk3/igt@perf@short-reads.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][97] ([fdo#112080]) -> [PASS][98] +11 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb3/igt@perf_pmu@busy-vcs1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-iclb2/igt@perf_pmu@busy-vcs1.html

  
#### Warnings ####

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][99] ([i915#818]) -> [FAIL][100] ([i915#694])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-hsw1/igt@gem_tiled_blits@normal.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/shard-hsw2/igt@gem_tiled_blits@normal.html

  
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#940]: https://gitlab.freedesktop.org/drm/intel/issues/940


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7718 -> Patchwork_16052

  CI-20190529: 20190529
  CI_DRM_7718: 37be537ac03a8299982f5fd177418aef86fdcc9e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5362: c2843f8e06a2cf7d372cd154310bf0e3b7722ab8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16052: 82e4aff984e7327f89675ebc5e5769039a398147 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16052/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
