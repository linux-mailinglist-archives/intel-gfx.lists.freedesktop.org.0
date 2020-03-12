Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B3318390B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 19:53:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D88776EADF;
	Thu, 12 Mar 2020 18:53:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2F9DD6E255;
 Thu, 12 Mar 2020 18:53:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0BDC2A00C7;
 Thu, 12 Mar 2020 18:53:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 12 Mar 2020 18:53:15 -0000
Message-ID: <158403919501.4949.3783349611960613791@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200311125903.1982-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200311125903.1982-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Take_a_copy_of_the_engines_for_context=5Fbarrier?=
 =?utf-8?b?X3Rhc2sgKHJldjMp?=
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

Series: drm/i915/gem: Take a copy of the engines for context_barrier_task (rev3)
URL   : https://patchwork.freedesktop.org/series/74583/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8124_full -> Patchwork_16937_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16937_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#679])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-skl5/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-skl6/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#1197] / [i915#1239])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-skl5/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-skl6/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112080]) +12 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +17 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-tglb5/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-tglb5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-apl1/igt@gem_softpin@noreloc-s3.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-apl1/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#716])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#72])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#52] / [i915#54])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-skl5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-hsw:          [PASS][25] -> [INCOMPLETE][26] ([i915#61])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-hsw6/igt@kms_flip@2x-flip-vs-panning.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-hsw7/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#79])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#49])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#1188])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#69])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-skl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([fdo#108145])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109642] / [fdo#111068])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][41] -> [FAIL][42] ([i915#31])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-kbl7/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-kbl7/igt@kms_setmode@basic.html

  * igt@prime_vgem@sync-vebox:
    - shard-tglb:         [PASS][43] -> [INCOMPLETE][44] ([i915#409])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-tglb1/igt@prime_vgem@sync-vebox.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-tglb1/igt@prime_vgem@sync-vebox.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][45] ([fdo#112080]) -> [PASS][46] +6 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-iclb6/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [INCOMPLETE][47] ([i915#1402]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-tglb3/igt@gem_ctx_persistence@close-replace-race.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-tglb5/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][49] ([fdo#110841]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-iclb7/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@deep-bsd2:
    - shard-iclb:         [SKIP][51] ([fdo#109276]) -> [PASS][52] +5 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-iclb3/igt@gem_exec_schedule@deep-bsd2.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-iclb2/igt@gem_exec_schedule@deep-bsd2.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [SKIP][53] ([fdo#109276] / [i915#677]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][55] ([i915#677]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][57] ([fdo#112146]) -> [PASS][58] +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-tglb:         [TIMEOUT][59] ([i915#1408]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-tglb3/igt@gem_exec_whisper@basic-fds-forked.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-tglb2/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][61] ([i915#454]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [FAIL][63] ([i915#413]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-tglb6/igt@i915_pm_rps@waitboost.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-tglb3/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [INCOMPLETE][65] ([i915#656]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-skl4/igt@i915_selftest@live@execlists.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-skl3/igt@i915_selftest@live@execlists.html
    - shard-apl:          [INCOMPLETE][67] ([fdo#103927] / [i915#656]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-apl6/igt@i915_selftest@live@execlists.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-apl6/igt@i915_selftest@live@execlists.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][71] ([fdo#108145]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][73] ([i915#899]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][75] ([fdo#109441]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-iclb3/igt@kms_psr@psr2_cursor_render.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][77] ([i915#180]) -> [PASS][78] +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][79] ([i915#69]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-skl10/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-skl5/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [INCOMPLETE][81] ([i915#1402]) -> [TIMEOUT][82] ([i915#1340])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-kbl7/igt@gem_ctx_persistence@close-replace-race.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-kbl3/igt@gem_ctx_persistence@close-replace-race.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - shard-snb:          [SKIP][83] ([fdo#109271]) -> [INCOMPLETE][84] ([i915#82])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-snb5/igt@i915_pm_rpm@basic-pci-d3-state.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-snb4/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][85], [FAIL][86]) ([i915#1389] / [i915#1402] / [i915#92]) -> [FAIL][87] ([i915#92])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-kbl7/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-kbl7/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-kbl2/igt@runner@aborted.html
    - shard-apl:          ([FAIL][88], [FAIL][89], [FAIL][90]) ([fdo#103927] / [i915#1402] / [i915#529]) -> ([FAIL][91], [FAIL][92]) ([fdo#103927] / [i915#1402])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-apl6/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-apl1/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-apl2/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-apl2/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-apl3/igt@runner@aborted.html
    - shard-tglb:         [FAIL][93] ([i915#1389]) -> [FAIL][94] ([i915#409])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/shard-tglb3/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/shard-tglb1/igt@runner@aborted.html

  
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
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#1408]: https://gitlab.freedesktop.org/drm/intel/issues/1408
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (10 -> 9)
------------------------------

  Missing    (1): pig-skl-6260u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8124 -> Patchwork_16937

  CI-20190529: 20190529
  CI_DRM_8124: b720e4b68d27d8d72bbe56abfcdc91ef2bebc2c3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5505: 8973d811f3fdfb4ace4aabab2095ce0309881648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16937: 475d71c63cfe30244e32033ccbe9756d58616414 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16937/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
