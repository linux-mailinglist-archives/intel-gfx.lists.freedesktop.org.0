Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17303174483
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 03:40:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01F046E14A;
	Sat, 29 Feb 2020 02:40:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 953D26E14A;
 Sat, 29 Feb 2020 02:40:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8E623A47E8;
 Sat, 29 Feb 2020 02:40:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sat, 29 Feb 2020 02:40:50 -0000
Message-ID: <158294405055.19638.6870319385963741680@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Proper_dbuf_global_state_=28rev3=29?=
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

Series: drm/i915: Proper dbuf global state (rev3)
URL   : https://patchwork.freedesktop.org/series/73421/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8021_full -> Patchwork_16739_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_8021_full and Patchwork_16739_full:

### New IGT tests (1) ###

  * igt@i915_selftest@mock:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_16739_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@bcs0:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2] ([i915#1197] / [i915#1239])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-skl3/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-skl10/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html

  * igt@gem_ctx_persistence@engines-mixed-process@rcs0:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#679])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-skl3/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-skl10/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110841])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110854])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-iclb6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112080]) +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb1/igt@gem_exec_parallel@vcs1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-iclb3/igt@gem_exec_parallel@vcs1.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276] / [i915#677])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([i915#677]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd2:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109276]) +10 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb4/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-iclb7/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [PASS][19] -> [INCOMPLETE][20] ([i915#58] / [k.org#198133])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-glk3/igt@gem_exec_whisper@basic-queues-forked.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-glk5/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#644])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#413])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb2/igt@i915_pm_rps@waitboost.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-iclb2/igt@i915_pm_rps@waitboost.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#69])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145] / [i915#265])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#173])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb8/igt@kms_psr@no_drrs.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-iclb4/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@short-reads:
    - shard-glk:          [PASS][41] -> [FAIL][42] ([i915#51])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-glk9/igt@perf@short-reads.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-glk5/igt@perf@short-reads.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [FAIL][43] ([i915#1277]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-tglb8/igt@gem_exec_balancer@hang.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-tglb2/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [SKIP][45] ([fdo#109276]) -> [PASS][46] +19 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb8/igt@gem_exec_schedule@fifo-bsd1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-iclb1/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][47] ([fdo#109276] / [i915#677]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][49] ([i915#677]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][51] ([fdo#112146]) -> [PASS][52] +7 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_mmap_offset@clear:
    - shard-kbl:          [SKIP][53] ([fdo#109271]) -> [PASS][54] +7 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-kbl3/igt@gem_mmap_offset@clear.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-kbl4/igt@gem_mmap_offset@clear.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-iclb:         [INCOMPLETE][55] ([i915#189]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb2/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-iclb1/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@i915_selftest@live@gem_contexts:
    - shard-kbl:          [INCOMPLETE][57] ([fdo#103665] / [i915#504]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-kbl3/igt@i915_selftest@live@gem_contexts.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-kbl4/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gtt:
    - shard-kbl:          [DMESG-FAIL][59] -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-kbl3/igt@i915_selftest@live@gtt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-kbl4/igt@i915_selftest@live@gtt.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][61] ([i915#300]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
    - shard-apl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +4 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
    - shard-hsw:          [SKIP][65] ([fdo#109271]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-hsw1/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-hsw7/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][69] ([i915#1188]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-skl9/igt@kms_hdr@bpc-switch.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][71] ([fdo#108145]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb4/igt@kms_psr@psr2_cursor_render.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][75] ([i915#31]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-apl6/igt@kms_setmode@basic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-apl6/igt@kms_setmode@basic.html
    - shard-hsw:          [FAIL][77] ([i915#31]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-hsw1/igt@kms_setmode@basic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-hsw7/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-accuracy-50-vcs1:
    - shard-kbl:          [SKIP][79] ([fdo#109271] / [fdo#112080]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-kbl3/igt@perf_pmu@busy-accuracy-50-vcs1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-kbl4/igt@perf_pmu@busy-accuracy-50-vcs1.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][81] ([fdo#112080]) -> [PASS][82] +12 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb7/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][83] ([fdo#112080]) -> [FAIL][84] ([IGT#28]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [INCOMPLETE][85] ([i915#58] / [k.org#198133]) -> [DMESG-WARN][86] ([i915#716])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-glk2/igt@gen9_exec_parse@allowed-all.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_selftest@live@gt_lrc:
    - shard-tglb:         [DMESG-FAIL][87] ([i915#1233]) -> [INCOMPLETE][88] ([i915#1233])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-tglb3/igt@i915_selftest@live@gt_lrc.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-tglb7/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-hsw:          [DMESG-WARN][89] -> [DMESG-WARN][90] ([i915#478])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-hsw1/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-hsw4/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-kbl:          [SKIP][91] ([fdo#109271]) -> [SKIP][92] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-kbl3/igt@kms_chamelium@vga-hpd-after-suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/shard-kbl4/igt@kms_chamelium@vga-hpd-after-suspend.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#478]: https://gitlab.freedesktop.org/drm/intel/issues/478
  [i915#504]: https://gitlab.freedesktop.org/drm/intel/issues/504
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8021 -> Patchwork_16739

  CI-20190529: 20190529
  CI_DRM_8021: 98e43281da271731d056080d696c143ca7e07e35 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5473: d22b3507ff2678a05d69d47c0ddf6f0e72ee7ffd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16739: 9cba9c99fb782757a79cbec8dd06e5a207d1220e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
