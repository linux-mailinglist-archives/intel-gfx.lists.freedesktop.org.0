Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 482121794EF
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 17:23:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 771646E067;
	Wed,  4 Mar 2020 16:23:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B2D236E065;
 Wed,  4 Mar 2020 16:23:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB55DA3ECB;
 Wed,  4 Mar 2020 16:23:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 04 Mar 2020 16:23:20 -0000
Message-ID: <158333900067.429.217652427347431811@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200303221235.1930678-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200303221235.1930678-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Apply_a_heavy_handed_flush_to_i915=5Factive?=
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

Series: drm/i915/selftests: Apply a heavy handed flush to i915_active
URL   : https://patchwork.freedesktop.org/series/74223/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8059_full -> Patchwork_16807_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_16807_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16807_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16807_full:

### IGT changes ###

#### Warnings ####

  * igt@gem_exec_schedule@pi-userfault-bsd2:
    - shard-iclb:         [SKIP][1] ([fdo#109276]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd2.html

  
Known issues
------------

  Here are the changes found in Patchwork_16807_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +19 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-iclb7/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#570] / [i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-skl9/igt@gem_ctx_persistence@processes.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-skl5/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110854])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-iclb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276] / [i915#677])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-iclb7/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +7 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([i915#677])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109276]) +19 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][17] -> [FAIL][18] ([i915#644])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#454])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][21] -> [FAIL][22] ([i915#413])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-iclb3/igt@i915_pm_rps@reset.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-iclb5/igt@i915_pm_rps@reset.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#54])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#79])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#1188]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-skl:          [PASS][37] -> [TIMEOUT][38] ([fdo#111732])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-skl7/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-skl8/igt@perf@gen8-unprivileged-single-ctx-counters.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][39] ([fdo#109276] / [i915#677]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][43] ([fdo#109276]) -> [PASS][44] +13 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-iclb8/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-iclb4/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46] +5 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][47] ([i915#413]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-iclb7/igt@i915_pm_rps@waitboost.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-iclb3/igt@i915_pm_rps@waitboost.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [FAIL][53] ([i915#57]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-hsw5/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-hsw7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][55] ([i915#221]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][57] ([i915#1188]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-skl9/igt@kms_hdr@bpc-switch.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-skl2/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - shard-snb:          [SKIP][59] ([fdo#109271]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-snb6/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-snb6/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][61] ([fdo#108145]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][63] ([fdo#108145] / [i915#265]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][65] ([i915#899]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][67] ([fdo#109642] / [fdo#111068]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-iclb1/igt@kms_psr2_su@frontbuffer.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-iclb4/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][71] ([i915#31]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-hsw8/igt@kms_setmode@basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-hsw6/igt@kms_setmode@basic.html
    - shard-kbl:          [FAIL][73] ([i915#31]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-kbl6/igt@kms_setmode@basic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-kbl7/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [SKIP][75] ([fdo#112080]) -> [PASS][76] +9 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-iclb8/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-iclb4/igt@perf_pmu@busy-accuracy-98-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-snb:          [FAIL][77] ([i915#1148]) -> [FAIL][78] ([i915#1379])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-snb4/igt@gem_ctx_exec@basic-nohangcheck.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-snb4/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-hsw:          [FAIL][79] ([i915#1148]) -> [FAIL][80] ([i915#1379])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-hsw7/igt@gem_ctx_exec@basic-nohangcheck.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-hsw6/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [INCOMPLETE][81] -> [SKIP][82] ([i915#677])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-iclb7/igt@gem_exec_schedule@pi-userfault-bsd.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][83] ([i915#468]) -> [FAIL][84] ([i915#454])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/shard-tglb8/igt@i915_pm_dc@dc6-psr.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1148]: https://gitlab.freedesktop.org/drm/intel/issues/1148
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1379]: https://gitlab.freedesktop.org/drm/intel/issues/1379
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8059 -> Patchwork_16807

  CI-20190529: 20190529
  CI_DRM_8059: 1beee9fc089828e40507003ffeaeef0697345be7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5489: f74d9ecfb482388b05f6902b29e64c031989ad33 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16807: 695517c977b1d753ebe4dd36616f8bd97fc08d37 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16807/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
