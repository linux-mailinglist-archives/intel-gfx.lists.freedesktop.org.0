Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4357D1842C3
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 09:37:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 299936E2F3;
	Fri, 13 Mar 2020 08:37:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F369A6E2F3;
 Fri, 13 Mar 2020 08:37:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E4710A66C9;
 Fri, 13 Mar 2020 08:37:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 13 Mar 2020 08:37:20 -0000
Message-ID: <158408864090.30352.4473215368022474516@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200311162300.1838847-1-matthew.d.roper@intel.com>
In-Reply-To: <20200311162300.1838847-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgR2Vu?=
 =?utf-8?q?11_workarounds_=28rev5=29?=
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

Series: Gen11 workarounds (rev5)
URL   : https://patchwork.freedesktop.org/series/74475/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8127_full -> Patchwork_16956_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16956_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16956_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16956_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-iclb:         [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb8/igt@gem_exec_whisper@basic-fds-priority.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-iclb5/igt@gem_exec_whisper@basic-fds-priority.html

  
Known issues
------------

  Here are the changes found in Patchwork_16956_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([i915#1402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-tglb6/igt@gem_ctx_persistence@close-replace-race.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-tglb2/igt@gem_ctx_persistence@close-replace-race.html
    - shard-iclb:         [PASS][5] -> [INCOMPLETE][6] ([i915#1402])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb3/igt@gem_ctx_persistence@close-replace-race.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-iclb2/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd:
    - shard-iclb:         [PASS][7] -> [FAIL][8] ([i915#679])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb3/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-iclb4/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1:
    - shard-iclb:         [PASS][9] -> [INCOMPLETE][10] ([i915#1239])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb3/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-iclb4/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb3/igt@gem_exec_async@concurrent-writes-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-iclb2/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#110854])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-iclb6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_whisper@basic-fds-all:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#1401])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-tglb8/igt@gem_exec_whisper@basic-fds-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-tglb8/igt@gem_exec_whisper@basic-fds-all.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-tglb:         [PASS][17] -> [FAIL][18] ([i915#644])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-tglb6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-tglb2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#413])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb1/igt@i915_pm_rps@reset.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-iclb6/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-apl3/igt@i915_suspend@sysfs-reader.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-apl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-kbl:          [PASS][23] -> [FAIL][24] ([i915#54])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
    - shard-apl:          [PASS][25] -> [FAIL][26] ([i915#54])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#54]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-glk:          [PASS][29] -> [INCOMPLETE][30] ([i915#58] / [k.org#198133])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#1188]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([fdo#108145] / [i915#265])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][41] -> [FAIL][42] ([i915#31])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-apl1/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-apl6/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-double-start-vcs1:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#112080]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb1/igt@perf_pmu@busy-double-start-vcs1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-iclb6/igt@perf_pmu@busy-double-start-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109276]) +7 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb1/igt@prime_busy@hang-bsd2.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-iclb6/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-skl:          [INCOMPLETE][47] ([i915#1402]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl1/igt@gem_ctx_persistence@close-replace-race.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-skl5/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_schedule@implicit-write-read-bsd:
    - shard-iclb:         [SKIP][49] ([i915#677]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-iclb6/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][51] ([fdo#109276]) -> [PASS][52] +7 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb6/igt@gem_exec_schedule@promotion-bsd1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [INCOMPLETE][53] ([i915#69]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl6/igt@gem_workarounds@suspend-resume.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-skl3/igt@gem_workarounds@suspend-resume.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +4 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][57] ([i915#447]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-iclb5/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][59] ([i915#454]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][61] ([i915#413]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb5/igt@i915_pm_rps@waitboost.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-iclb6/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][63] ([i915#72]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][65] ([IGT#5] / [i915#697]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled:
    - shard-skl:          [FAIL][67] ([i915#52] / [i915#54]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl3/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][69] ([i915#79]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-skl:          [FAIL][71] ([i915#49]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][73] ([i915#123] / [i915#69]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][77] ([fdo#108145] / [i915#265]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][79] ([fdo#109441]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb4/igt@kms_psr@psr2_cursor_plane_onoff.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][81] ([fdo#112080]) -> [PASS][82] +7 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb3/igt@perf_pmu@busy-vcs1.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/shard-iclb2/igt@perf_pmu@busy-vcs1.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1401]: https://gitlab.freedesktop.org/drm/intel/issues/1401
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8127 -> Patchwork_16956

  CI-20190529: 20190529
  CI_DRM_8127: 6b843f994832ac95eafa8d380399c3aef2cab3e5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5506: 59fd8a0d01dac58dc6c7d86ef391ed4393ab5aae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16956: 61491f4c9a1186b3f5a41b6129854fa3a692bc4c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16956/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
