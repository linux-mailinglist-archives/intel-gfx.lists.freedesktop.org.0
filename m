Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CC17CC367
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Oct 2023 14:42:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E01010E2DD;
	Tue, 17 Oct 2023 12:42:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C253410E2DD;
 Tue, 17 Oct 2023 12:42:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B9A93AADF5;
 Tue, 17 Oct 2023 12:42:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6934203829830667791=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Tue, 17 Oct 2023 12:42:40 -0000
Message-ID: <169754656073.14379.15040591455811908345@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231016145109.2843611-1-jonathan.cavitt@intel.com>
In-Reply-To: <20231016145109.2843611-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Define_and_use_GuC_and_CTB_TLB_invalidation_routines_?=
 =?utf-8?b?KHJldjcp?=
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

--===============6934203829830667791==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Define and use GuC and CTB TLB invalidation routines (rev7)
URL   : https://patchwork.freedesktop.org/series/125177/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13765 -> Patchwork_125177v7
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_125177v7 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_125177v7, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/index.html

Participating hosts (32 -> 31)
------------------------------

  Additional (3): fi-kbl-7567u bat-dg2-8 bat-dg2-9 
  Missing    (4): bat-kbl-2 fi-rkl-11600 fi-snb-2520m fi-elk-e7500 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_125177v7:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@engines@contexts:
    - fi-kbl-x1275:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13765/fi-kbl-x1275/igt@gem_exec_parallel@engines@contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-kbl-x1275/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-cfl-8109u:       NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-cfl-8109u/igt@gem_exec_suspend@basic-s3@smem.html

  
