Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AD511EE7F
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Dec 2019 00:27:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9A766EE0F;
	Fri, 13 Dec 2019 23:27:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2A9EE6EE0F;
 Fri, 13 Dec 2019 23:27:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2176FA0075;
 Fri, 13 Dec 2019 23:27:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Venkata Sandeep Dhanalakota" <venkata.s.dhanalakota@intel.com>
Date: Fri, 13 Dec 2019 23:27:29 -0000
Message-ID: <157627964913.23798.4449957971932838352@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213091239.67408-1-venkata.s.dhanalakota@intel.com>
In-Reply-To: <20191213091239.67408-1-venkata.s.dhanalakota@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/perf=3A_Register_sysctl_pa?=
 =?utf-8?q?th_globally?=
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

Series: series starting with [1/2] drm/i915/perf: Register sysctl path globally
URL   : https://patchwork.freedesktop.org/series/70871/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7556_full -> Patchwork_15738_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15738_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15738_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15738_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-iclb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-iclb1/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-iclb3/igt@gem_ctx_persistence@bcs0-mixed-process.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gen9_exec_parse@allowed-all}:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-glk3/igt@gen9_exec_parse@allowed-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-glk3/igt@gen9_exec_parse@allowed-all.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-iclb:         NOTRUN -> [SKIP][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-iclb6/igt@gen9_exec_parse@allowed-single.html

  * {igt@gen9_exec_parse@basic-rejected-ctx-param}:
    - shard-tglb:         NOTRUN -> [SKIP][6] +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-tglb4/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_gpu_shader5@texturegatheroffset@fs-rgba-3-unorm-2drect:
    - pig-hsw-4770r:      NOTRUN -> [FAIL][7] +236 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/pig-hsw-4770r/spec@arb_gpu_shader5@texturegatheroffset@fs-rgba-3-unorm-2drect.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7556_full and Patchwork_15738_full:

### New Piglit tests (24) ###

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-uint-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [5.04] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-uint-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.63] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-uint-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.60] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-uint-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.69] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-1-uint-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [4.96] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-1-uint-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.62] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-1-uint-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.73] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-1-uint-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.68] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-2-uint-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [4.97] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-2-uint-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.66] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-2-uint-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.78] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-2-uint-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.76] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgb-0-uint-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [6.95] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgb-0-uint-2drect-const:
    - Statuses : 1 fail(s)
    - Exec time: [7.03] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgb-2-uint-2d-const:
    - Statuses : 1 fail(s)
    - Exec time: [11.19] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgb-0-uint-2d:
    - Statuses : 1 fail(s)
    - Exec time: [10.49] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgb-0-uint-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [6.98] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgb-1-uint-2d:
    - Statuses : 1 fail(s)
    - Exec time: [10.33] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgb-1-uint-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [6.91] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgb-2-uint-2d:
    - Statuses : 1 fail(s)
    - Exec time: [10.43] s

  * spec@arb_occlusion_query@occlusion_query:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_sample_shading@builtin-gl-sample-mask-simple 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.24] s

  * spec@ext_texture_srgb@texwrap formats offset:
    - Statuses : 1 fail(s)
    - Exec time: [5.29] s

  * spec@glsl-4.10@execution@vs_in@vs-input-double_double_array5-float_float-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  

