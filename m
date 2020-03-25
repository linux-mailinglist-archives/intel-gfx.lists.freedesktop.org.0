Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B510A192796
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 12:55:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 809C86E822;
	Wed, 25 Mar 2020 11:55:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AB0696E81E;
 Wed, 25 Mar 2020 11:55:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A4C7A00C7;
 Wed, 25 Mar 2020 11:55:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 25 Mar 2020 11:55:05 -0000
Message-ID: <158513730560.29635.12584632639427059144@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200325101358.12231-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200325101358.12231-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/execlists=3A_Drop_setting_sibling_priority_hint_on_virtua?=
 =?utf-8?q?l_engines?=
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

Series: drm/i915/execlists: Drop setting sibling priority hint on virtual engines
URL   : https://patchwork.freedesktop.org/series/75063/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8185_full -> Patchwork_17081_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17081_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [i915#677])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-iclb5/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112146]) +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][7] -> [FAIL][8] ([i915#454])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-hsw:          [PASS][9] -> [TIMEOUT][10] ([i915#1526])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-hsw1/igt@i915_pm_rc6_residency@rc6-idle.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-hsw2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-xtiled:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#52] / [i915#54])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-xtiled.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-skl5/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-xtiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180] / [i915#93] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#34])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-skl1/igt@kms_flip@plain-flip-fb-recreate.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-skl2/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109642] / [fdo#111068])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-iclb8/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][21] -> [FAIL][22] ([i915#173])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb3/igt@kms_psr@no_drrs.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-iclb7/igt@kms_psr@psr2_dpms.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#31])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-skl7/igt@kms_setmode@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-skl6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-kbl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#112080]) +14 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb2/igt@perf_pmu@busy-check-all-vcs1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-iclb8/igt@perf_pmu@busy-check-all-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109276]) +21 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][33] ([fdo#110841]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][35] ([fdo#110854]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb3/igt@gem_exec_balancer@smoke.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][37] ([fdo#112080]) -> [PASS][38] +11 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][39] ([fdo#109276] / [i915#677]) -> [PASS][40] +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][43] ([fdo#109276]) -> [PASS][44] +20 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb4/igt@gem_exec_schedule@preempt-queue-chain-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-iclb3/igt@gem_exec_schedule@preempt-queue-chain-bsd.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-apl6/igt@gem_softpin@noreloc-s3.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-apl2/igt@gem_softpin@noreloc-s3.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
    - shard-apl:          [DMESG-WARN][51] ([i915#180] / [i915#95]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
    - shard-hsw:          [FAIL][53] ([i915#57]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-hsw5/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][55] ([fdo#109349]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled:
    - shard-skl:          [FAIL][57] ([i915#52] / [i915#54]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-skl2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][59] ([i915#1188]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_lease@atomic_implicit_crtc:
    - shard-snb:          [SKIP][61] ([fdo#109271]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-snb4/igt@kms_lease@atomic_implicit_crtc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-snb2/igt@kms_lease@atomic_implicit_crtc.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +4 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][65] ([fdo#108145]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][67] ([fdo#109441]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb5/igt@kms_psr@psr2_cursor_plane_onoff.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  
#### Warnings ####

  * igt@gem_userptr_blits@sync-unmap:
    - shard-hsw:          [DMESG-WARN][69] ([fdo#111870]) -> [DMESG-WARN][70] ([fdo#110789] / [fdo#111870])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-hsw1/igt@gem_userptr_blits@sync-unmap.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-hsw1/igt@gem_userptr_blits@sync-unmap.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][71] ([i915#468]) -> [FAIL][72] ([i915#454])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-tglb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@pm-tiling:
    - shard-snb:          [SKIP][73] ([fdo#109271]) -> [INCOMPLETE][74] ([i915#82])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-snb4/igt@i915_pm_rpm@pm-tiling.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-snb5/igt@i915_pm_rpm@pm-tiling.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
    - shard-kbl:          [FAIL][75] ([i915#54]) -> [FAIL][76] ([i915#54] / [i915#93] / [i915#95]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
    - shard-apl:          [FAIL][77] ([i915#54]) -> [FAIL][78] ([i915#54] / [i915#95])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge:
    - shard-kbl:          [FAIL][79] ([i915#70]) -> [FAIL][80] ([i915#70] / [i915#93] / [i915#95])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-kbl1/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-kbl7/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-glk:          [FAIL][81] ([i915#64]) -> [FAIL][82] ([i915#1121] / [i915#64]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-glk9/igt@kms_fbcon_fbt@fbc.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-glk9/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-apl:          [FAIL][83] ([i915#53]) -> [FAIL][84] ([i915#53] / [i915#95])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-apl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-apl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          [FAIL][85] ([fdo#108145]) -> [FAIL][86] ([fdo#108145] / [i915#93] / [i915#95])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
    - shard-apl:          [FAIL][87] ([fdo#108145]) -> [FAIL][88] ([fdo#108145] / [i915#95])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110789]: https://bugs.freedesktop.org/show_bug.cgi?id=110789
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1121]: https://gitlab.freedesktop.org/drm/intel/issues/1121
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1526]: https://gitlab.freedesktop.org/drm/intel/issues/1526
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#64]: https://gitlab.freedesktop.org/drm/intel/issues/64
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8185 -> Patchwork_17081

  CI-20190529: 20190529
  CI_DRM_8185: dbd2532fc5cf023b28bd631b51eea8452739b421 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5537: 190245120758e754813d76b2c6c613413a0dba29 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17081: 191bcdc06878ed4f3c7cb0035d1931f9d33442ba @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17081/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
