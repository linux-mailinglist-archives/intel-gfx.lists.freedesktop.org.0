Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E791B2E7F
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 19:43:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CE7D6E30C;
	Tue, 21 Apr 2020 17:43:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9640B6E303;
 Tue, 21 Apr 2020 17:43:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8F364A0BA8;
 Tue, 21 Apr 2020 17:43:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Tue, 21 Apr 2020 17:43:27 -0000
Message-ID: <158749100755.17663.8835066807756320341@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200421104626.1480208-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200421104626.1480208-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/24=5D_perf/core=3A_Only_copy-to-user_af?=
 =?utf-8?q?ter_completely_unlocking_all_locks=2C_v3=2E?=
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

Series: series starting with [01/24] perf/core: Only copy-to-user after completely unlocking all locks, v3.
URL   : https://patchwork.freedesktop.org/series/76255/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8342_full -> Patchwork_17402_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17402_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17402_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17402_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close@many-handles-one-vma:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-glk5/igt@gem_close@many-handles-one-vma.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-glk5/igt@gem_close@many-handles-one-vma.html
    - shard-apl:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-apl2/igt@gem_close@many-handles-one-vma.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-apl6/igt@gem_close@many-handles-one-vma.html
    - shard-skl:          [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-skl5/igt@gem_close@many-handles-one-vma.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-skl10/igt@gem_close@many-handles-one-vma.html
    - shard-tglb:         [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-tglb7/igt@gem_close@many-handles-one-vma.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-tglb6/igt@gem_close@many-handles-one-vma.html
    - shard-kbl:          [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-kbl3/igt@gem_close@many-handles-one-vma.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-kbl4/igt@gem_close@many-handles-one-vma.html
    - shard-hsw:          [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-hsw2/igt@gem_close@many-handles-one-vma.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-hsw2/igt@gem_close@many-handles-one-vma.html
    - shard-snb:          [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-snb1/igt@gem_close@many-handles-one-vma.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-snb4/igt@gem_close@many-handles-one-vma.html
    - shard-iclb:         [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-iclb2/igt@gem_close@many-handles-one-vma.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-iclb4/igt@gem_close@many-handles-one-vma.html

  * igt@i915_selftest@live@gt_pm:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-kbl3/igt@i915_selftest@live@gt_pm.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-kbl3/igt@i915_selftest@live@gt_pm.html
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-apl7/igt@i915_selftest@live@gt_pm.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-apl7/igt@i915_selftest@live@gt_pm.html
    - shard-glk:          [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-glk2/igt@i915_selftest@live@gt_pm.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-glk9/igt@i915_selftest@live@gt_pm.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_reloc@basic-parallel}:
    - shard-kbl:          [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-kbl4/igt@gem_exec_reloc@basic-parallel.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-kbl2/igt@gem_exec_reloc@basic-parallel.html
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-tglb2/igt@gem_exec_reloc@basic-parallel.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-tglb3/igt@gem_exec_reloc@basic-parallel.html
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-skl7/igt@gem_exec_reloc@basic-parallel.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-skl7/igt@gem_exec_reloc@basic-parallel.html
    - shard-apl:          [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-apl1/igt@gem_exec_reloc@basic-parallel.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-apl2/igt@gem_exec_reloc@basic-parallel.html
    - shard-iclb:         [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-iclb4/igt@gem_exec_reloc@basic-parallel.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-iclb3/igt@gem_exec_reloc@basic-parallel.html

  
Known issues
------------

  Here are the changes found in Patchwork_17402_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-apl4/igt@gem_workarounds@suspend-resume-fd.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-apl2/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@live@gtt:
    - shard-snb:          [PASS][35] -> [FAIL][36] ([i915#1763])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-snb1/igt@i915_selftest@live@gtt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-snb4/igt@i915_selftest@live@gtt.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [PASS][37] -> [INCOMPLETE][38] ([i915#1531] / [i915#1658])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-tglb8/igt@i915_selftest@live@requests.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-tglb2/igt@i915_selftest@live@requests.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-kbl:          [PASS][39] -> [FAIL][40] ([i915#1119] / [i915#93] / [i915#95])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-kbl3/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-kbl2/igt@kms_big_fb@linear-32bpp-rotate-0.html
    - shard-apl:          [PASS][41] -> [FAIL][42] ([i915#1119] / [i915#95])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-apl8/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-apl4/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109349])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109441])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#31])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-skl10/igt@kms_setmode@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-skl5/igt@kms_setmode@basic.html
    - shard-hsw:          [PASS][51] -> [FAIL][52] ([i915#31])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-hsw1/igt@kms_setmode@basic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-hsw2/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@vecs0}:
    - shard-skl:          [INCOMPLETE][53] ([i915#198]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-skl2/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-skl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [FAIL][55] ([i915#1277]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-tglb7/igt@gem_exec_balancer@hang.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-tglb7/igt@gem_exec_balancer@hang.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-apl6/igt@i915_suspend@fence-restore-untiled.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-apl4/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:
    - shard-snb:          [SKIP][59] ([fdo#109271]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-snb1/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge:
    - shard-glk:          [FAIL][61] ([i915#118] / [i915#70] / [i915#95]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-glk8/igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-glk8/igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge.html

  * {igt@kms_flip@blocking-wf_vblank@c-edp1}:
    - shard-skl:          [FAIL][63] ([i915#34]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-skl5/igt@kms_flip@blocking-wf_vblank@c-edp1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-skl10/igt@kms_flip@blocking-wf_vblank@c-edp1.html

  * {igt@kms_flip@flip-vs-expired-vblank@a-edp1}:
    - shard-skl:          [FAIL][65] ([i915#79]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][69] ([fdo#108145] / [i915#265]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-hsw:          [INCOMPLETE][73] ([i915#61]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-hsw8/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-hsw7/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * {igt@sysfs_heartbeat_interval@mixed@vecs0}:
    - shard-skl:          [INCOMPLETE][75] ([i915#1532]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-skl6/igt@sysfs_heartbeat_interval@mixed@vecs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-skl3/igt@sysfs_heartbeat_interval@mixed@vecs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][77] ([i915#454]) -> [SKIP][78] ([i915#468])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-tglb1/igt@i915_pm_dc@dc6-dpms.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1532]: https://gitlab.freedesktop.org/drm/intel/issues/1532
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1658]: https://gitlab.freedesktop.org/drm/intel/issues/1658
  [i915#1763]: https://gitlab.freedesktop.org/drm/intel/issues/1763
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8342 -> Patchwork_17402

  CI-20190529: 20190529
  CI_DRM_8342: 17407a9f61a0ee402254522e391a626acc4375ec @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17402: 4d754b4bc0dcd643a49abffd0971d3c2d798f6ae @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
