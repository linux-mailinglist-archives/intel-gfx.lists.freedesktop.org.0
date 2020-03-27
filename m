Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92395195700
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 13:21:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDBD36EA0E;
	Fri, 27 Mar 2020 12:21:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C299D6EA0D;
 Fri, 27 Mar 2020 12:21:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BBBC9A00CC;
 Fri, 27 Mar 2020 12:21:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 27 Mar 2020 12:21:04 -0000
Message-ID: <158531166474.17235.17089223019957986115@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200326191151.20890-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200326191151.20890-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/execlists=3A_Prevent_GPU_death_on_ELSP=5B1=5D_promotion_t?=
 =?utf-8?q?o_idle_context_=28rev2=29?=
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

Series: drm/i915/execlists: Prevent GPU death on ELSP[1] promotion to idle context (rev2)
URL   : https://patchwork.freedesktop.org/series/75130/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8195_full -> Patchwork_17104_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17104_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#1492])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-tglb5/igt@gem_ctx_persistence@close-replace-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-tglb3/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [i915#677]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +12 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb4/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-iclb6/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@i915_selftest@live@execlists:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#647])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-tglb1/igt@i915_selftest@live@execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-tglb6/igt@i915_selftest@live@execlists.html
    - shard-apl:          [PASS][13] -> [INCOMPLETE][14] ([fdo#103927] / [i915#656])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-apl6/igt@i915_selftest@live@execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-apl3/igt@i915_selftest@live@execlists.html
    - shard-kbl:          [PASS][15] -> [INCOMPLETE][16] ([fdo#112259])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl7/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-kbl7/igt@i915_selftest@live@execlists.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-apl1/igt@i915_suspend@forcewake.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-apl4/igt@i915_suspend@forcewake.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#129])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl3/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-skl1/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
    - shard-kbl:          [PASS][21] -> [FAIL][22] ([i915#54] / [i915#93] / [i915#95])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
    - shard-apl:          [PASS][23] -> [FAIL][24] ([i915#54] / [i915#95])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#52] / [i915#54]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#79])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-glk8/igt@kms_flip@flip-vs-expired-vblank.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-glk4/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180] / [i915#95])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#1188]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145] / [i915#265])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +8 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#112080]) +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-iclb7/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-tglb:         [FAIL][43] -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-tglb2/igt@gem_ctx_persistence@processes.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-tglb2/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][45] ([fdo#110854]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [SKIP][47] ([fdo#109276] / [i915#677]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb6/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][49] ([i915#677]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [SKIP][51] ([fdo#112146]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@live@hangcheck:
    - shard-iclb:         [DMESG-FAIL][55] ([i915#419]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb6/igt@i915_selftest@live@hangcheck.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-iclb6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-apl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [FAIL][59] ([i915#34]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl1/igt@kms_flip@plain-flip-fb-recreate.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-skl6/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][61] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][63] ([i915#648] / [i915#69]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][67] ([i915#31]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-hsw4/igt@kms_setmode@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-hsw5/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-accuracy-idle:
    - shard-snb:          [SKIP][69] ([fdo#109271]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-snb1/igt@kms_vblank@pipe-b-accuracy-idle.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-snb1/igt@kms_vblank@pipe-b-accuracy-idle.html

  * igt@perf_pmu@busy-accuracy-2-vcs1:
    - shard-iclb:         [SKIP][71] ([fdo#112080]) -> [PASS][72] +5 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb7/igt@perf_pmu@busy-accuracy-2-vcs1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-iclb2/igt@perf_pmu@busy-accuracy-2-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][73] ([fdo#109276]) -> [PASS][74] +7 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][75] ([i915#92]) -> ([FAIL][76], [FAIL][77]) ([i915#656] / [i915#92])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl6/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-kbl3/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-kbl7/igt@runner@aborted.html
    - shard-apl:          [FAIL][78] ([fdo#103927]) -> ([FAIL][79], [FAIL][80]) ([fdo#103927] / [i915#529])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-apl6/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-apl3/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/shard-apl8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#1492]: https://gitlab.freedesktop.org/drm/intel/issues/1492
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#419]: https://gitlab.freedesktop.org/drm/intel/issues/419
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#647]: https://gitlab.freedesktop.org/drm/intel/issues/647
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (9 -> 10)
------------------------------

  Additional (1): pig-skl-6260u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8195 -> Patchwork_17104

  CI-20190529: 20190529
  CI_DRM_8195: bcb3db890b651ee74ca510bbc4dacebdaa65d311 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5539: e7aae12e37771a8b7796ba252574eb832a5839c3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17104: f75f1d1d76f832a0e3d9d64dd675ceb56040582c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17104/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
