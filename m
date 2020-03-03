Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71951177740
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 14:36:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D3D289DCF;
	Tue,  3 Mar 2020 13:36:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB19489DCF;
 Tue,  3 Mar 2020 13:36:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D3D5DA00EF;
 Tue,  3 Mar 2020 13:36:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 03 Mar 2020 13:36:06 -0000
Message-ID: <158324256683.15377.17949162818726960460@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200302231421.224322-1-jose.souza@intel.com>
In-Reply-To: <20200302231421.224322-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gen11=3A_Moving_WAs_to_rcs?=
 =?utf-8?b?X2VuZ2luZV93YV9pbml0KCk=?=
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

Series: series starting with [1/2] drm/i915/gen11: Moving WAs to rcs_engine_wa_init()
URL   : https://patchwork.freedesktop.org/series/74174/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8049_full -> Patchwork_16788_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16788_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +15 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-iclb5/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([i915#1291])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-tglb6/igt@gem_ctx_persistence@close-replace-race.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-tglb1/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd:
    - shard-apl:          [PASS][5] -> [INCOMPLETE][6] ([fdo#103927] / [i915#1197] / [i915#1239])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-apl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-apl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#679])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-apl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-apl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#1277])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-tglb7/igt@gem_exec_balancer@hang.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-tglb6/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276] / [i915#677]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([i915#677]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb8/igt@gem_exec_schedule@preempt-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-iclb1/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109276]) +17 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [PASS][19] -> [INCOMPLETE][20] ([i915#58] / [k.org#198133])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-glk6/igt@gem_exec_whisper@basic-contexts-forked.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-glk8/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#644])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#413])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb8/igt@i915_pm_rps@waitboost.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-iclb2/igt@i915_pm_rps@waitboost.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#69]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-skl9/igt@i915_suspend@fence-restore-untiled.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-skl5/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#34])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-tglb:         [PASS][29] -> [SKIP][30] ([i915#668]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#1188])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
    - shard-kbl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109642] / [fdo#111068])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-iclb8/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][39] -> [FAIL][40] ([i915#173])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb8/igt@kms_psr@no_drrs.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109441]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-apl:          [FAIL][43] ([i915#679]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-apl7/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-apl2/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][45] ([fdo#110854]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb3/igt@gem_exec_balancer@smoke.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][47] ([i915#677]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][49] ([fdo#112146]) -> [PASS][50] +5 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-kbl:          [INCOMPLETE][51] ([fdo#103665]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-kbl2/igt@gem_exec_whisper@basic-queues-forked.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-kbl2/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][53] ([i915#644]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][55] ([i915#716]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-glk3/igt@gen9_exec_parse@allowed-all.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-glk5/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-iclb:         [INCOMPLETE][57] ([i915#1185] / [i915#189]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb2/igt@i915_pm_rpm@system-suspend-modeset.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-iclb3/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [FAIL][59] ([i915#413]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-tglb1/igt@i915_pm_rps@waitboost.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-tglb3/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [INCOMPLETE][61] ([i915#529]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-skl8/igt@i915_selftest@live@execlists.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-skl6/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [INCOMPLETE][63] ([i915#300]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][65] ([i915#72]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +4 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html
    - shard-skl:          [FAIL][69] ([i915#1188]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][71] ([fdo#108145]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-none:
    - shard-snb:          [SKIP][73] ([fdo#109271]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-snb4/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-snb5/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][75] ([fdo#109441]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb8/igt@kms_psr@psr2_cursor_render.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][77] ([fdo#112080]) -> [PASS][78] +10 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb7/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][79] ([fdo#109276]) -> [PASS][80] +13 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][81] ([fdo#109349]) -> [DMESG-WARN][82] ([i915#1226])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
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
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#1291]: https://gitlab.freedesktop.org/drm/intel/issues/1291
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8049 -> Patchwork_16788

  CI-20190529: 20190529
  CI_DRM_8049: 7d5c1a40d4e68b642cf581e92435ccbf90e7482a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5483: 1707153df224ffb6333c6c660a792b7f334eb3d3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16788: 336d5e700cf94da88c816cf626ef79b8c4040d59 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16788/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
