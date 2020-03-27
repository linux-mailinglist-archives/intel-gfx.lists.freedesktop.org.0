Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83347195651
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 12:25:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96F236EA02;
	Fri, 27 Mar 2020 11:25:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ACA126EA01;
 Fri, 27 Mar 2020 11:25:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A6121A47E6;
 Fri, 27 Mar 2020 11:25:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Fri, 27 Mar 2020 11:25:42 -0000
Message-ID: <158530834264.17235.9688122076630290485@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200326134142.31997-1-anshuman.gupta@intel.com>
In-Reply-To: <20200326134142.31997-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5_lpsp_support_for_lpsp_igt_=28rev5=29?=
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

Series: i915 lpsp support for lpsp igt (rev5)
URL   : https://patchwork.freedesktop.org/series/74648/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8195_full -> Patchwork_17097_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17097_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17097_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17097_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_lpsp@non-edp:
    - shard-hsw:          [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-hsw7/igt@i915_pm_lpsp@non-edp.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-hsw2/igt@i915_pm_lpsp@non-edp.html

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - shard-tglb:         [PASS][3] -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-tglb7/igt@i915_pm_rpm@gem-execbuf-stress.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-tglb3/igt@i915_pm_rpm@gem-execbuf-stress.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-iclb:         [PASS][5] -> [SKIP][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb5/igt@perf_pmu@cpu-hotplug.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-iclb5/igt@perf_pmu@cpu-hotplug.html

  
#### Warnings ####

  * igt@i915_pm_lpsp@non-edp:
    - shard-iclb:         [SKIP][7] ([fdo#109301]) -> [SKIP][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb1/igt@i915_pm_lpsp@non-edp.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-iclb2/igt@i915_pm_lpsp@non-edp.html
    - shard-tglb:         [SKIP][9] ([fdo#109301]) -> [SKIP][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-tglb3/igt@i915_pm_lpsp@non-edp.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-tglb6/igt@i915_pm_lpsp@non-edp.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-snb:          [SKIP][11] ([fdo#109271]) -> [FAIL][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-snb5/igt@i915_pm_lpsp@screens-disabled.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-snb6/igt@i915_pm_lpsp@screens-disabled.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8195_full and Patchwork_17097_full:

### New IGT tests (1) ###

  * igt@gem_ctx_isolation@clean:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_17097_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276] / [i915#677]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([i915#677])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109276]) +12 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +4 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb3/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-iclb2/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - shard-glk:          [PASS][21] -> [SKIP][22] ([fdo#109271])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-glk8/igt@i915_pm_rpm@gem-execbuf-stress.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-glk5/igt@i915_pm_rpm@gem-execbuf-stress.html
    - shard-skl:          [PASS][23] -> [SKIP][24] ([fdo#109271])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl9/igt@i915_pm_rpm@gem-execbuf-stress.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-skl2/igt@i915_pm_rpm@gem-execbuf-stress.html

  * igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#54])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled:
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#52] / [i915#54]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-glk4/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#177] / [i915#52] / [i915#54])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * igt@kms_flip@dpms-vs-vblank-race:
    - shard-kbl:          [PASS][33] -> [INCOMPLETE][34] ([i915#1297])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl4/igt@kms_flip@dpms-vs-vblank-race.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-kbl4/igt@kms_flip@dpms-vs-vblank-race.html
    - shard-apl:          [PASS][35] -> [INCOMPLETE][36] ([fdo#103927] / [i915#1297])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-apl7/igt@kms_flip@dpms-vs-vblank-race.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-apl1/igt@kms_flip@dpms-vs-vblank-race.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#49])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#1188])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl3/igt@kms_hdr@bpc-switch.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-skl5/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][43] -> [INCOMPLETE][44] ([i915#69]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-kbl:          [PASS][45] -> [FAIL][46] ([fdo#108145] / [i915#93] / [i915#95])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
    - shard-apl:          [PASS][47] -> [FAIL][48] ([fdo#108145] / [i915#95])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([fdo#108145] / [i915#265])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - shard-apl:          [PASS][51] -> [FAIL][52] ([i915#95])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-apl1/igt@kms_plane_cursor@pipe-a-viewport-size-128.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-apl4/igt@kms_plane_cursor@pipe-a-viewport-size-128.html
    - shard-kbl:          [PASS][53] -> [FAIL][54] ([i915#93] / [i915#95]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl2/igt@kms_plane_cursor@pipe-a-viewport-size-128.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-kbl4/igt@kms_plane_cursor@pipe-a-viewport-size-128.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][55] -> [FAIL][56] ([i915#899])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][57] -> [SKIP][58] ([fdo#109441])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([fdo#112080]) +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb4/igt@perf_pmu@busy-vcs1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-iclb7/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][61] ([fdo#112080]) -> [PASS][62] +13 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb7/igt@gem_busy@busy-vcs1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@processes:
    - shard-tglb:         [FAIL][63] -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-tglb2/igt@gem_ctx_persistence@processes.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-tglb2/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][65] ([fdo#110854]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [SKIP][67] ([fdo#109276] / [i915#677]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][69] ([i915#677]) -> [PASS][70] +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [SKIP][71] ([fdo#112146]) -> [PASS][72] +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_lpsp@edp-native:
    - shard-skl:          [SKIP][75] ([fdo#109271]) -> [PASS][76] +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl6/igt@i915_pm_lpsp@edp-native.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-skl9/igt@i915_pm_lpsp@edp-native.html

  * igt@i915_pm_lpsp@edp-panel-fitter:
    - shard-iclb:         [SKIP][77] ([fdo#109301]) -> [PASS][78] +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb1/igt@i915_pm_lpsp@edp-panel-fitter.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-iclb5/igt@i915_pm_lpsp@edp-panel-fitter.html

  * igt@i915_pm_lpsp@non-edp:
    - shard-glk:          [SKIP][79] ([fdo#109271]) -> [PASS][80] +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-glk3/igt@i915_pm_lpsp@non-edp.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-glk6/igt@i915_pm_lpsp@non-edp.html
    - shard-kbl:          [SKIP][81] ([fdo#109271]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl4/igt@i915_pm_lpsp@non-edp.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-kbl2/igt@i915_pm_lpsp@non-edp.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-tglb:         [SKIP][83] ([fdo#109301]) -> [PASS][84] +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-tglb3/igt@i915_pm_lpsp@screens-disabled.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-tglb7/igt@i915_pm_lpsp@screens-disabled.html
    - shard-apl:          [SKIP][85] ([fdo#109271]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-apl4/igt@i915_pm_lpsp@screens-disabled.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-apl7/igt@i915_pm_lpsp@screens-disabled.html

  * igt@i915_pm_rpm@gem-idle:
    - shard-iclb:         [SKIP][87] ([i915#1316]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb4/igt@i915_pm_rpm@gem-idle.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-iclb3/igt@i915_pm_rpm@gem-idle.html
    - shard-tglb:         [SKIP][89] ([i915#1316]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-tglb2/igt@i915_pm_rpm@gem-idle.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-tglb8/igt@i915_pm_rpm@gem-idle.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-hsw:          [SKIP][91] ([fdo#109271]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-hsw7/igt@i915_pm_rpm@system-suspend-execbuf.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-hsw5/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_selftest@live@hangcheck:
    - shard-iclb:         [DMESG-FAIL][93] ([i915#419]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb6/igt@i915_selftest@live@hangcheck.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-iclb5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
    - shard-glk:          [FAIL][95] ([i915#52] / [i915#54]) -> [PASS][96] +3 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled:
    - shard-kbl:          [FAIL][97] ([fdo#108145] / [i915#177] / [i915#52] / [i915#54] / [i915#93] / [i915#95]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-kbl2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
    - shard-apl:          [FAIL][99] ([fdo#108145] / [i915#52] / [i915#54] / [i915#95]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-apl3/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-apl2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [FAIL][101] ([i915#34]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl1/igt@kms_flip@plain-flip-fb-recreate.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-skl9/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][103] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-apl:          [FAIL][105] ([i915#53] / [i915#95]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][107] ([i915#648] / [i915#69]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][109] ([i915#180]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][111] ([fdo#108145]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-64:
    - shard-kbl:          [FAIL][113] ([i915#93] / [i915#95]) -> [PASS][114] +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl3/igt@kms_plane_cursor@pipe-a-viewport-size-64.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-kbl6/igt@kms_plane_cursor@pipe-a-viewport-size-64.html
    - shard-apl:          [FAIL][115] ([i915#95]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-apl7/igt@kms_plane_cursor@pipe-a-viewport-size-64.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-apl7/igt@kms_plane_cursor@pipe-a-viewport-size-64.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][117] ([fdo#109441]) -> [PASS][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-b-accuracy-idle:
    - shard-snb:          [SKIP][119] ([fdo#109271]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-snb1/igt@kms_vblank@pipe-b-accuracy-idle.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-snb6/igt@kms_vblank@pipe-b-accuracy-idle.html

  * igt@perf@gen12-mi-rpc:
    - shard-tglb:         [FAIL][121] ([i915#1085]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-tglb8/igt@perf@gen12-mi-rpc.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-tglb7/igt@perf@gen12-mi-rpc.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][123] ([fdo#109276]) -> [PASS][124] +16 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@gtt:
    - shard-hsw:          [DMESG-WARN][125] ([fdo#110789] / [i915#478]) -> [DMESG-WARN][126] ([i915#478])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-hsw2/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@gtt.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-hsw4/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@gtt.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy@gtt:
    - shard-hsw:          [DMESG-WARN][127] ([i915#478]) -> [DMESG-WARN][128] ([fdo#110789] / [i915#478])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-hsw4/igt@gem_userptr_blits@map-fixed-invalidate-busy@gtt.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-hsw4/igt@gem_userptr_blits@map-fixed-invalidate-busy@gtt.html
    - shard-snb:          [DMESG-WARN][129] ([i915#478]) -> [DMESG-WARN][130] ([fdo#110789] / [i915#478])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-busy@gtt.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-busy@gtt.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          [FAIL][131] ([i915#357]) -> [FAIL][132] ([i915#357] / [i915#93] / [i915#95])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl1/igt@kms_content_protection@uevent.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-kbl2/igt@kms_content_protection@uevent.html
    - shard-apl:          [FAIL][133] ([i915#357]) -> [FAIL][134] ([i915#357] / [i915#95])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-apl2/igt@kms_content_protection@uevent.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-apl1/igt@kms_content_protection@uevent.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [FAIL][135] ([i915#53] / [i915#93] / [i915#95]) -> [DMESG-WARN][136] ([i915#180])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109301]: https://bugs.freedesktop.org/show_bug.cgi?id=109301
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110789]: https://bugs.freedesktop.org/show_bug.cgi?id=110789
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1085]: https://gitlab.freedesktop.org/drm/intel/issues/1085
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1297]: https://gitlab.freedesktop.org/drm/intel/issues/1297
  [i915#1316]: https://gitlab.freedesktop.org/drm/intel/issues/1316
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#357]: https://gitlab.freedesktop.org/drm/intel/issues/357
  [i915#419]: https://gitlab.freedesktop.org/drm/intel/issues/419
  [i915#478]: https://gitlab.freedesktop.org/drm/intel/issues/478
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (9 -> 10)
------------------------------

  Additional (1): pig-skl-6260u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5539 -> IGTPW_4358
  * Linux: CI_DRM_8195 -> Patchwork_17097

  CI-20190529: 20190529
  CI_DRM_8195: bcb3db890b651ee74ca510bbc4dacebdaa65d311 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4358: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4358/index.html
  IGT_5539: e7aae12e37771a8b7796ba252574eb832a5839c3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17097: df3af2bc5b98bdca45f071d60a5931f9d2af49eb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17097/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
