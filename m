Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2742F6984
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 19:29:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FC416E0CE;
	Thu, 14 Jan 2021 18:29:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A85EF6E027;
 Thu, 14 Jan 2021 18:29:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A3D42A8169;
 Thu, 14 Jan 2021 18:29:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 14 Jan 2021 18:29:35 -0000
Message-ID: <161064897563.19649.10509349675369132794@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210114103822.1766-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210114103822.1766-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/selftests=3A_Exercise?=
 =?utf-8?q?_relative_mmio_paths_to_non-privileged_registers?=
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
Content-Type: multipart/mixed; boundary="===============0351116258=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0351116258==
Content-Type: multipart/alternative;
 boundary="===============7194115708530160628=="

--===============7194115708530160628==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/2] drm/i915/selftests: Exercise relative mmio paths to non-privileged registers
URL   : https://patchwork.freedesktop.org/series/85865/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9607_full -> Patchwork_19354_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19354_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_import_export@flink:
    - shard-glk:          [PASS][1] -> [INCOMPLETE][2] ([i915#2369])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-glk5/igt@drm_import_export@flink.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-glk8/igt@drm_import_export@flink.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-tglb:         [PASS][3] -> [FAIL][4] ([i915#2896])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-tglb3/igt@gem_ctx_persistence@smoketest.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-tglb8/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_exec_reloc@basic-many-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][5] ([i915#2389])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb1/igt@gem_exec_reloc@basic-many-active@vcs1.html

  * igt@gem_mmap_gtt@coherency:
    - shard-iclb:         NOTRUN -> [SKIP][6] ([fdo#109292])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb5/igt@gem_mmap_gtt@coherency.html

  * igt@i915_suspend@sysfs-reader:
    - shard-iclb:         [PASS][7] -> [INCOMPLETE][8] ([i915#1185])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-iclb3/igt@i915_suspend@sysfs-reader.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb3/igt@i915_suspend@sysfs-reader.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic:
    - shard-skl:          NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111304]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl4/igt@kms_ccs@pipe-c-crc-sprite-planes-basic.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-iclb:         NOTRUN -> [SKIP][10] ([fdo#109284] / [fdo#111827])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb5/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_chamelium@vga-hpd:
    - shard-skl:          NOTRUN -> [SKIP][11] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl8/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color_chamelium@pipe-d-ctm-max:
    - shard-iclb:         NOTRUN -> [SKIP][12] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb5/igt@kms_color_chamelium@pipe-d-ctm-max.html

  * igt@kms_concurrent@pipe-c:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl8/igt@kms_concurrent@pipe-c.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl3/igt@kms_concurrent@pipe-c.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-iclb:         [PASS][15] -> [DMESG-WARN][16] ([i915#1226])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-iclb2/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb2/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#54]) +12 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][19] ([fdo#109278])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-tglb:         [PASS][20] -> [FAIL][21] ([i915#2346])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-kbl:          [PASS][22] -> [DMESG-WARN][23] ([i915#180])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([i915#2122]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#2672])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271]) +86 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-iclb:         [PASS][28] -> [INCOMPLETE][29] ([i915#1185] / [i915#123])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#109280]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#533])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl10/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][32] ([fdo#108145] / [i915#265]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-c-tiling-x:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180] / [i915#78]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-kbl4/igt@kms_plane_lowres@pipe-c-tiling-x.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-kbl2/igt@kms_plane_lowres@pipe-c-tiling-x.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vrr@flip-basic:
    - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109502])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb5/igt@kms_vrr@flip-basic.html

  * igt@perf@polling:
    - shard-skl:          NOTRUN -> [FAIL][38] ([i915#1542])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl10/igt@perf@polling.html

  * igt@perf@polling-parameterized:
    - shard-tglb:         [PASS][39] -> [FAIL][40] ([i915#1542])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-tglb5/igt@perf@polling-parameterized.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-tglb1/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * {igt@gem_exec_fair@basic-flow@rcs0}:
    - shard-tglb:         [FAIL][41] ([i915#2842]) -> [PASS][42] +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html

  * {igt@gem_exec_fair@basic-none-share@rcs0}:
    - shard-apl:          [SKIP][43] ([fdo#109271]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-apl6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * {igt@gem_exec_fair@basic-none@vcs0}:
    - shard-kbl:          [FAIL][45] ([i915#2842]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html

  * {igt@gem_exec_fair@basic-pace@vecs0}:
    - shard-kbl:          [SKIP][47] ([fdo#109271]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html

  * {igt@gem_exec_fair@basic-throttle@rcs0}:
    - shard-glk:          [FAIL][49] ([i915#2842]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_parallel@engines@fds:
    - shard-iclb:         [INCOMPLETE][51] ([i915#2295]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-iclb5/igt@gem_exec_parallel@engines@fds.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb5/igt@gem_exec_parallel@engines@fds.html

  * {igt@gem_exec_schedule@u-fairslice@vcs0}:
    - shard-skl:          [DMESG-WARN][53] ([i915#1610] / [i915#2803]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl4/igt@gem_exec_schedule@u-fairslice@vcs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl5/igt@gem_exec_schedule@u-fairslice@vcs0.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [DMESG-WARN][55] ([i915#118] / [i915#95]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-glk9/igt@gem_exec_whisper@basic-queues-forked.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-glk6/igt@gem_exec_whisper@basic-queues-forked.html

  * {igt@gem_spin_batch@spin-each}:
    - shard-skl:          [FAIL][57] ([i915#2898]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl8/igt@gem_spin_batch@spin-each.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl8/igt@gem_spin_batch@spin-each.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [INCOMPLETE][59] -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl8/igt@i915_suspend@debugfs-reader.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl8/igt@i915_suspend@debugfs-reader.html

  * igt@kms_color@pipe-c-degamma:
    - shard-skl:          [FAIL][61] ([i915#71]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl5/igt@kms_color@pipe-c-degamma.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl7/igt@kms_color@pipe-c-degamma.html

  * igt@kms_concurrent@pipe-b:
    - shard-kbl:          [DMESG-WARN][63] ([i915#180] / [i915#78]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-kbl2/igt@kms_concurrent@pipe-b.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-kbl2/igt@kms_concurrent@pipe-b.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-skl:          [FAIL][65] ([i915#54]) -> [PASS][66] +6 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
    - shard-apl:          [FAIL][67] ([i915#79]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
    - shard-glk:          [FAIL][69] ([i915#79]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][71] ([i915#2122]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [INCOMPLETE][73] ([i915#198]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][75] ([fdo#108145] / [i915#265]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][77] ([fdo#109441]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-iclb6/igt@kms_psr@psr2_cursor_render.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][79] ([i915#2681] / [i915#2684]) -> [WARN][80] ([i915#1804] / [i915#2684])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][81] ([i915#1804] / [i915#2684]) -> [FAIL][82] ([i915#2680] / [i915#2681])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][83] ([i915#2295] / [i915#2505]) -> ([FAIL][84], [FAIL][85]) ([i915#2295])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-kbl6/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-kbl1/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-kbl3/igt@runner@aborted.html
    - shard-iclb:         [FAIL][86] ([i915#2295] / [i915#2724]) -> ([FAIL][87], [FAIL][88]) ([i915#2295] / [i915#2426] / [i915#2724])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-iclb2/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb7/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb3/igt@runner@aborted.html
    - shard-glk:          ([FAIL][89], [FAIL][90]) ([i915#2295] / [k.org#202321]) -> ([FAIL][91], [FAIL][92], [FAIL][93]) ([i915#2295] / [i915#2722] / [k.org#202321])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-glk7/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-glk5/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-glk4/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-glk8/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-glk8/igt@runner@aborted.html
    - shard-skl:          ([FAIL][94], [FAIL][95]) ([i915#2295] / [i915#2426]) -> [FAIL][96] ([i915#2295])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl7/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl4/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl6/igt@runner@aborted.html

  

### Piglit changes ###

#### Issues hit ####

  * spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) 2darray:
    - pig-snb-2600:       NOTRUN -> [FAIL][97] ([mesa#1812])
   [97]: None

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109292]: https://bugs.freedesktop.org/show_bug.cgi?id=109292
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109502]: https://bugs.freedesktop.org/show_bug.cgi?id=109502
  [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2680]: https://gitlab.freedesktop.org/drm/intel/issues/2680
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2896]: https://gitlab.freedesktop.org/drm/intel/issues/2896
  [i915#2898]: https://gitlab.freedesktop.org/drm/intel/issues/2898
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#71]: https://gitlab.freedesktop.org/drm/intel/issues/71
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321
  [mesa#1812]: https://gitlab.freedesktop.org/mesa/mesa/issues/1812


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_9607 -> Patchwork_19354

  CI-20190529: 20190529
  CI_DRM_9607: 1cd1433e50924f963a31d50a0bfcccb1f872544f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5957: 2a2b3418f7458dfa1fac255cc5c71603f617690a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19354: 633f3050f2b666de909387521bc86f0df7e11f81 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/index.html

--===============7194115708530160628==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>series starting with [v2,1/2] drm/i915/selftests: Exercise relative mmio paths to non-privileged registers</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85865/">https://patchwork.freedesktop.org/series/85865/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9607_full -&gt; Patchwork_19354_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19354_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_import_export@flink:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-glk5/igt@drm_import_export@flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-glk8/igt@drm_import_export@flink.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-tglb3/igt@gem_ctx_persistence@smoketest.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-tglb8/igt@gem_ctx_persistence@smoketest.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2896">i915#2896</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb1/igt@gem_exec_reloc@basic-many-active@vcs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb5/igt@gem_mmap_gtt@coherency.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109292">fdo#109292</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-iclb3/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb3/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1185">i915#1185</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl4/igt@kms_ccs@pipe-c-crc-sprite-planes-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111304">fdo#111304</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb5/igt@kms_chamelium@hdmi-hpd-storm-disable.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl8/igt@kms_chamelium@vga-hpd.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb5/igt@kms_color_chamelium@pipe-d-ctm-max.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-c:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl8/igt@kms_concurrent@pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl3/igt@kms_concurrent@pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-iclb2/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb2/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1226">i915#1226</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +86 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1185">i915#1185</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/123">i915#123</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280">fdo#109280</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl10/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-x:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-kbl4/igt@kms_plane_lowres@pipe-c-tiling-x.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-kbl2/igt@kms_plane_lowres@pipe-c-tiling-x.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/78">i915#78</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb5/igt@kms_vrr@flip-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109502">fdo#109502</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl10/igt@perf@polling.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-tglb5/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-tglb1/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>{igt@gem_exec_fair@basic-flow@rcs0}:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none-share@rcs0}:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-apl6/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none@vcs0}:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@vecs0}:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-throttle@rcs0}:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-iclb5/igt@gem_exec_parallel@engines@fds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb5/igt@gem_exec_parallel@engines@fds.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_schedule@u-fairslice@vcs0}:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl4/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2803">i915#2803</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl5/igt@gem_exec_schedule@u-fairslice@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-glk9/igt@gem_exec_whisper@basic-queues-forked.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-glk6/igt@gem_exec_whisper@basic-queues-forked.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@gem_spin_batch@spin-each}:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl8/igt@gem_spin_batch@spin-each.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2898">i915#2898</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl8/igt@gem_spin_batch@spin-each.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl8/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl8/igt@i915_suspend@debugfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-degamma:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl5/igt@kms_color@pipe-c-degamma.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/71">i915#71</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl7/igt@kms_color@pipe-c-degamma.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-b:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-kbl2/igt@kms_concurrent@pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/78">i915#78</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-kbl2/igt@kms_concurrent@pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-iclb6/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2680">i915#2680</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-kbl6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-kbl3/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-iclb2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb7/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-iclb3/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-glk7/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-glk5/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-glk4/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-glk8/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-glk8/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl7/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/shard-skl4/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/shard-skl6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Issues hit</h4>
<ul>
<li>spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) 2darray:<ul>
<li>pig-snb-2600:       NOTRUN -&gt; <a href="None">FAIL</a> (<a href="https://gitlab.freedesktop.org/mesa/mesa/issues/1812">mesa#1812</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): pig-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9607 -&gt; Patchwork_19354</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9607: 1cd1433e50924f963a31d50a0bfcccb1f872544f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5957: 2a2b3418f7458dfa1fac255cc5c71603f617690a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19354: 633f3050f2b666de909387521bc86f0df7e11f81 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============7194115708530160628==--

--===============0351116258==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0351116258==--
