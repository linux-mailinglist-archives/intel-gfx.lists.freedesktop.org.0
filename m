Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD17F13A0D7
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 07:03:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A8346E225;
	Tue, 14 Jan 2020 06:03:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4F6C56E225;
 Tue, 14 Jan 2020 06:03:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 38B3AA00E9;
 Tue, 14 Jan 2020 06:03:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Tue, 14 Jan 2020 06:03:06 -0000
Message-ID: <157898178620.24907.17122416986346106373@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200110134913.24325-1-anshuman.gupta@intel.com>
In-Reply-To: <20200110134913.24325-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/hdcp=3A_update_HDCP_CP_property_as_per_port_authenticatio?=
 =?utf-8?q?n_state?=
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

Series: drm/i915/hdcp: update HDCP CP property as per port authentication state
URL   : https://patchwork.freedesktop.org/series/71887/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7718_full -> Patchwork_16053_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16053_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16053_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16053_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_tiled_blits@interruptible:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb7/igt@gem_tiled_blits@interruptible.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-tglb6/igt@gem_tiled_blits@interruptible.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-tglb2/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  
Known issues
------------

  Here are the changes found in Patchwork_16053_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-skl:          [PASS][4] -> [FAIL][5] ([i915#679])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl7/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-skl9/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-iclb7/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-bsd2:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([i915#461])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd2.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-tglb6/igt@gem_ctx_shared@q-smoketest-bsd2.html

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([i915#470])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb3/igt@gem_eio@reset-stress.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-tglb6/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [PASS][12] -> [INCOMPLETE][13] ([fdo#111736] / [i915#472]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb7/igt@gem_exec_balancer@nop.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-tglb4/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#109276]) +16 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-iclb6/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([i915#677]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([i915#463] / [i915#472])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb5/igt@gem_exec_schedule@smoketest-all.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-tglb6/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#112146]) +3 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb5/igt@gem_exec_schedule@wide-bsd.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-iclb4/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_softpin@noreloc-s3:
    - shard-iclb:         [PASS][22] -> [DMESG-WARN][23] ([fdo#111764])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb5/igt@gem_softpin@noreloc-s3.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-iclb7/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [PASS][24] -> [INCOMPLETE][25] ([i915#472] / [i915#707])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb1/igt@gem_sync@basic-many-each.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-tglb7/igt@gem_sync@basic-many-each.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][26] -> [DMESG-WARN][27] ([i915#180]) +3 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@live_gt_heartbeat:
    - shard-skl:          [PASS][28] -> [DMESG-FAIL][29] ([i915#541])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl2/igt@i915_selftest@live_gt_heartbeat.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-skl10/igt@i915_selftest@live_gt_heartbeat.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [PASS][30] -> [INCOMPLETE][31] ([i915#472])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb4/igt@i915_selftest@live_requests.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-tglb2/igt@i915_selftest@live_requests.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][32] -> [INCOMPLETE][33] ([fdo#103665])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [PASS][34] -> [DMESG-WARN][35] ([i915#180]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([fdo#108145]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-skl:          [PASS][38] -> [DMESG-WARN][39] ([IGT#6])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl6/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-skl4/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][40] -> [SKIP][41] ([fdo#109441])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-iclb6/igt@kms_psr@psr2_cursor_render.html

  * igt@perf_pmu@busy-accuracy-2-vcs1:
    - shard-iclb:         [PASS][42] -> [SKIP][43] ([fdo#112080]) +6 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb2/igt@perf_pmu@busy-accuracy-2-vcs1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-iclb6/igt@perf_pmu@busy-accuracy-2-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][44] ([fdo#109276] / [fdo#112080]) -> [PASS][45] +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [INCOMPLETE][46] ([fdo#111735]) -> [PASS][47] +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb2/igt@gem_ctx_shared@q-smoketest-all.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-tglb7/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][48] ([fdo#112146]) -> [PASS][49] +6 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-iclb6/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][50] ([fdo#110854]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [INCOMPLETE][52] ([i915#472]) -> [PASS][53] +3 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb5/igt@gem_exec_create@madvise.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-tglb4/igt@gem_exec_create@madvise.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][54] ([i915#677]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-blt:
    - shard-tglb:         [INCOMPLETE][56] ([fdo#111677] / [i915#472]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb3/igt@gem_exec_schedule@preempt-queue-blt.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-tglb3/igt@gem_exec_schedule@preempt-queue-blt.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-iclb:         [SKIP][58] ([fdo#109276]) -> [PASS][59] +14 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox:
    - shard-tglb:         [INCOMPLETE][60] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox.html

  * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
    - shard-tglb:         [INCOMPLETE][62] -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb2/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-tglb1/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][64] ([i915#725]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-hsw7/igt@i915_selftest@live_blt.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-hsw2/igt@i915_selftest@live_blt.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][66] ([i915#109]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl6/igt@kms_color@pipe-b-ctm-0-75.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-skl10/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][68] ([i915#79]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][70] ([i915#180]) -> [PASS][71] +3 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-apl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-iclb:         [INCOMPLETE][72] ([i915#123] / [i915#140]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb3/igt@kms_frontbuffer_tracking@psr-suspend.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-iclb1/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][74] ([i915#180]) -> [PASS][75] +3 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][76] ([fdo#108145]) -> [PASS][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][78] ([fdo#108145] / [i915#265]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-y:
    - shard-skl:          [DMESG-WARN][80] ([IGT#6]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl1/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-skl4/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [SKIP][82] ([fdo#109441]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb1/igt@kms_psr@psr2_primary_render.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-iclb2/igt@kms_psr@psr2_primary_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][84] ([i915#31]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-apl4/igt@kms_setmode@basic.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-apl4/igt@kms_setmode@basic.html

  * igt@perf@short-reads:
    - shard-glk:          [TIMEOUT][86] ([fdo#112271] / [i915#51]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-glk5/igt@perf@short-reads.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-glk2/igt@perf@short-reads.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][88] ([fdo#112080]) -> [PASS][89] +7 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb5/igt@perf_pmu@init-busy-vcs1.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-iclb4/igt@perf_pmu@init-busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][90] ([fdo#109276] / [fdo#112080]) -> [FAIL][91] ([IGT#28])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][92] ([i915#468]) -> [FAIL][93] ([i915#454])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb1/igt@i915_pm_dc@dc6-psr.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/shard-tglb7/igt@i915_pm_dc@dc6-psr.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7718 -> Patchwork_16053

  CI-20190529: 20190529
  CI_DRM_7718: 37be537ac03a8299982f5fd177418aef86fdcc9e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5362: c2843f8e06a2cf7d372cd154310bf0e3b7722ab8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16053: 8d704d27326faa3e115286a8582a0b7710616657 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16053/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
