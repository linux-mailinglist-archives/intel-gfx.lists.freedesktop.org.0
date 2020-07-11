Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB6A21C1CA
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jul 2020 04:28:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17BE26E296;
	Sat, 11 Jul 2020 02:27:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A41016E28A;
 Sat, 11 Jul 2020 02:27:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 761CDA363D;
 Sat, 11 Jul 2020 02:27:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: John.C.Harrison@Intel.com
Date: Sat, 11 Jul 2020 02:27:55 -0000
Message-ID: <159443447545.9234.5695103553403656978@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200710213246.222179-1-John.C.Harrison@Intel.com>
In-Reply-To: <20200710213246.222179-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Correct_location_of_Wa=5F1408615072?=
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

Series: drm/i915: Correct location of Wa_1408615072
URL   : https://patchwork.freedesktop.org/series/79370/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8731_full -> Patchwork_18138_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18138_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_double-position-double_double (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [CRASH][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/pig-icl-1065g7/spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_double-position-double_double.html

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat4_array3-double_dmat2 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][2] +7 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/pig-icl-1065g7/spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat4_array3-double_dmat2.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8731_full and Patchwork_18138_full:

### New Piglit tests (10) ###

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat2_array5-uint_uvec3_array3-position:
    - Statuses : 1 crash(s)
    - Exec time: [0.83] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat3x4_array3-double_dvec4-position:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat4-float_mat2x4_array3-position:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_double-position-double_double:
    - Statuses : 1 crash(s)
    - Exec time: [0.88] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_mat2_array3-position-double_dmat2x3_array2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_mat3-double_dmat2x3-position:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_vec2-double_dvec3-position:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat4_array3-double_dmat2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dvec2-uint_uint:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-int_int-double_dmat3x2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18138_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@bonded-early:
    - shard-kbl:          [PASS][3] -> [FAIL][4] ([i915#2079])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-kbl1/igt@gem_exec_balancer@bonded-early.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-kbl7/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_parallel@engines@basic:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1635] / [i915#95]) +8 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-apl1/igt@gem_exec_parallel@engines@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-apl7/igt@gem_exec_parallel@engines@basic.html

  * igt@gem_exec_reloc@basic-cpu-gtt-active:
    - shard-tglb:         [PASS][7] -> [DMESG-WARN][8] ([i915#402]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-tglb1/igt@gem_exec_reloc@basic-cpu-gtt-active.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-tglb8/igt@gem_exec_reloc@basic-cpu-gtt-active.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-glk:          [PASS][9] -> [DMESG-WARN][10] ([i915#118] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-glk7/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@i915_suspend@forcewake:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([fdo#103375])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-glk2/igt@i915_suspend@forcewake.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-glk7/igt@i915_suspend@forcewake.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +9 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-skl1/igt@kms_color@pipe-b-ctm-negative.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-skl4/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +5 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#93] / [i915#95]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-kbl6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-kbl6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_flip@plain-flip-ts-check@c-hdmi-a2:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#2122])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-glk9/igt@kms_flip@plain-flip-ts-check@c-hdmi-a2.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-glk1/igt@kms_flip@plain-flip-ts-check@c-hdmi-a2.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#1188])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-skl8/igt@kms_hdr@bpc-switch.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-skl6/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([CI#80] / [i915#69])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-skl5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-skl5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109642] / [fdo#111068])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-iclb4/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][31] -> [FAIL][32] ([i915#1820])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-kbl1/igt@perf_pmu@semaphore-busy@rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-kbl1/igt@perf_pmu@semaphore-busy@rcs0.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#1755])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-iclb6/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-iclb2/igt@sysfs_timeslice_duration@timeout@vecs0.html
    - shard-apl:          [PASS][35] -> [FAIL][36] ([i915#1635] / [i915#1755])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-apl4/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-apl2/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_ringsize@clone:
    - shard-kbl:          [DMESG-WARN][37] ([i915#93] / [i915#95]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-kbl1/igt@gem_ctx_ringsize@clone.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-kbl7/igt@gem_ctx_ringsize@clone.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][39] ([i915#402]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-tglb8/igt@i915_module_load@reload.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-tglb3/igt@i915_module_load@reload.html

  * igt@i915_suspend@sysfs-reader:
    - shard-iclb:         [INCOMPLETE][41] ([i915#1185]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-iclb3/igt@i915_suspend@sysfs-reader.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-iclb5/igt@i915_suspend@sysfs-reader.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          [FAIL][43] ([i915#129]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-skl2/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-skl7/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_color@pipe-c-ctm-green-to-red:
    - shard-skl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46] +10 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-skl10/igt@kms_color@pipe-c-ctm-green-to-red.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-skl9/igt@kms_color@pipe-c-ctm-green-to-red.html

  * igt@kms_concurrent@pipe-b:
    - shard-apl:          [DMESG-WARN][47] ([i915#1635] / [i915#95]) -> [PASS][48] +9 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-apl4/igt@kms_concurrent@pipe-b.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-apl2/igt@kms_concurrent@pipe-b.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +6 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-skl:          [INCOMPLETE][51] ([i915#198]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][53] ([i915#1188]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][55] ([fdo#108145] / [i915#265]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][59] ([i915#69]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][61] ([i915#1542]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-iclb3/igt@perf@blocking-parameterized.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-iclb4/igt@perf@blocking-parameterized.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-skl:          [FAIL][63] ([i915#1755]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-skl7/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-skl2/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [FAIL][65] ([i915#454]) -> [DMESG-FAIL][66] ([i915#1982])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-skl6/igt@i915_pm_dc@dc6-psr.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-skl3/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-apl:          [DMESG-WARN][67] ([i915#1635] / [i915#95]) -> [DMESG-FAIL][68] ([i915#1635] / [i915#54] / [i915#95])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][69] ([i915#180] / [i915#93] / [i915#95]) -> [DMESG-WARN][70] ([i915#93] / [i915#95])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][71], [FAIL][72], [FAIL][73], [FAIL][74]) ([i915#1610] / [i915#1635] / [i915#2110] / [i915#637]) -> [FAIL][75] ([i915#1635] / [i915#2110])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-apl6/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-apl8/igt@runner@aborted.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-apl7/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8731/shard-apl4/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/shard-apl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#637]: https://gitlab.freedesktop.org/drm/intel/issues/637
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8731 -> Patchwork_18138

  CI-20190529: 20190529
  CI_DRM_8731: f88955370bca7351fd1d92420c523e35634d7e69 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5732: 8a50ca9985d2dbb0293186c3286af46468fb4b84 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18138: 77bf559929d92f880cacf1799f7fbbae2c180714 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18138/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