Known issues
------------

  Here are the changes found in Patchwork_15738_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#112080]) +4 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-iclb3/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [PASS][10] -> [DMESG-WARN][11] ([i915#180]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][14] -> [DMESG-WARN][15] ([i915#444])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-snb2/igt@gem_eio@kms.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-snb1/igt@gem_eio@kms.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [PASS][16] -> [INCOMPLETE][17] ([fdo#108838] / [i915#435])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-tglb9/igt@gem_exec_create@forked.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-tglb4/igt@gem_exec_create@forked.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([fdo#112146]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-iclb3/igt@gem_exec_schedule@in-order-bsd.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#644])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-snb:          [PASS][22] -> [DMESG-WARN][23] ([fdo#111870])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-snb1/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-tglb:         [PASS][24] -> [INCOMPLETE][25] ([i915#456] / [i915#460])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-tglb3/igt@gem_workarounds@suspend-resume-context.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-tglb1/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#454])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [PASS][28] -> [DMESG-WARN][29] ([i915#747])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-skl6/igt@i915_selftest@mock_sanitycheck.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-skl2/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_cursor_crc@pipe-a-cursor-size-change:
    - shard-iclb:         [PASS][30] -> [FAIL][31] ([i915#54])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-size-change.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-iclb3/igt@kms_cursor_crc@pipe-a-cursor-size-change.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180]) +6 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [PASS][34] -> [FAIL][35] ([i915#49]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-kbl:          [PASS][36] -> [INCOMPLETE][37] ([fdo#103665] / [i915#648] / [i915#667])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-kbl3/igt@kms_plane@pixel-format-pipe-a-planes.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-kbl7/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [PASS][38] -> [INCOMPLETE][39] ([i915#648] / [i915#667])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-skl4/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-skl3/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][40] -> [SKIP][41] ([fdo#109276]) +7 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][42] ([i915#180]) -> [PASS][43] +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][44] ([fdo#109276] / [fdo#112080]) -> [PASS][45] +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-iclb3/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][46] ([fdo#110841]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@bonded-slice:
    - shard-kbl:          [FAIL][48] ([i915#800]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-kbl4/igt@gem_exec_balancer@bonded-slice.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-kbl1/igt@gem_exec_balancer@bonded-slice.html

  * igt@gem_exec_basic@readonly-vcs1:
    - shard-iclb:         [SKIP][50] ([fdo#112080]) -> [PASS][51] +3 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-iclb3/igt@gem_exec_basic@readonly-vcs1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-iclb4/igt@gem_exec_basic@readonly-vcs1.html

  * igt@gem_exec_parallel@bcs0-contexts:
    - shard-glk:          [DMESG-WARN][52] ([i915#118] / [i915#95]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-glk4/igt@gem_exec_parallel@bcs0-contexts.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-glk3/igt@gem_exec_parallel@bcs0-contexts.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd:
    - shard-iclb:         [SKIP][54] ([fdo#112146]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-bsd.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-iclb3/igt@gem_exec_schedule@preempt-queue-contexts-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox:
    - shard-tglb:         [INCOMPLETE][56] ([fdo#111606] / [fdo#111677]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-tglb1/igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-iclb:         [SKIP][58] ([fdo#109276]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-iclb8/igt@gem_exec_schedule@smoketest-bsd1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-iclb4/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-apl:          [TIMEOUT][60] ([i915#530]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-hsw:          [INCOMPLETE][62] ([i915#530] / [i915#61]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-hsw4/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-hsw4/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][64] ([i915#69]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-skl4/igt@gem_softpin@noreloc-s3.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-skl3/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [INCOMPLETE][66] ([i915#472] / [i915#707]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-tglb8/igt@gem_sync@basic-many-each.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-tglb6/igt@gem_sync@basic-many-each.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][68] -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-hsw4/igt@gem_tiled_blits@interruptible.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-hsw4/igt@gem_tiled_blits@interruptible.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-snb:          [DMESG-WARN][70] ([fdo#111870]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-snb5/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-snb1/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-skl:          [DMESG-WARN][72] -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-skl8/igt@gen9_exec_parse@allowed-single.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-skl5/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-hsw:          [DMESG-WARN][74] ([i915#747]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-hsw2/igt@i915_selftest@mock_sanitycheck.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-hsw8/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@debugfs-reader:
    - shard-tglb:         [INCOMPLETE][76] ([i915#456] / [i915#460]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-tglb5/igt@i915_suspend@debugfs-reader.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-tglb9/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-skl:          [FAIL][78] ([i915#54]) -> [PASS][79] +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-render-ytiled:
    - shard-skl:          [INCOMPLETE][80] ([i915#667]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-kbl:          [INCOMPLETE][82] ([fdo#103665] / [i915#667]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:
    - shard-tglb:         [INCOMPLETE][84] ([i915#435] / [i915#474] / [i915#667]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][86] ([fdo#112347] / [i915#648] / [i915#667]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-skl4/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-skl2/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][88] ([i915#180]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-iclb:         [INCOMPLETE][90] ([i915#140] / [i915#250]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-iclb1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-iclb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][92] ([fdo#108145]) -> [PASS][93] +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@perf@sysctl-defaults:
    - shard-snb:          [SKIP][94] ([fdo#109271]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-snb6/igt@perf@sysctl-defaults.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-snb2/igt@perf@sysctl-defaults.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-clean:
    - shard-tglb:         [SKIP][96] ([fdo#112080]) -> [SKIP][97] ([fdo#111912] / [fdo#112080])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-tglb9/igt@gem_ctx_isolation@vcs2-clean.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-tglb4/igt@gem_ctx_isolation@vcs2-clean.html

  * igt@kms_atomic_transition@6x-modeset-transitions:
    - shard-tglb:         [SKIP][98] ([fdo#112021]) -> [SKIP][99] ([fdo#112016] / [fdo#112021])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-tglb4/igt@kms_atomic_transition@6x-modeset-transitions.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][100] ([fdo#112347] / [i915#648] / [i915#667]) -> [INCOMPLETE][101] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-skl3/igt@kms_plane@pixel-format-pipe-b-planes.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-skl10/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@runner@aborted:
    - shard-skl:          [FAIL][102] ([i915#69]) -> [FAIL][103] ([i915#69] / [k.org#204565])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7556/shard-skl8/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/shard-skl2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#800]: https://gitlab.freedesktop.org/drm/intel/issues/800
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7556 -> Patchwork_15738

  CI-20190529: 20190529
  CI_DRM_7556: cf70b6f71886f9ca726093db29be61264cb031b6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5348: 91983e0f209738ddae7931f71803566eb1dcb9e0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15738: a35b4a55e2aa74abc9c9a60d9d77de332db29594 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15738/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
