Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B66C184D96
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 18:26:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 320D689BA1;
	Fri, 13 Mar 2020 17:26:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 17AD989B9F;
 Fri, 13 Mar 2020 17:26:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0EBAAA0091;
 Fri, 13 Mar 2020 17:26:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 13 Mar 2020 17:26:12 -0000
Message-ID: <158412037202.30353.13196274697311240588@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200311182618.21513-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200311182618.21513-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgUGVy?=
 =?utf-8?q?_client_engine_busyness_=28rev7=29?=
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

Series: Per client engine busyness (rev7)
URL   : https://patchwork.freedesktop.org/series/70977/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8132_full -> Patchwork_16961_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16961_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-snb:          [PASS][1] -> [FAIL][2] ([i915#1379])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-snb5/igt@gem_ctx_exec@basic-nohangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-snb2/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-hsw:          [PASS][3] -> [FAIL][4] ([i915#1379])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-hsw4/igt@gem_ctx_exec@basic-nohangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-hsw1/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#1197] / [i915#1239])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-skl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-skl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#679])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-skl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-skl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#110841])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276] / [i915#677]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([i915#677]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +5 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109276]) +19 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][21] -> [FAIL][22] ([i915#644])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#198])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-skl4/igt@i915_pm_dc@dc6-psr.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-skl8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#1430] / [i915#656])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-skl3/igt@i915_selftest@live@execlists.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-skl6/igt@i915_selftest@live@execlists.html

  * igt@kms_atomic_transition@1x-modeset-transitions:
    - shard-snb:          [PASS][27] -> [SKIP][28] ([fdo#109271]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-snb6/igt@kms_atomic_transition@1x-modeset-transitions.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-snb6/igt@kms_atomic_transition@1x-modeset-transitions.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-kbl:          [PASS][29] -> [FAIL][30] ([i915#54])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#54]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
    - shard-apl:          [PASS][33] -> [FAIL][34] ([i915#54])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][35] -> [FAIL][36] ([i915#72])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#46])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#1188])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][43] -> [FAIL][44] ([i915#899])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109642] / [fdo#111068])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-iclb7/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109441]) +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf@oa-exponents:
    - shard-glk:          [PASS][49] -> [FAIL][50] ([i915#84])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-glk7/igt@perf@oa-exponents.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-glk3/igt@perf@oa-exponents.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#112080]) +15 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-iclb2/igt@perf_pmu@busy-vcs1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-iclb3/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [TIMEOUT][53] ([i915#1340]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-tglb8/igt@gem_ctx_persistence@close-replace-race.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-tglb6/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][55] ([fdo#112080]) -> [PASS][56] +15 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][57] ([fdo#109276] / [i915#677]) -> [PASS][58] +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][59] ([fdo#112146]) -> [PASS][60] +6 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][61] ([i915#677]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-iclb:         [FAIL][63] ([i915#644]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-iclb2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-iclb1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-kbl6/igt@gem_softpin@noreloc-s3.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-kbl2/igt@gem_softpin@noreloc-s3.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +4 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-apl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][69] ([i915#454]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@execlists:
    - shard-apl:          [INCOMPLETE][71] ([fdo#103927] / [i915#656]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-apl1/igt@i915_selftest@live@execlists.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-apl3/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
    - shard-skl:          [FAIL][73] ([i915#54]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-glk:          [INCOMPLETE][75] ([i915#58] / [k.org#198133]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-glk9/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-glk8/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled:
    - shard-skl:          [FAIL][77] ([i915#52] / [i915#54]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-skl3/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][79] ([i915#34]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-skl:          [FAIL][81] ([i915#49]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][83] ([fdo#108145]) -> [PASS][84] +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][85] ([fdo#108145] / [i915#265]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][87] ([i915#899]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][89] ([fdo#109441]) -> [PASS][90] +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-iclb8/igt@kms_psr@psr2_no_drrs.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][91] ([fdo#109276]) -> [PASS][92] +22 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][93] ([i915#468]) -> [FAIL][94] ([i915#454])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-tglb7/igt@i915_pm_dc@dc6-psr.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][95], [FAIL][96], [FAIL][97]) ([fdo#103927] / [i915#1402] / [i915#529]) -> ([FAIL][98], [FAIL][99]) ([fdo#103927] / [i915#1402])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-apl3/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-apl7/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/shard-apl1/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-apl6/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/shard-apl7/igt@runner@aborted.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1340]: https://gitlab.freedesktop.org/drm/intel/issues/1340
  [i915#1379]: https://gitlab.freedesktop.org/drm/intel/issues/1379
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8132 -> Patchwork_16961

  CI-20190529: 20190529
  CI_DRM_8132: 72014335c2758a20db6107314352afb5951f1c55 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5506: 59fd8a0d01dac58dc6c7d86ef391ed4393ab5aae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16961: 674960732d160f5c682f5d46305341acc41762bf @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16961/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