Known issues
------------

  Here are the changes found in Patchwork_125177v7 that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - fi-bsw-n3050:       [FAIL][4] ([i915#8293]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13765/fi-bsw-n3050/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-bsw-n3050/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-adln-1:         NOTRUN -> [SKIP][6] ([i915#9318])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-adln-1/igt@debugfs_test@basic-hwmon.html

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-7567u:       NOTRUN -> [ABORT][7] ([i915#8913])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#2190])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][9] ([fdo#109271]) +18 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html
    - fi-kbl-guc:         NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-kbl-guc/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@basic:
    - bat-dg2-9:          NOTRUN -> [SKIP][12] ([i915#4083])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@gem_mmap@basic.html
    - bat-dg2-8:          NOTRUN -> [SKIP][13] ([i915#4083])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic:
    - bat-dg2-9:          NOTRUN -> [SKIP][14] ([i915#4077]) +2 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@gem_mmap_gtt@basic.html
    - bat-dg2-8:          NOTRUN -> [SKIP][15] ([i915#4077]) +2 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@gem_mmap_gtt@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-dg2-9:          NOTRUN -> [SKIP][16] ([i915#4079]) +1 other test skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-adln-1:         NOTRUN -> [SKIP][17] ([i915#3282])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-adln-1/igt@gem_tiled_pread_basic.html
    - bat-dg2-8:          NOTRUN -> [SKIP][18] ([i915#4079]) +1 other test skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg2-9:          NOTRUN -> [SKIP][19] ([i915#6621])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@i915_pm_rps@basic-api.html
    - bat-dg2-8:          NOTRUN -> [SKIP][20] ([i915#6621])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@i915_pm_rps@basic-api.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-mtlp-8:         NOTRUN -> [SKIP][21] ([i915#6645])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html
    - bat-dg2-8:          NOTRUN -> [SKIP][22] ([i915#6645])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-dg2-9:          NOTRUN -> [SKIP][23] ([i915#5190])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-dg2-8:          NOTRUN -> [SKIP][24] ([i915#5190])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg2-9:          NOTRUN -> [SKIP][25] ([i915#4215] / [i915#5190])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg2-8:          NOTRUN -> [SKIP][26] ([i915#4215] / [i915#5190])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - bat-dg2-9:          NOTRUN -> [SKIP][27] ([i915#4212]) +6 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
    - bat-dg2-8:          NOTRUN -> [SKIP][28] ([i915#4212]) +6 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - bat-dg2-9:          NOTRUN -> [SKIP][29] ([i915#4212] / [i915#5608])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@kms_addfb_basic@tile-pitch-mismatch.html
    - bat-dg2-8:          NOTRUN -> [SKIP][30] ([i915#4212] / [i915#5608])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - bat-adln-1:         NOTRUN -> [SKIP][31] ([i915#4213]) +1 other test skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-adln-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-dg2-9:          NOTRUN -> [SKIP][32] ([i915#4103] / [i915#4213] / [i915#5608]) +1 other test skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][33] ([fdo#109271]) +9 other tests skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-cfl-8109u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-dg2-8:          NOTRUN -> [SKIP][34] ([i915#4103] / [i915#4213] / [i915#5608]) +1 other test skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - fi-kbl-guc:         NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#1845]) +8 other tests skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-kbl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_dsc@dsc-basic:
    - bat-adln-1:         NOTRUN -> [SKIP][36] ([i915#3555] / [i915#3840])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-adln-1/igt@kms_dsc@dsc-basic.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dp5:
    - bat-adlp-11:        [PASS][37] -> [DMESG-WARN][38] ([i915#1982] / [i915#6868])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13765/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp5.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp5.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-adln-1:         NOTRUN -> [SKIP][39] ([fdo#109285])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-adln-1/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg2-9:          NOTRUN -> [SKIP][40] ([fdo#109285])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg2-8:          NOTRUN -> [SKIP][41] ([fdo#109285])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-dg2-9:          NOTRUN -> [SKIP][42] ([i915#5274])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-dg2-8:          NOTRUN -> [SKIP][43] ([i915#5274])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         NOTRUN -> [FAIL][44] ([IGT#3])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][45] ([IGT#3])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-bsw-n3050/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - fi-kbl-guc:         NOTRUN -> [SKIP][46] ([fdo#109271]) +20 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-kbl-guc/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_psr@cursor_plane_move:
    - bat-dg2-8:          NOTRUN -> [SKIP][47] ([i915#1072]) +3 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@kms_psr@cursor_plane_move.html

  * igt@kms_psr@sprite_plane_onoff:
    - bat-dg2-9:          NOTRUN -> [SKIP][48] ([i915#1072]) +3 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-dg2-9:          NOTRUN -> [SKIP][49] ([i915#3555] / [i915#4098])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg2-8:          NOTRUN -> [SKIP][50] ([i915#3555] / [i915#4098])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-dg2-9:          NOTRUN -> [SKIP][51] ([i915#3708])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html
    - bat-dg2-8:          NOTRUN -> [SKIP][52] ([i915#3708])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-dg2-8:          NOTRUN -> [SKIP][53] ([i915#3708] / [i915#4077]) +1 other test skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html
    - bat-dg2-9:          NOTRUN -> [SKIP][54] ([i915#3708] / [i915#4077]) +1 other test skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-write:
    - bat-dg2-9:          NOTRUN -> [SKIP][55] ([i915#3291] / [i915#3708]) +2 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@prime_vgem@basic-write.html
    - bat-dg2-8:          NOTRUN -> [SKIP][56] ([i915#3291] / [i915#3708]) +2 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@gem_basic@bad-close:
    - fi-cfl-8109u:       [INCOMPLETE][57] ([i915#2295]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13765/fi-cfl-8109u/igt@gem_basic@bad-close.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-cfl-8109u/igt@gem_basic@bad-close.html

  * igt@gem_exec_parallel@engines@fds:
    - fi-kbl-guc:         [INCOMPLETE][59] -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13765/fi-kbl-guc/igt@gem_exec_parallel@engines@fds.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-kbl-guc/igt@gem_exec_parallel@engines@fds.html

  * igt@i915_module_load@load:
    - bat-adln-1:         [INCOMPLETE][61] ([i915#9520]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13765/bat-adln-1/igt@i915_module_load@load.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-adln-1/igt@i915_module_load@load.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [ABORT][63] ([i915#9414]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13765/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [ABORT][65] ([i915#8668]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13765/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8913]: https://gitlab.freedesktop.org/drm/intel/issues/8913
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
  [i915#9520]: https://gitlab.freedesktop.org/drm/intel/issues/9520


Build changes
-------------

  * Linux: CI_DRM_13765 -> Patchwork_125177v7

  CI-20190529: 20190529
  CI_DRM_13765: 201c8a7bd1f3f415920a2df4b8a8817e973f42fe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7542: 82d9962e6420c93117e7d2d240be80ca3e0532fb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_125177v7: 201c8a7bd1f3f415920a2df4b8a8817e973f42fe @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

205191ad7a3a drm/i915: Enable GuC TLB invalidations for MTL
97e476345261 drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck
b159121ce3c2 drm/i915: No TLB invalidation on wedged GT
39019e6be83f drm/i915: No TLB invalidation on suspended GT
b7f88057c2fe drm/i915: Define and use GuC and CTB TLB invalidation routines
07a81856bb9c drm/i915/guc: Add CT size delay helper
803b377e35d7 drm/i915: Add GuC TLB Invalidation device info flags

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/index.html

--===============6934203829830667791==
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
<tr><td><b>Series:</b></td><td>drm/i915: Define and use GuC and CTB TLB invalidation routines (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/125177/">https://patchwork.freedesktop.org/series/125177/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13765 -&gt; Patchwork_125177v7</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_125177v7 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_125177v7, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/index.html</p>
<h2>Participating hosts (32 -&gt; 31)</h2>
<p>Additional (3): fi-kbl-7567u bat-dg2-8 bat-dg2-9 <br />
  Missing    (4): bat-kbl-2 fi-rkl-11600 fi-snb-2520m fi-elk-e7500 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_125177v7:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13765/fi-kbl-x1275/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-kbl-x1275/igt@gem_exec_parallel@engines@contexts.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-cfl-8109u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125177v7 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13765/fi-bsw-n3050/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-bsw-n3050/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-adln-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8913">i915#8913</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-kbl-guc/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-adln-1/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +6 other tests skip</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +6 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@kms_addfb_basic@tile-pitch-mismatch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@kms_addfb_basic@tile-pitch-mismatch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-adln-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>) +1 other test skip</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-cfl-8109u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 other tests skip</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-kbl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-adln-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-dp5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13765/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp5.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-adln-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-bsw-n3050/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-kbl-guc/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</p>
</li>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-9/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-dg2-8/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_basic@bad-close:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13765/fi-cfl-8109u/igt@gem_basic@bad-close.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-cfl-8109u/igt@gem_basic@bad-close.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13765/fi-kbl-guc/igt@gem_exec_parallel@engines@fds.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/fi-kbl-guc/igt@gem_exec_parallel@engines@fds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13765/bat-adln-1/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9520">i915#9520</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-adln-1/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13765/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9414">i915#9414</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13765/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125177v7/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13765 -&gt; Patchwork_125177v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13765: 201c8a7bd1f3f415920a2df4b8a8817e973f42fe @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7542: 82d9962e6420c93117e7d2d240be80ca3e0532fb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_125177v7: 201c8a7bd1f3f415920a2df4b8a8817e973f42fe @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>205191ad7a3a drm/i915: Enable GuC TLB invalidations for MTL<br />
97e476345261 drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck<br />
b159121ce3c2 drm/i915: No TLB invalidation on wedged GT<br />
39019e6be83f drm/i915: No TLB invalidation on suspended GT<br />
b7f88057c2fe drm/i915: Define and use GuC and CTB TLB invalidation routines<br />
07a81856bb9c drm/i915/guc: Add CT size delay helper<br />
803b377e35d7 drm/i915: Add GuC TLB Invalidation device info flags</p>

</body>
</html>

--===============6934203829830667791==--
