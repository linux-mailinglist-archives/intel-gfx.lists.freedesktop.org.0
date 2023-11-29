Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 518B07FDC4F
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 17:13:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B83510E631;
	Wed, 29 Nov 2023 16:13:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4AB6910E62A;
 Wed, 29 Nov 2023 16:13:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 43C72A0169;
 Wed, 29 Nov 2023 16:13:48 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1843307083569763007=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Karthik Poosa" <karthik.poosa@intel.com>
Date: Wed, 29 Nov 2023 16:13:48 -0000
Message-ID: <170127442826.12090.11345498936742092213@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231129102555.978644-1-karthik.poosa@intel.com>
In-Reply-To: <20231129102555.978644-1-karthik.poosa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/hwmon=3A_Fix_static_analysis_tool_errors_in_i915_hwmon?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1843307083569763007==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hwmon: Fix static analysis tool errors in i915 hwmon
URL   : https://patchwork.freedesktop.org/series/127034/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13945 -> Patchwork_127034v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/index.html

Participating hosts (37 -> 36)
------------------------------

  Additional (2): fi-bsw-n3050 fi-pnv-d510 
  Missing    (3): bat-kbl-2 bat-dg2-9 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_127034v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-rpls-1:         [PASS][1] -> [FAIL][2] ([fdo#103375]) +1 other test fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-rpls-1/igt@gem_exec_suspend@basic-s0@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-rpls-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_lmem_swapping@basic:
    - fi-pnv-d510:        NOTRUN -> [SKIP][3] ([fdo#109271]) +25 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/fi-pnv-d510/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][4] ([fdo#109271]) +14 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_selftest@live@hangcheck:
    - bat-adls-5:         [PASS][5] -> [DMESG-WARN][6] ([i915#5591])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-adls-5/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-adls-5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-bsw-n3050:       NOTRUN -> [FAIL][7] ([IGT#152])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/fi-bsw-n3050/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][8] -> [ABORT][9] ([i915#8668])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-mtlp-6:         [SKIP][10] ([i915#9741]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@core_hotunplug@unbind-rebind.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_ctx_create@basic-files:
    - bat-mtlp-6:         [SKIP][12] ([i915#2575]) -> [PASS][13] +68 other tests pass
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@gem_ctx_create@basic-files.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@gem_ctx_create@basic-files.html

  * igt@i915_pm_rpm@module-reload:
    - bat-mtlp-6:         [SKIP][14] ([i915#9641]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_pm_rpm@module-reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gem_contexts:
    - bat-mtlp-6:         [DMESG-FAIL][16] ([i915#9579]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-mtlp-6:         [DMESG-FAIL][18] ([i915#7699]) -> [PASS][19] +1 other test pass
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_selftest@live@gt_heartbeat.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@slpc:
    - bat-mtlp-6:         [DMESG-FAIL][20] ([i915#9748]) -> [PASS][21] +35 other tests pass
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_selftest@live@slpc.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@i915_selftest@live@slpc.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-mtlp-6:         [DMESG-WARN][22] ([i915#9748]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_suspend@basic-s2idle-without-i915.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@i915_suspend@basic-s2idle-without-i915.html

  * {igt@kms_pm_rpm@basic-pci-d3-state}:
    - bat-mtlp-6:         [SKIP][24] ([i915#9710]) -> [PASS][25] +1 other test pass
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html

  
#### Warnings ####

  * igt@debugfs_test@basic-hwmon:
    - bat-mtlp-6:         [SKIP][26] ([i915#2575]) -> [SKIP][27] ([i915#9318])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-mtlp-6:         [SKIP][28] ([i915#9643]) -> [SKIP][29] ([i915#4613]) +3 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@basic:
    - bat-mtlp-6:         [SKIP][30] ([i915#2575]) -> [SKIP][31] ([i915#4083])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@gem_mmap@basic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@gem_mmap@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-mtlp-6:         [SKIP][32] ([i915#2575]) -> [SKIP][33] ([i915#4077]) +2 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@gem_tiled_blits@basic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-mtlp-6:         [SKIP][34] ([i915#2575]) -> [SKIP][35] ([i915#4079]) +1 other test skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@gem_tiled_pread_basic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-mtlp-6:         [SKIP][36] ([i915#2575]) -> [SKIP][37] ([i915#6621])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_pm_rps@basic-api.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@i915_pm_rps@basic-api.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - bat-mtlp-6:         [SKIP][38] ([i915#2575]) -> [SKIP][39] ([i915#4212]) +8 other tests skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-mtlp-6:         [SKIP][40] ([i915#2575]) -> [SKIP][41] ([i915#5190])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - bat-mtlp-6:         [SKIP][42] ([i915#2575]) -> [SKIP][43] ([i915#1845]) +12 other tests skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - bat-mtlp-6:         [SKIP][44] ([i915#2575]) -> [SKIP][45] ([i915#3637]) +3 other tests skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_flip@basic-flip-vs-dpms.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-mtlp-6:         [SKIP][46] ([i915#2575]) -> [SKIP][47] ([fdo#109285])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-mtlp-6:         [SKIP][48] ([i915#2575]) -> [SKIP][49] ([i915#5274])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-mtlp-6:         [SKIP][50] ([i915#2575]) -> [SKIP][51] ([i915#4342] / [i915#5354])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-mtlp-6:         [SKIP][52] ([i915#2575]) -> [SKIP][53] ([i915#1845] / [i915#4078]) +4 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-mtlp-6:         [SKIP][54] ([i915#2575]) -> [SKIP][55] ([i915#3555] / [i915#8809])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-mtlp-6:         [SKIP][56] ([i915#2575]) -> [SKIP][57] ([i915#1845] / [i915#3708])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-mtlp-6:         [SKIP][58] ([i915#2575]) -> [SKIP][59] ([i915#3708] / [i915#4077]) +1 other test skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-write:
    - bat-mtlp-6:         [SKIP][60] ([i915#2575]) -> [SKIP][61] ([i915#3708]) +2 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@prime_vgem@basic-write.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@prime_vgem@basic-write.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#152]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/152
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9579]: https://gitlab.freedesktop.org/drm/intel/issues/9579
  [i915#9641]: https://gitlab.freedesktop.org/drm/intel/issues/9641
  [i915#9643]: https://gitlab.freedesktop.org/drm/intel/issues/9643
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9710]: https://gitlab.freedesktop.org/drm/intel/issues/9710
  [i915#9736]: https://gitlab.freedesktop.org/drm/intel/issues/9736
  [i915#9741]: https://gitlab.freedesktop.org/drm/intel/issues/9741
  [i915#9748]: https://gitlab.freedesktop.org/drm/intel/issues/9748


Build changes
-------------

  * Linux: CI_DRM_13945 -> Patchwork_127034v1

  CI-20190529: 20190529
  CI_DRM_13945: bd217b949594a93bbb922958e0c26cfe6884cc7b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7609: 72a759595100b8d167ca78cd2d62e9acd97e36bf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127034v1: bd217b949594a93bbb922958e0c26cfe6884cc7b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4afa0caa6857 drm/i915/hwmon: Fix static analysis tool errors in i915 hwmon

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/index.html

--===============1843307083569763007==
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
<tr><td><b>Series:</b></td><td>drm/i915/hwmon: Fix static analysis tool errors in i915 hwmon</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/127034/">https://patchwork.freedesktop.org/series/127034/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13945 -&gt; Patchwork_127034v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Additional (2): fi-bsw-n3050 fi-pnv-d510 <br />
  Missing    (3): bat-kbl-2 bat-dg2-9 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127034v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-rpls-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-rpls-1/igt@gem_exec_suspend@basic-s0@smem.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/fi-pnv-d510/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-adls-5/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-adls-5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/fi-bsw-n3050/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/152">IGT#152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@core_hotunplug@unbind-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9741">i915#9741</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@gem_ctx_create@basic-files.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@gem_ctx_create@basic-files.html">PASS</a> +68 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9641">i915#9641</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9579">i915#9579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9748">i915#9748</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@i915_selftest@live@slpc.html">PASS</a> +35 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9748">i915#9748</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@basic-pci-d3-state}:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9710">i915#9710</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9643">i915#9643</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4342">i915#4342</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127034v1/bat-mtlp-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13945 -&gt; Patchwork_127034v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13945: bd217b949594a93bbb922958e0c26cfe6884cc7b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7609: 72a759595100b8d167ca78cd2d62e9acd97e36bf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127034v1: bd217b949594a93bbb922958e0c26cfe6884cc7b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4afa0caa6857 drm/i915/hwmon: Fix static analysis tool errors in i915 hwmon</p>

</body>
</html>

--===============1843307083569763007==--
