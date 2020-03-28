Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B41719682C
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2020 18:39:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D3496E14C;
	Sat, 28 Mar 2020 17:39:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5EE356E147;
 Sat, 28 Mar 2020 17:39:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 58D76A00E6;
 Sat, 28 Mar 2020 17:39:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Sat, 28 Mar 2020 17:39:16 -0000
Message-ID: <158541715633.10053.16372394077530833692@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200327213413.166623-1-jose.souza@intel.com>
In-Reply-To: <20200327213413.166623-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/dp=3A_Return_the_right_vsw?=
 =?utf-8?q?ing_tables?=
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

Series: series starting with [1/3] drm/i915/dp: Return the right vswing tables
URL   : https://patchwork.freedesktop.org/series/75183/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8206_full -> Patchwork_17120_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17120_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_ctx_shared@q-independent@vcs0}:
    - shard-iclb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb8/igt@gem_ctx_shared@q-independent@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-iclb1/igt@gem_ctx_shared@q-independent@vcs0.html

  * {igt@gem_ctx_shared@q-independent@vcs1}:
    - shard-iclb:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-iclb1/igt@gem_ctx_shared@q-independent@vcs1.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [PASS][4] -> [FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-hsw2/igt@perf@blocking-parameterized.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-hsw6/igt@perf@blocking-parameterized.html

  
Known issues
------------

  Here are the changes found in Patchwork_17120_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([i915#677]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#109276] / [i915#677])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-skl:          [PASS][10] -> [INCOMPLETE][11] ([i915#1193])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-skl6/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-skl3/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109276]) +17 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#112146]) +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-hsw:          [PASS][16] -> [TIMEOUT][17] ([i915#1526])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-hsw7/igt@i915_pm_rc6_residency@rc6-idle.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-hsw4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([i915#1531])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-tglb2/igt@i915_selftest@live@requests.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-tglb7/igt@i915_selftest@live@requests.html
    - shard-iclb:         [PASS][20] -> [INCOMPLETE][21] ([fdo#109644] / [fdo#110464])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb1/igt@i915_selftest@live@requests.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-iclb8/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][22] -> [DMESG-WARN][23] ([i915#180]) +4 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-apl4/igt@i915_suspend@sysfs-reader.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-apl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180]) +6 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-hsw:          [PASS][26] -> [INCOMPLETE][27] ([i915#61])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-hsw4/igt@kms_flip@flip-vs-suspend.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-hsw5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#34])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-skl1/igt@kms_flip@plain-flip-ts-check.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-skl2/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][30] -> [FAIL][31] ([i915#899])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][32] -> [SKIP][33] ([fdo#109441])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][34] -> [SKIP][35] ([fdo#112080]) +9 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb1/igt@perf_pmu@init-busy-vcs1.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-iclb3/igt@perf_pmu@init-busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][36] ([fdo#112080]) -> [PASS][37] +8 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb3/igt@gem_busy@busy-vcs1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
    - shard-apl:          [DMESG-WARN][38] ([i915#180]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-apl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * {igt@gem_ctx_shared@q-independent@vecs0}:
    - shard-iclb:         [FAIL][40] -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb8/igt@gem_ctx_shared@q-independent@vecs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-iclb1/igt@gem_ctx_shared@q-independent@vecs0.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [SKIP][42] ([fdo#109276] / [i915#677]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb5/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][44] ([fdo#112146]) -> [PASS][45] +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][46] ([i915#716]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-glk8/igt@gen9_exec_parse@allowed-all.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-glk4/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-glk:          [FAIL][48] ([i915#39]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-glk9/igt@i915_pm_rps@min-max-config-loaded.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-glk5/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][50] ([i915#79]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][52] ([i915#180]) -> [PASS][53] +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][54] ([i915#34]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-tglb:         [SKIP][56] ([i915#668]) -> [PASS][57] +8 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-iclb:         [INCOMPLETE][58] ([i915#1185]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-iclb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][60] ([fdo#108145]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][62] ([fdo#109441]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb4/igt@kms_psr@psr2_primary_blt.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][64] ([fdo#109276]) -> [PASS][65] +12 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][66] ([i915#454]) -> [SKIP][67] ([i915#468])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          [FAIL][68] ([fdo#108145]) -> [FAIL][69] ([fdo#108145] / [i915#95])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109644]: https://bugs.freedesktop.org/show_bug.cgi?id=109644
  [fdo#110464]: https://bugs.freedesktop.org/show_bug.cgi?id=110464
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1193]: https://gitlab.freedesktop.org/drm/intel/issues/1193
  [i915#1526]: https://gitlab.freedesktop.org/drm/intel/issues/1526
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8206 -> Patchwork_17120

  CI-20190529: 20190529
  CI_DRM_8206: 584fcbd287863a6ba897f1b671acd7115d611362 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5543: 779d43cda49c230afd32c37730ad853f02e9d749 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17120: 74823ea17853c6c0a0af0e717ede201b293cccab @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
