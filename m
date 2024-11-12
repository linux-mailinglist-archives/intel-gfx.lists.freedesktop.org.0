Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F7F9C4F9D
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 08:39:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B62DF10E57E;
	Tue, 12 Nov 2024 07:39:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59A6810E57C;
 Tue, 12 Nov 2024 07:39:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1963999837401957606=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_cpufreq=3A_intel=5Fpstate?=
 =?utf-8?q?=3A_Rearrange_locking_in_hybrid=5Finit=5Fcpu=5Fcapacity=5Fscaling?=
 =?utf-8?q?=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chaitanya Kumar Borah" <chaitanya.kumar.borah@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Nov 2024 07:39:39 -0000
Message-ID: <173139717935.2906242.11924093055851888762@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241112064938.1332287-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20241112064938.1332287-1-chaitanya.kumar.borah@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1963999837401957606==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: cpufreq: intel_pstate: Rearrange locking in hybrid_init_cpu_capacity_scaling()
URL   : https://patchwork.freedesktop.org/series/141196/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15675 -> Patchwork_141196v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/index.html

Participating hosts (44 -> 45)
------------------------------

  Additional (2): fi-skl-6600u fi-kbl-8809g 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_141196v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-arls-5:         NOTRUN -> [SKIP][1] ([i915#9318])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@debugfs_test@basic-hwmon.html
    - bat-arlh-2:         NOTRUN -> [SKIP][2] ([i915#11346] / [i915#9318])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@debugfs_test@basic-hwmon.html
    - bat-arlh-3:         NOTRUN -> [SKIP][3] ([i915#9318])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@debugfs_test@basic-hwmon.html

  * igt@fbdev@eof:
    - bat-arls-5:         NOTRUN -> [SKIP][4] ([i915#11191] / [i915#11345]) +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@fbdev@eof.html
    - bat-arlh-2:         NOTRUN -> [SKIP][5] ([i915#11345] / [i915#11346]) +3 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@fbdev@eof.html

  * igt@fbdev@info:
    - bat-arlh-2:         NOTRUN -> [SKIP][6] ([i915#11346] / [i915#1849])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@fbdev@info.html
    - bat-arls-5:         NOTRUN -> [SKIP][7] ([i915#1849])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@fbdev@info.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][8] ([i915#2190])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html
    - fi-skl-6600u:       NOTRUN -> [SKIP][9] ([i915#2190])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - bat-arls-5:         NOTRUN -> [SKIP][10] ([i915#10213] / [i915#11671]) +3 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@gem_lmem_swapping@basic.html
    - bat-arlh-2:         NOTRUN -> [SKIP][11] ([i915#10213] / [i915#11346] / [i915#11671]) +3 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-arlh-3:         NOTRUN -> [SKIP][12] ([i915#11671]) +3 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@gem_lmem_swapping@parallel-random-engines.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][13] ([i915#4613]) +3 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/fi-kbl-8809g/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-skl-6600u:       NOTRUN -> [SKIP][14] ([i915#4613]) +3 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_mmap@basic:
    - bat-arlh-3:         NOTRUN -> [SKIP][15] ([i915#11343])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@gem_mmap@basic.html
    - bat-arls-5:         NOTRUN -> [SKIP][16] ([i915#11343] / [i915#4083])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@gem_mmap@basic.html
    - bat-arlh-2:         NOTRUN -> [SKIP][17] ([i915#11343] / [i915#11346])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@gem_mmap@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-arls-5:         NOTRUN -> [SKIP][18] ([i915#10197] / [i915#10211] / [i915#4079])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@gem_render_tiled_blits@basic.html
    - bat-arlh-2:         NOTRUN -> [SKIP][19] ([i915#10197] / [i915#10211] / [i915#11346] / [i915#11725])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@gem_render_tiled_blits@basic.html
    - bat-arlh-3:         NOTRUN -> [SKIP][20] ([i915#10211] / [i915#11725])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-arls-5:         NOTRUN -> [SKIP][21] ([i915#12637] / [i915#4077]) +2 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@gem_tiled_blits@basic.html
    - bat-arlh-2:         NOTRUN -> [SKIP][22] ([i915#11346] / [i915#12637]) +4 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-arls-5:         NOTRUN -> [SKIP][23] ([i915#10206] / [i915#4079])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@gem_tiled_pread_basic.html
    - bat-arlh-2:         NOTRUN -> [SKIP][24] ([i915#10206] / [i915#11346] / [i915#11724])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@gem_tiled_pread_basic.html
    - bat-arlh-3:         NOTRUN -> [SKIP][25] ([i915#11724])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-arlh-3:         NOTRUN -> [SKIP][26] ([i915#11681])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@i915_pm_rps@basic-api.html
    - bat-arls-5:         NOTRUN -> [SKIP][27] ([i915#10209] / [i915#11681])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@i915_pm_rps@basic-api.html
    - bat-arlh-2:         NOTRUN -> [SKIP][28] ([i915#10209] / [i915#11346] / [i915#11681])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live:
    - bat-arlh-3:         NOTRUN -> [ABORT][29] ([i915#10341])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-arls-5:         NOTRUN -> [DMESG-WARN][30] ([i915#12727]) +33 other tests dmesg-warn
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@sanitycheck:
    - bat-arls-5:         NOTRUN -> [DMESG-WARN][31] ([i915#10341]) +5 other tests dmesg-warn
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         NOTRUN -> [ABORT][32] ([i915#12061])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-arls-5:         NOTRUN -> [DMESG-WARN][33] ([i915#10341] / [i915#12727]) +1 other test dmesg-warn
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-arlh-3:         NOTRUN -> [SKIP][34] ([i915#11666] / [i915#12203])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-arls-5:         NOTRUN -> [SKIP][35] ([i915#10200] / [i915#12203])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-arlh-2:         NOTRUN -> [SKIP][36] ([i915#10200] / [i915#11346] / [i915#11666] / [i915#12203])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - bat-arlh-2:         NOTRUN -> [SKIP][37] ([i915#10200] / [i915#11346] / [i915#11666]) +8 other tests skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - bat-arlh-3:         NOTRUN -> [SKIP][38] ([i915#11666]) +8 other tests skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - bat-arls-5:         NOTRUN -> [SKIP][39] ([i915#10200]) +8 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-arlh-3:         NOTRUN -> [SKIP][40] ([i915#11731]) +1 other test skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][41] +30 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/fi-kbl-8809g/igt@kms_dsc@dsc-basic.html
    - bat-arls-5:         NOTRUN -> [SKIP][42] ([i915#12732]) +16 other tests skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@kms_dsc@dsc-basic.html
    - fi-skl-6600u:       NOTRUN -> [SKIP][43] +9 other tests skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/fi-skl-6600u/igt@kms_dsc@dsc-basic.html
    - bat-arlh-3:         NOTRUN -> [SKIP][44] ([i915#9886])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@kms_dsc@dsc-basic.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - bat-arls-5:         NOTRUN -> [SKIP][45] ([i915#3637]) +3 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-arlh-3:         NOTRUN -> [SKIP][46] ([i915#10207])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@kms_force_connector_basic@force-load-detect.html
    - bat-arls-5:         NOTRUN -> [SKIP][47] ([i915#10207])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-arlh-3:         NOTRUN -> [SKIP][48] ([i915#12648])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-arls-5:         NOTRUN -> [SKIP][49] ([i915#4342] / [i915#5354])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-arls-5:         NOTRUN -> [SKIP][50] ([i915#9812])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_psr@psr-primary-page-flip:
    - bat-arls-5:         NOTRUN -> [SKIP][51] ([i915#9732]) +3 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@kms_psr@psr-primary-page-flip.html
    - bat-arlh-2:         NOTRUN -> [SKIP][52] ([i915#11346]) +32 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@kms_psr@psr-primary-page-flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-arls-5:         NOTRUN -> [SKIP][53] ([i915#10208] / [i915#8809])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-arlh-2:         NOTRUN -> [SKIP][54] ([i915#10208] / [i915#11346] / [i915#8809])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-arlh-3:         NOTRUN -> [SKIP][55] ([i915#8809])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-arls-5:         NOTRUN -> [SKIP][56] ([i915#12732] / [i915#3708])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-arlh-3:         NOTRUN -> [SKIP][57] ([i915#12637]) +6 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - bat-arls-5:         NOTRUN -> [SKIP][58] ([i915#10212] / [i915#3708])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@prime_vgem@basic-fence-read.html
    - bat-arlh-2:         NOTRUN -> [SKIP][59] ([i915#10212] / [i915#11346] / [i915#11726])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@prime_vgem@basic-fence-read.html
    - bat-arlh-3:         NOTRUN -> [SKIP][60] ([i915#11726]) +1 other test skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - bat-arls-5:         NOTRUN -> [SKIP][61] ([i915#12637] / [i915#3708] / [i915#4077]) +1 other test skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - bat-arls-5:         NOTRUN -> [SKIP][62] ([i915#10214] / [i915#3708])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@prime_vgem@basic-read.html
    - bat-arlh-2:         NOTRUN -> [SKIP][63] ([i915#10214] / [i915#11346] / [i915#11726])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - bat-arlh-3:         NOTRUN -> [SKIP][64] ([i915#11723])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@prime_vgem@basic-write.html
    - bat-arls-5:         NOTRUN -> [SKIP][65] ([i915#10216] / [i915#3708])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@prime_vgem@basic-write.html
    - bat-arlh-2:         NOTRUN -> [SKIP][66] ([i915#10216] / [i915#11346] / [i915#11723])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-kbl-7567u:       [DMESG-WARN][67] ([i915#11621] / [i915#180] / [i915#1982]) -> [PASS][68] +1 other test pass
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15675/fi-kbl-7567u/igt@i915_module_load@reload.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/fi-kbl-7567u/igt@i915_module_load@reload.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [ABORT][69] ([i915#12061]) -> [PASS][70] +1 other test pass
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15675/bat-mtlp-8/igt@i915_selftest@live.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7567u:       [DMESG-WARN][71] ([i915#11621]) -> [PASS][72] +81 other tests pass
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15675/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [ABORT][73] ([i915#12061]) -> [PASS][74] +1 other test pass
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15675/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-7567u:       [DMESG-WARN][75] ([i915#180]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15675/fi-kbl-7567u/igt@kms_busy@basic@flip.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/fi-kbl-7567u/igt@kms_busy@basic@flip.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-7567u:       [DMESG-WARN][77] ([i915#11621] / [i915#180]) -> [PASS][78] +50 other tests pass
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15675/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197
  [i915#10200]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200
  [i915#10202]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10202
  [i915#10206]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206
  [i915#10207]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10207
  [i915#10208]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208
  [i915#10209]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209
  [i915#10211]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211
  [i915#10212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214
  [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#11191]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11191
  [i915#11343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343
  [i915#11345]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345
  [i915#11346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346
  [i915#11621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621
  [i915#11666]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666
  [i915#11671]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723
  [i915#11724]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11724
  [i915#11725]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725
  [i915#11726]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726
  [i915#11731]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11731
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203
  [i915#12637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637
  [i915#12648]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12648
  [i915#12727]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12727
  [i915#12732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12732
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
  [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886


Build changes
-------------

  * Linux: CI_DRM_15675 -> Patchwork_141196v1

  CI-20190529: 20190529
  CI_DRM_15675: c8443e3741e360704258967feb87d253d8f0864a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8103: 43994179978d4a120226f253cb95209d59639ef9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_141196v1: c8443e3741e360704258967feb87d253d8f0864a @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/index.html

--===============1963999837401957606==
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
<tr><td><b>Series:</b></td><td>cpufreq: intel_pstate: Rearrange locking in hybrid_init_cpu_capacity_scaling()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/141196/">https://patchwork.freedesktop.org/series/141196/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15675 -&gt; Patchwork_141196v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/index.html</p>
<h2>Participating hosts (44 -&gt; 45)</h2>
<p>Additional (2): fi-skl-6600u fi-kbl-8809g <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_141196v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>)</li>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>)</li>
<li>bat-arlh-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11191">i915#11191</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345">i915#11345</a>) +3 other tests skip</li>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345">i915#11345</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671">i915#11671</a>) +3 other tests skip</li>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671">i915#11671</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-arlh-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671">i915#11671</a>) +3 other tests skip</li>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/fi-kbl-8809g/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-arlh-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343">i915#11343</a>)</li>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343">i915#11343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343">i915#11343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197">i915#10197</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211">i915#10211</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197">i915#10197</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211">i915#10211</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725">i915#11725</a>)</li>
<li>bat-arlh-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211">i915#10211</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725">i915#11725</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637">i915#12637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637">i915#12637</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206">i915#10206</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206">i915#10206</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11724">i915#11724</a>)</li>
<li>bat-arlh-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11724">i915#11724</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-arlh-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209">i915#10209</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209">i915#10209</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12727">i915#12727</a>) +33 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a>) +5 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12727">i915#12727</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-arlh-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666">i915#11666</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203">i915#12203</a>)</li>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203">i915#12203</a>)</li>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666">i915#11666</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203">i915#12203</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666">i915#11666</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>bat-arlh-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666">i915#11666</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@clobberred-modifier:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@kms_addfb_basic@clobberred-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-arlh-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11731">i915#11731</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/fi-kbl-8809g/igt@kms_dsc@dsc-basic.html">SKIP</a> +30 other tests skip</li>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12732">i915#12732</a>) +16 other tests skip</li>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/fi-skl-6600u/igt@kms_dsc@dsc-basic.html">SKIP</a> +9 other tests skip</li>
<li>bat-arlh-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-arlh-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10207">i915#10207</a>)</li>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10207">i915#10207</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-arlh-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12648">i915#12648</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342">i915#4342</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208">i915#10208</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>)</li>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208">i915#10208</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>)</li>
<li>bat-arlh-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12732">i915#12732</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-arlh-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637">i915#12637</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212">i915#10212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212">i915#10212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726">i915#11726</a>)</li>
<li>bat-arlh-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726">i915#11726</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637">i915#12637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214">i915#10214</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214">i915#10214</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726">i915#11726</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-arlh-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-3/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723">i915#11723</a>)</li>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arls-5/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-arlh-2/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723">i915#11723</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15675/fi-kbl-7567u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/fi-kbl-7567u/igt@i915_module_load@reload.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15675/bat-mtlp-8/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15675/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">PASS</a> +81 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15675/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15675/fi-kbl-7567u/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/fi-kbl-7567u/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15675/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141196v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> +50 other tests pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15675 -&gt; Patchwork_141196v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15675: c8443e3741e360704258967feb87d253d8f0864a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8103: 43994179978d4a120226f253cb95209d59639ef9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_141196v1: c8443e3741e360704258967feb87d253d8f0864a @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1963999837401957606==--
