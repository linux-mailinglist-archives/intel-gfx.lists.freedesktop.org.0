Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F6E1778AA
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 15:21:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C118B6E8CD;
	Tue,  3 Mar 2020 14:21:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 29A4889A08;
 Tue,  3 Mar 2020 14:21:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 22FF6A00E7;
 Tue,  3 Mar 2020 14:21:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Tue, 03 Mar 2020 14:21:28 -0000
Message-ID: <158324528813.15380.1824361413846591885@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200211183358.157448-1-lyude@redhat.com>
In-Reply-To: <20200211183358.157448-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/dp=2C_i915=3A_eDP_DPCD_backlight_control_detection_fixes_=28re?=
 =?utf-8?b?djMp?=
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

Series: drm/dp, i915: eDP DPCD backlight control detection fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/72991/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8049_full -> Patchwork_16789_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16789_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-apl8/igt@gem_ctx_isolation@bcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-apl6/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_shared@exec-shared-gtt-vebox:
    - shard-apl:          [PASS][3] -> [FAIL][4] ([i915#616])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-apl7/igt@gem_ctx_shared@exec-shared-gtt-vebox.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-apl7/igt@gem_ctx_shared@exec-shared-gtt-vebox.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][5] -> [FAIL][6] ([i915#1277])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-tglb7/igt@gem_exec_balancer@hang.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-tglb2/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-iclb5/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +16 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb3/igt@gem_exec_schedule@wide-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-iclb4/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-apl:          [PASS][15] -> [INCOMPLETE][16] ([fdo#103927])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-apl8/igt@gem_exec_whisper@basic-contexts-forked.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-apl6/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#644])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#644])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-random:
    - shard-snb:          [PASS][23] -> [SKIP][24] ([fdo#109271]) +5 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-snb5/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-snb6/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#79])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#34])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#1188])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#69])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-skl5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-iclb:         [PASS][33] -> [INCOMPLETE][34] ([i915#250])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][35] -> [FAIL][36] ([i915#899])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109642] / [fdo#111068])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-iclb1/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#112080]) +14 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb4/igt@perf_pmu@init-busy-vcs1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-iclb5/igt@perf_pmu@init-busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-apl:          [FAIL][43] ([i915#679]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-apl7/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-apl7/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [SKIP][45] ([fdo#109276] / [i915#677]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb5/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][47] ([fdo#109276]) -> [PASS][48] +14 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb5/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-iclb2/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][49] ([fdo#112146]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-iclb7/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_store@cachelines-vcs1:
    - shard-iclb:         [SKIP][51] ([fdo#112080]) -> [PASS][52] +8 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb8/igt@gem_exec_store@cachelines-vcs1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-iclb2/igt@gem_exec_store@cachelines-vcs1.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-kbl:          [INCOMPLETE][53] ([fdo#103665]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-kbl2/igt@gem_exec_whisper@basic-queues-forked.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-kbl3/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][55] ([i915#644]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][57] ([i915#716]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-glk3/igt@gen9_exec_parse@allowed-all.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-glk7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-iclb:         [INCOMPLETE][59] ([i915#1185] / [i915#189]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb2/igt@i915_pm_rpm@system-suspend-modeset.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-iclb3/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [FAIL][61] ([i915#413]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-tglb1/igt@i915_pm_rps@waitboost.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-tglb6/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [INCOMPLETE][63] ([i915#529]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-skl8/igt@i915_selftest@live@execlists.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-skl2/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [INCOMPLETE][65] ([i915#300]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][67] ([i915#72]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +4 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][73] ([fdo#108145]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-none:
    - shard-snb:          [SKIP][75] ([fdo#109271]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-snb4/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-snb4/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][77] ([fdo#109441]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][79] ([i915#454]) -> [SKIP][80] ([i915#468])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#616]: https://gitlab.freedesktop.org/drm/intel/issues/616
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8049 -> Patchwork_16789

  CI-20190529: 20190529
  CI_DRM_8049: 7d5c1a40d4e68b642cf581e92435ccbf90e7482a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5483: 1707153df224ffb6333c6c660a792b7f334eb3d3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16789: 156ef8bcad25ab2853b8aa2992b9383d783c952f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
