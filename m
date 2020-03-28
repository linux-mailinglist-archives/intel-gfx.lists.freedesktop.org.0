Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70434196847
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2020 19:03:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 725136E147;
	Sat, 28 Mar 2020 18:03:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7BE9F6E141;
 Sat, 28 Mar 2020 18:03:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 735B5A0118;
 Sat, 28 Mar 2020 18:03:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ashutosh Dixit" <ashutosh.dixit@intel.com>
Date: Sat, 28 Mar 2020 18:03:18 -0000
Message-ID: <158541859844.10054.4638222449596122546@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200327231608.68108-1-ashutosh.dixit@intel.com>
In-Reply-To: <20200327231608.68108-1-ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_Do_not_clear_pollin_for_small_user_read_buffers_?=
 =?utf-8?b?KHJldjQp?=
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

Series: drm/i915/perf: Do not clear pollin for small user read buffers (rev4)
URL   : https://patchwork.freedesktop.org/series/75085/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8206_full -> Patchwork_17121_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17121_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_ctx_shared@q-independent@vcs0}:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-tglb6/igt@gem_ctx_shared@q-independent@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-tglb8/igt@gem_ctx_shared@q-independent@vcs0.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-hsw2/igt@perf@blocking-parameterized.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-hsw8/igt@perf@blocking-parameterized.html

  
Known issues
------------

  Here are the changes found in Patchwork_17121_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [i915#677]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +7 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-iclb3/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb7/igt@gem_exec_schedule@preempt-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-iclb2/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_exec_store@pages-vcs1:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112080]) +6 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb1/igt@gem_exec_store@pages-vcs1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-iclb3/igt@gem_exec_store@pages-vcs1.html

  * igt@gem_reg_read@timestamp-monotonic:
    - shard-hsw:          [PASS][15] -> [INCOMPLETE][16] ([i915#61])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-hsw4/igt@gem_reg_read@timestamp-monotonic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-hsw4/igt@gem_reg_read@timestamp-monotonic.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#72])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109349])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180] / [i915#93] / [i915#95])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#899])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
    - shard-apl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-apl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][35] ([i915#677]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][37] ([fdo#112146]) -> [PASS][38] +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][39] ([i915#716]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-glk8/igt@gen9_exec_parse@allowed-all.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-glk:          [FAIL][41] ([i915#39]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-glk9/igt@i915_pm_rps@min-max-config-loaded.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-glk2/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-kbl7/igt@i915_suspend@sysfs-reader.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-kbl3/igt@i915_suspend@sysfs-reader.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled:
    - shard-skl:          [FAIL][45] ([i915#52] / [i915#54]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][47] ([i915#79]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][49] ([i915#34]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-tglb:         [SKIP][51] ([i915#668]) -> [PASS][52] +8 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-iclb:         [INCOMPLETE][53] ([i915#1185]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-iclb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][55] ([fdo#108145]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf_pmu@busy-double-start-vcs1:
    - shard-iclb:         [SKIP][59] ([fdo#112080]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb8/igt@perf_pmu@busy-double-start-vcs1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-iclb1/igt@perf_pmu@busy-double-start-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][61] ([fdo#109276]) -> [PASS][62] +8 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb7/igt@prime_busy@hang-bsd2.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][63] ([i915#454]) -> [SKIP][64] ([i915#468])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          [FAIL][65] ([fdo#108145]) -> [FAIL][66] ([fdo#108145] / [i915#95])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8206 -> Patchwork_17121

  CI-20190529: 20190529
  CI_DRM_8206: 584fcbd287863a6ba897f1b671acd7115d611362 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5543: 779d43cda49c230afd32c37730ad853f02e9d749 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17121: 629368ea252e2101ef3c1b5deb7bd0554f4a4ad9 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17121/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
