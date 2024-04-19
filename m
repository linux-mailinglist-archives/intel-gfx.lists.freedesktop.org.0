Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E962E8AA790
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 06:01:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A113A10FD2D;
	Fri, 19 Apr 2024 04:01:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7D5810FD2D;
 Fri, 19 Apr 2024 04:01:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7372194475505615335=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Convert_intel?=
 =?utf-8?q?=5Fruntime=5Fpm=5Fget=5Fnoresume_towards_raw_wakeref_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Apr 2024 04:01:45 -0000
Message-ID: <171349930567.1519311.592102248145302810@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240418221320.66644-1-rodrigo.vivi@intel.com>
In-Reply-To: <20240418221320.66644-1-rodrigo.vivi@intel.com>
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

--===============7372194475505615335==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Convert intel_runtime_pm_get_noresume towards raw wakeref (rev3)
URL   : https://patchwork.freedesktop.org/series/132625/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14609 -> Patchwork_132625v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/index.html

Participating hosts (39 -> 35)
------------------------------

  Additional (1): bat-dg2-11 
  Missing    (5): fi-kbl-7567u bat-dg1-7 fi-bsw-n3050 bat-adlm-1 fi-elk-e7500 

Known issues
------------

  Here are the changes found in Patchwork_132625v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@eof:
    - bat-dg2-8:          NOTRUN -> [SKIP][1] ([i915#2582]) +3 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@fbdev@eof.html

  * igt@fbdev@info:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][2] ([i915#1849])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-kbl-x1275/igt@fbdev@info.html
    - bat-dg2-8:          NOTRUN -> [SKIP][3] ([i915#1849] / [i915#2582])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@fbdev@info.html
    - fi-kbl-guc:         NOTRUN -> [SKIP][4] ([i915#1849])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-kbl-guc/igt@fbdev@info.html

  * igt@gem_huc_copy@huc-copy:
    - fi-rkl-11600:       NOTRUN -> [SKIP][5] ([i915#2190])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][6] ([i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [SKIP][7] ([i915#4613]) +3 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-apl-guc/igt@gem_lmem_swapping@basic.html
    - fi-pnv-d510:        NOTRUN -> [SKIP][8] +21 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-pnv-d510/igt@gem_lmem_swapping@basic.html
    - bat-jsl-3:          NOTRUN -> [SKIP][9] ([i915#4613]) +3 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-jsl-3/igt@gem_lmem_swapping@basic.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][10] ([i915#4613]) +3 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-glk-j4005/igt@gem_lmem_swapping@basic.html
    - bat-adlp-9:         NOTRUN -> [SKIP][11] ([i915#4613]) +3 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-9/igt@gem_lmem_swapping@basic.html
    - bat-adln-1:         NOTRUN -> [SKIP][12] ([i915#4613]) +3 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adln-1/igt@gem_lmem_swapping@basic.html
    - fi-cfl-8700k:       NOTRUN -> [SKIP][13] ([i915#4613]) +3 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-cfl-8700k/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-11:         NOTRUN -> [FAIL][14] ([i915#10378])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html
    - bat-dg2-9:          NOTRUN -> [FAIL][15] ([i915#10378])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-bsw-nick:        NOTRUN -> [SKIP][16] +13 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html
    - bat-rplp-1:         NOTRUN -> [SKIP][17] ([i915#4613]) +3 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][18] ([i915#4613]) +3 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][19] ([i915#4613]) +3 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-tgl-1115g4/igt@gem_lmem_swapping@parallel-random-engines.html
    - bat-arls-3:         NOTRUN -> [SKIP][20] ([i915#10213]) +3 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - bat-arls-1:         NOTRUN -> [SKIP][21] ([i915#10213]) +3 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@gem_lmem_swapping@random-engines.html
    - bat-adlp-6:         NOTRUN -> [SKIP][22] ([i915#4613]) +3 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-guc:         NOTRUN -> [SKIP][23] ([i915#4613]) +3 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][24] ([i915#4613]) +3 other tests skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][25] ([i915#4613]) +3 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html
    - bat-adlp-11:        NOTRUN -> [SKIP][26] ([i915#4613]) +3 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@gem_lmem_swapping@verify-random.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][27] ([i915#4613]) +3 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html
    - bat-arls-2:         NOTRUN -> [SKIP][28] ([i915#10213]) +3 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-2/igt@gem_lmem_swapping@verify-random.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][29] ([i915#4613]) +3 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html
    - fi-kbl-guc:         NOTRUN -> [SKIP][30] ([i915#4613]) +3 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-kbl-guc/igt@gem_lmem_swapping@verify-random.html
    - bat-adls-6:         NOTRUN -> [SKIP][31] ([i915#4613]) +3 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adls-6/igt@gem_lmem_swapping@verify-random.html
    - bat-jsl-1:          NOTRUN -> [SKIP][32] ([i915#4613]) +3 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@basic:
    - bat-dg2-9:          NOTRUN -> [SKIP][33] ([i915#4083])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@gem_mmap@basic.html
    - bat-dg2-11:         NOTRUN -> [SKIP][34] ([i915#4083])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@gem_mmap@basic.html
    - bat-dg2-8:          NOTRUN -> [SKIP][35] ([i915#4083])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@gem_mmap@basic.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][36] ([i915#4083])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic:
    - bat-dg2-9:          NOTRUN -> [SKIP][37] ([i915#4077]) +2 other tests skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@gem_mmap_gtt@basic.html
    - bat-dg2-8:          NOTRUN -> [SKIP][38] ([i915#4077]) +2 other tests skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@gem_mmap_gtt@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-dg2-9:          NOTRUN -> [SKIP][39] ([i915#4079]) +1 other test skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-mtlp-6:         NOTRUN -> [SKIP][40] ([i915#4077]) +2 other tests skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - bat-dg2-11:         NOTRUN -> [SKIP][41] ([i915#4077]) +2 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@gem_tiled_fence_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - fi-rkl-11600:       NOTRUN -> [SKIP][42] ([i915#3282])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@gem_tiled_pread_basic.html
    - bat-dg2-11:         NOTRUN -> [SKIP][43] ([i915#4079]) +1 other test skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@gem_tiled_pread_basic.html
    - bat-dg2-8:          NOTRUN -> [SKIP][44] ([i915#4079]) +1 other test skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@gem_tiled_pread_basic.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][45] ([i915#4079]) +1 other test skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@gem_tiled_pread_basic.html
    - bat-adlp-11:        NOTRUN -> [SKIP][46] ([i915#3282])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rpm@module-reload:
    - fi-blb-e6850:       NOTRUN -> [SKIP][47] +18 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-blb-e6850/igt@i915_pm_rpm@module-reload.html

  * igt@i915_pm_rps@basic-api:
    - bat-adlp-9:         NOTRUN -> [SKIP][48] ([i915#6621])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-9/igt@i915_pm_rps@basic-api.html
    - bat-dg2-14:         NOTRUN -> [SKIP][49] ([i915#6621])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-14/igt@i915_pm_rps@basic-api.html
    - bat-adlp-6:         NOTRUN -> [SKIP][50] ([i915#6621])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-6/igt@i915_pm_rps@basic-api.html
    - bat-rplp-1:         NOTRUN -> [SKIP][51] ([i915#6621])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-rplp-1/igt@i915_pm_rps@basic-api.html
    - bat-dg2-9:          NOTRUN -> [SKIP][52] ([i915#6621])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@i915_pm_rps@basic-api.html
    - bat-dg2-11:         NOTRUN -> [SKIP][53] ([i915#6621])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@i915_pm_rps@basic-api.html
    - bat-adlp-11:        NOTRUN -> [SKIP][54] ([i915#6621])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@i915_pm_rps@basic-api.html
    - bat-arls-2:         NOTRUN -> [SKIP][55] ([i915#10209])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-2/igt@i915_pm_rps@basic-api.html
    - bat-adln-1:         NOTRUN -> [SKIP][56] ([i915#6621])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adln-1/igt@i915_pm_rps@basic-api.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][57] ([i915#6621])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-8/igt@i915_pm_rps@basic-api.html
    - bat-dg2-8:          NOTRUN -> [SKIP][58] ([i915#6621])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@i915_pm_rps@basic-api.html
    - bat-arls-1:         NOTRUN -> [SKIP][59] ([i915#10209])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@i915_pm_rps@basic-api.html
    - bat-arls-3:         NOTRUN -> [SKIP][60] ([i915#10209])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@i915_pm_rps@basic-api.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][61] ([i915#6621])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@hangcheck:
    - bat-adls-6:         NOTRUN -> [DMESG-WARN][62] ([i915#5591])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adls-6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - bat-mtlp-6:         NOTRUN -> [SKIP][63] ([i915#4212] / [i915#9792]) +8 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - bat-dg2-11:         NOTRUN -> [SKIP][64] ([i915#4212]) +7 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-dg2-9:          NOTRUN -> [SKIP][65] ([i915#5190])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-dg2-8:          NOTRUN -> [SKIP][66] ([i915#5190])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][67] ([i915#5190] / [i915#9792])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-dg2-11:         NOTRUN -> [SKIP][68] ([i915#5190])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg2-9:          NOTRUN -> [SKIP][69] ([i915#4215] / [i915#5190])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg2-8:          NOTRUN -> [SKIP][70] ([i915#4215] / [i915#5190])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg2-11:         NOTRUN -> [SKIP][71] ([i915#4215] / [i915#5190])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - bat-dg2-9:          NOTRUN -> [SKIP][72] ([i915#4212]) +7 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
    - bat-dg2-8:          NOTRUN -> [SKIP][73] ([i915#4212]) +7 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_chamelium_hpd@dp-hpd-fast:
    - bat-dg2-13:         NOTRUN -> [SKIP][74] ([Intel XE#484]) +2 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-13/igt@kms_chamelium_hpd@dp-hpd-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - bat-dg2-13:         NOTRUN -> [SKIP][75] ([Intel XE#484] / [i915#4550]) +1 other test skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-13/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - bat-adlp-9:         NOTRUN -> [SKIP][76] ([i915#4103]) +1 other test skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - bat-dg2-11:         NOTRUN -> [SKIP][77] ([i915#4103] / [i915#4213]) +1 other test skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-dg2-14:         NOTRUN -> [SKIP][78] ([i915#4103] / [i915#4213]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-14/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-rplp-1:         NOTRUN -> [SKIP][79] ([i915#4103] / [i915#4213]) +1 other test skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-rplp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-adls-6:         NOTRUN -> [SKIP][80] ([i915#4103]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adls-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-adlp-6:         NOTRUN -> [SKIP][81] ([i915#4103]) +1 other test skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - bat-dg2-9:          NOTRUN -> [SKIP][82] ([i915#9197]) +16 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - bat-mtlp-6:         NOTRUN -> [SKIP][83] ([i915#9792]) +17 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - bat-dg2-8:          NOTRUN -> [SKIP][84] ([i915#9197]) +16 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
    - fi-kbl-guc:         NOTRUN -> [SKIP][85] +34 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-kbl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_dsc@dsc-basic:
    - bat-dg2-11:         NOTRUN -> [SKIP][86] ([i915#3555] / [i915#3840])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@kms_dsc@dsc-basic.html
    - bat-adln-1:         NOTRUN -> [SKIP][87] ([i915#3555] / [i915#3840])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adln-1/igt@kms_dsc@dsc-basic.html
    - bat-dg2-14:         NOTRUN -> [SKIP][88] ([i915#3555] / [i915#3840])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-14/igt@kms_dsc@dsc-basic.html
    - bat-rplp-1:         NOTRUN -> [SKIP][89] ([i915#3555] / [i915#3840])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-rplp-1/igt@kms_dsc@dsc-basic.html
    - bat-arls-3:         NOTRUN -> [SKIP][90] ([i915#9886])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@kms_dsc@dsc-basic.html
    - bat-arls-2:         NOTRUN -> [SKIP][91] ([i915#9886])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-2/igt@kms_dsc@dsc-basic.html
    - bat-adls-6:         NOTRUN -> [SKIP][92] ([i915#3555] / [i915#3840])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adls-6/igt@kms_dsc@dsc-basic.html
    - bat-arls-1:         NOTRUN -> [SKIP][93] ([i915#9886])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@kms_dsc@dsc-basic.html
    - bat-adlp-6:         NOTRUN -> [SKIP][94] ([i915#3555] / [i915#3840])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-6/igt@kms_dsc@dsc-basic.html
    - bat-adlp-9:         NOTRUN -> [SKIP][95] ([i915#3555] / [i915#3840])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-9/igt@kms_dsc@dsc-basic.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - bat-mtlp-6:         NOTRUN -> [SKIP][96] ([i915#3637] / [i915#9792]) +3 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@kms_flip@basic-flip-vs-dpms.html
    - bat-dg2-9:          NOTRUN -> [SKIP][97] ([i915#5354]) +5 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@kms_flip@basic-flip-vs-dpms.html
    - bat-adlp-11:        NOTRUN -> [SKIP][98] ([i915#3637]) +3 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-rkl-11600:       NOTRUN -> [SKIP][99] ([i915#10846]) +3 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-adln-1:         NOTRUN -> [SKIP][100]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adln-1/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg2-14:         NOTRUN -> [SKIP][101]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-14/igt@kms_force_connector_basic@force-load-detect.html
    - bat-rplp-1:         NOTRUN -> [SKIP][102]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-rplp-1/igt@kms_force_connector_basic@force-load-detect.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][103]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][104]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html
    - bat-arls-3:         NOTRUN -> [SKIP][105] ([i915#10207])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@kms_force_connector_basic@force-load-detect.html
    - bat-jsl-3:          NOTRUN -> [SKIP][106]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-jsl-3/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg2-9:          NOTRUN -> [SKIP][107]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html
    - bat-arls-2:         NOTRUN -> [SKIP][108] ([i915#10207])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-2/igt@kms_force_connector_basic@force-load-detect.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][109]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-8/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg2-8:          NOTRUN -> [SKIP][110]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html
    - bat-adls-6:         NOTRUN -> [SKIP][111]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adls-6/igt@kms_force_connector_basic@force-load-detect.html
    - bat-jsl-1:          NOTRUN -> [SKIP][112]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html
    - bat-arls-1:         NOTRUN -> [SKIP][113] ([i915#10207])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@kms_force_connector_basic@force-load-detect.html
    - bat-adlp-6:         NOTRUN -> [SKIP][114]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-6/igt@kms_force_connector_basic@force-load-detect.html
    - bat-adlp-9:         NOTRUN -> [SKIP][115]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-9/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg2-11:         NOTRUN -> [SKIP][116]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-dg2-9:          NOTRUN -> [SKIP][117] ([i915#5274])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-dg2-11:         NOTRUN -> [SKIP][118] ([i915#5274])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-adlp-11:        NOTRUN -> [SKIP][119] ([i915#4093]) +3 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][120] ([i915#5274])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-dg2-8:          NOTRUN -> [SKIP][121] ([i915#5274])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][122] ([i915#5274] / [i915#9792])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-dg2-14:         NOTRUN -> [SKIP][123] ([i915#5274])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-14/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-adlp-11:        NOTRUN -> [SKIP][124] ([i915#4342] / [i915#5354])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@kms_frontbuffer_tracking@basic.html
    - bat-dg2-8:          NOTRUN -> [SKIP][125] ([i915#5354]) +5 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@kms_frontbuffer_tracking@basic.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][126] ([i915#4342] / [i915#5354] / [i915#9792])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][127] ([i915#1849] / [i915#5354])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-apl-guc:         NOTRUN -> [SKIP][128] +13 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-apl-guc/igt@kms_hdmi_inject@inject-audio.html
    - bat-adlp-11:        NOTRUN -> [SKIP][129] ([i915#4369])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:
    - fi-rkl-11600:       NOTRUN -> [SKIP][130] ([i915#10843]) +16 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html

  * igt@kms_pipe_crc_basic@read-crc:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][131] +35 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc.html
    - bat-adlp-11:        NOTRUN -> [SKIP][132] ([i915#10470]) +16 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_pm_backlight@basic-brightness:
    - fi-rkl-11600:       NOTRUN -> [SKIP][133] ([i915#5354])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@kms_pm_backlight@basic-brightness.html
    - bat-dg2-11:         NOTRUN -> [SKIP][134] ([i915#5354])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@kms_pm_backlight@basic-brightness.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][135] +7 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html
    - bat-dg2-14:         NOTRUN -> [SKIP][136] ([i915#5354])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-14/igt@kms_pm_backlight@basic-brightness.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][137] ([i915#9812])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-tgl-1115g4/igt@kms_pm_backlight@basic-brightness.html
    - bat-arls-1:         NOTRUN -> [SKIP][138] ([i915#9812])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@kms_pm_backlight@basic-brightness.html
    - bat-arls-3:         NOTRUN -> [SKIP][139] ([i915#9812])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@kms_pm_backlight@basic-brightness.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][140] ([i915#5354] / [i915#9792])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@kms_pm_backlight@basic-brightness.html
    - bat-adlp-11:        NOTRUN -> [SKIP][141] ([i915#9812])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@kms_pm_backlight@basic-brightness.html
    - bat-adlp-9:         NOTRUN -> [SKIP][142] ([i915#9812])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-9/igt@kms_pm_backlight@basic-brightness.html
    - bat-adls-6:         NOTRUN -> [SKIP][143] ([i915#5354])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adls-6/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-ivb-3770:        NOTRUN -> [SKIP][144] +17 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-ivb-3770/igt@kms_pm_rpm@basic-pci-d3-state.html
    - fi-ilk-650:         NOTRUN -> [SKIP][145] +16 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-ilk-650/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@kms_psr@psr-cursor-plane-move:
    - fi-cfl-guc:         NOTRUN -> [SKIP][146] +10 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-cfl-guc/igt@kms_psr@psr-cursor-plane-move.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][147] ([i915#1072] / [i915#9673] / [i915#9732] / [i915#9792]) +3 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@kms_psr@psr-cursor-plane-move.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - bat-arls-1:         NOTRUN -> [SKIP][148] ([i915#9732]) +3 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@kms_psr@psr-primary-mmap-gtt.html
    - bat-arls-3:         NOTRUN -> [SKIP][149] ([i915#9732]) +3 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@kms_psr@psr-primary-mmap-gtt.html
    - bat-adls-6:         NOTRUN -> [SKIP][150] ([i915#1072] / [i915#9732]) +3 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adls-6/igt@kms_psr@psr-primary-mmap-gtt.html

  * igt@kms_psr@psr-primary-mmap-gtt@edp-1:
    - bat-arls-2:         NOTRUN -> [SKIP][151] ([i915#10196] / [i915#4077] / [i915#9688])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-2/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][152] ([i915#4077] / [i915#9688])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html

  * igt@kms_psr@psr-primary-page-flip:
    - fi-glk-j4005:       NOTRUN -> [SKIP][153] +6 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-glk-j4005/igt@kms_psr@psr-primary-page-flip.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - bat-adlp-9:         NOTRUN -> [SKIP][154] ([i915#1072] / [i915#9673] / [i915#9732]) +3 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-9/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-dg2-11:         NOTRUN -> [SKIP][155] ([i915#1072] / [i915#9732]) +3 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@kms_psr@psr-sprite-plane-onoff.html
    - fi-cfl-8700k:       NOTRUN -> [SKIP][156] +6 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-cfl-8700k/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-dg2-14:         NOTRUN -> [SKIP][157] ([i915#1072] / [i915#9732]) +3 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-14/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-rplp-1:         NOTRUN -> [SKIP][158] ([i915#1072] / [i915#9673] / [i915#9732]) +3 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-rplp-1/igt@kms_psr@psr-sprite-plane-onoff.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][159] ([i915#1072] / [i915#9732]) +3 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-dg2-9:          NOTRUN -> [SKIP][160] ([i915#1072] / [i915#9673] / [i915#9732]) +3 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-adlp-11:        NOTRUN -> [SKIP][161] ([i915#1072] / [i915#9673] / [i915#9732]) +3 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-dg2-8:          NOTRUN -> [SKIP][162] ([i915#1072] / [i915#9673] / [i915#9732]) +3 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@kms_psr@psr-sprite-plane-onoff.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][163] ([i915#9732]) +3 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-tgl-1115g4/igt@kms_psr@psr-sprite-plane-onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-adlp-9:         NOTRUN -> [SKIP][164] ([i915#3555])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-9/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg2-14:         NOTRUN -> [SKIP][165] ([i915#3555])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-14/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adlp-6:         NOTRUN -> [SKIP][166] ([i915#3555])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-6/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-rplp-1:         NOTRUN -> [SKIP][167] ([i915#3555])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][168] ([i915#3555])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-jsl-3:          NOTRUN -> [SKIP][169] ([i915#3555])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-jsl-3/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg2-9:          NOTRUN -> [SKIP][170] ([i915#3555])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg2-11:         NOTRUN -> [SKIP][171] ([i915#3555])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adlp-11:        NOTRUN -> [SKIP][172] ([i915#3555])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-arls-2:         NOTRUN -> [SKIP][173] ([i915#10208] / [i915#8809])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-2/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adln-1:         NOTRUN -> [SKIP][174] ([i915#3555])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adln-1/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][175] ([i915#3555] / [i915#8809])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg2-8:          NOTRUN -> [SKIP][176] ([i915#3555])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adls-6:         NOTRUN -> [SKIP][177] ([i915#3555])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adls-6/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-jsl-1:          NOTRUN -> [SKIP][178] ([i915#3555])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][179] ([i915#3555])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-tgl-1115g4/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-arls-1:         NOTRUN -> [SKIP][180] ([i915#10208] / [i915#8809])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-arls-3:         NOTRUN -> [SKIP][181] ([i915#10208] / [i915#8809])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][182] ([i915#3555] / [i915#8809] / [i915#9792])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-dg2-9:          NOTRUN -> [SKIP][183] ([i915#3708] / [i915#9197])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html
    - bat-dg2-11:         NOTRUN -> [SKIP][184] ([i915#3708])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@prime_vgem@basic-fence-flip.html
    - bat-dg2-14:         NOTRUN -> [SKIP][185] ([i915#3708])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-14/igt@prime_vgem@basic-fence-flip.html
    - bat-dg2-8:          NOTRUN -> [SKIP][186] ([i915#3708] / [i915#9197])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][187] ([i915#3708] / [i915#9792])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html
    - bat-adlp-11:        NOTRUN -> [SKIP][188] ([i915#10470] / [i915#3708])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@prime_vgem@basic-fence-flip.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][189] ([i915#3708])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-dg2-11:         NOTRUN -> [SKIP][190] ([i915#3708] / [i915#4077]) +1 other test skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@prime_vgem@basic-fence-mmap.html
    - bat-dg2-14:         NOTRUN -> [SKIP][191] ([i915#3708] / [i915#4077]) +1 other test skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-14/igt@prime_vgem@basic-fence-mmap.html
    - bat-dg2-8:          NOTRUN -> [SKIP][192] ([i915#3708] / [i915#4077]) +1 other test skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html
    - bat-arls-3:         NOTRUN -> [SKIP][193] ([i915#10196] / [i915#3708] / [i915#4077]) +1 other test skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@prime_vgem@basic-fence-mmap.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][194] ([i915#3708] / [i915#4077]) +1 other test skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html
    - bat-dg2-9:          NOTRUN -> [SKIP][195] ([i915#3708] / [i915#4077]) +1 other test skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html
    - bat-arls-2:         NOTRUN -> [SKIP][196] ([i915#10196] / [i915#3708] / [i915#4077]) +1 other test skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-2/igt@prime_vgem@basic-fence-mmap.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][197] ([i915#3708] / [i915#4077]) +1 other test skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - bat-adlp-11:        NOTRUN -> [SKIP][198] ([i915#3291] / [i915#3708]) +2 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@prime_vgem@basic-fence-read.html
    - bat-arls-2:         NOTRUN -> [SKIP][199] ([i915#10212] / [i915#3708])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-2/igt@prime_vgem@basic-fence-read.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][200] ([i915#3708]) +1 other test skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html
    - bat-adlp-9:         NOTRUN -> [SKIP][201] ([i915#3291] / [i915#3708]) +2 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-9/igt@prime_vgem@basic-fence-read.html
    - bat-adls-6:         NOTRUN -> [SKIP][202] ([i915#3291]) +2 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adls-6/igt@prime_vgem@basic-fence-read.html
    - bat-adlp-6:         NOTRUN -> [SKIP][203] ([i915#3291] / [i915#3708]) +2 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-6/igt@prime_vgem@basic-fence-read.html
    - bat-arls-1:         NOTRUN -> [SKIP][204] ([i915#10212] / [i915#3708])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@prime_vgem@basic-fence-read.html
    - bat-arls-3:         NOTRUN -> [SKIP][205] ([i915#10212] / [i915#3708])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - bat-arls-1:         NOTRUN -> [SKIP][206] ([i915#10196] / [i915#3708] / [i915#4077]) +1 other test skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - bat-dg2-11:         NOTRUN -> [SKIP][207] ([i915#3291] / [i915#3708]) +2 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@prime_vgem@basic-read.html
    - bat-dg2-14:         NOTRUN -> [SKIP][208] ([i915#3291] / [i915#3708]) +2 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-14/igt@prime_vgem@basic-read.html
    - bat-rplp-1:         NOTRUN -> [SKIP][209] ([i915#3708]) +2 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-rplp-1/igt@prime_vgem@basic-read.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][210] ([i915#3291] / [i915#3708]) +2 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@prime_vgem@basic-read.html
    - bat-arls-2:         NOTRUN -> [SKIP][211] ([i915#10214] / [i915#3708])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-2/igt@prime_vgem@basic-read.html
    - bat-arls-1:         NOTRUN -> [SKIP][212] ([i915#10214] / [i915#3708])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@prime_vgem@basic-read.html
    - bat-arls-3:         NOTRUN -> [SKIP][213] ([i915#10214] / [i915#3708])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@prime_vgem@basic-read.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][214] ([i915#3708]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - bat-dg2-9:          NOTRUN -> [SKIP][215] ([i915#3291] / [i915#3708]) +2 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@prime_vgem@basic-write.html
    - bat-arls-2:         NOTRUN -> [SKIP][216] ([i915#10216] / [i915#3708])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-2/igt@prime_vgem@basic-write.html
    - bat-adln-1:         NOTRUN -> [SKIP][217] ([i915#3291]) +2 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adln-1/igt@prime_vgem@basic-write.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][218] ([i915#10216] / [i915#3708])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-8/igt@prime_vgem@basic-write.html
    - bat-dg2-8:          NOTRUN -> [SKIP][219] ([i915#3291] / [i915#3708]) +2 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@prime_vgem@basic-write.html
    - bat-arls-1:         NOTRUN -> [SKIP][220] ([i915#10216] / [i915#3708])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@prime_vgem@basic-write.html
    - bat-arls-3:         NOTRUN -> [SKIP][221] ([i915#10216] / [i915#3708])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@prime_vgem@basic-write.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][222] ([i915#10216] / [i915#3708])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@core_auth@basic-auth:
    - fi-kbl-x1275:       [INCOMPLETE][223] ([i915#2295]) -> [PASS][224]
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/fi-kbl-x1275/igt@core_auth@basic-auth.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-kbl-x1275/igt@core_auth@basic-auth.html

  * igt@gem_close_race@basic-process:
    - bat-dg2-9:          [INCOMPLETE][225] ([i915#10875]) -> [PASS][226]
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-dg2-9/igt@gem_close_race@basic-process.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@gem_close_race@basic-process.html
    - bat-adlp-11:        [ABORT][227] ([i915#10875]) -> [PASS][228]
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-adlp-11/igt@gem_close_race@basic-process.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@gem_close_race@basic-process.html
    - bat-mtlp-6:         [DMESG-WARN][229] ([i915#10875]) -> [PASS][230]
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-mtlp-6/igt@gem_close_race@basic-process.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@gem_close_race@basic-process.html

  * igt@gem_ctx_create@basic:
    - fi-rkl-11600:       [DMESG-WARN][231] -> [PASS][232]
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/fi-rkl-11600/igt@gem_ctx_create@basic.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@gem_ctx_create@basic.html

  * igt@i915_module_load@load:
    - bat-dg2-13:         [INCOMPLETE][233] ([i915#10875]) -> [PASS][234]
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-dg2-13/igt@i915_module_load@load.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-13/igt@i915_module_load@load.html
    - bat-dg2-8:          [INCOMPLETE][235] ([i915#10877]) -> [PASS][236]
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-dg2-8/igt@i915_module_load@load.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@i915_module_load@load.html
    - fi-kbl-guc:         [ABORT][237] ([i915#10875]) -> [PASS][238]
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/fi-kbl-guc/igt@i915_module_load@load.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-kbl-guc/igt@i915_module_load@load.html

  * igt@kms_busy@basic@flip:
    - fi-bsw-nick:        [INCOMPLETE][239] -> [PASS][240]
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/fi-bsw-nick/igt@kms_busy@basic@flip.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-bsw-nick/igt@kms_busy@basic@flip.html
    - {bat-mtlp-9}:       [ABORT][241] -> [PASS][242]
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-mtlp-9/igt@kms_busy@basic@flip.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-9/igt@kms_busy@basic@flip.html
    - fi-pnv-d510:        [ABORT][243] -> [PASS][244]
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/fi-pnv-d510/igt@kms_busy@basic@flip.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-pnv-d510/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - bat-adlp-9:         [DMESG-WARN][245] ([i915#10875]) -> [PASS][246]
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-adlp-9/igt@kms_busy@basic@modeset.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-9/igt@kms_busy@basic@modeset.html
    - {bat-rpls-4}:       [ABORT][247] ([i915#10875]) -> [PASS][248]
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-rpls-4/igt@kms_busy@basic@modeset.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-rpls-4/igt@kms_busy@basic@modeset.html
    - bat-rplp-1:         [DMESG-WARN][249] ([i915#10875]) -> [PASS][250]
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-rplp-1/igt@kms_busy@basic@modeset.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-rplp-1/igt@kms_busy@basic@modeset.html
    - fi-cfl-guc:         [INCOMPLETE][251] ([i915#10056]) -> [PASS][252]
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/fi-cfl-guc/igt@kms_busy@basic@modeset.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-cfl-guc/igt@kms_busy@basic@modeset.html
    - {bat-mtlp-9}:       [DMESG-WARN][253] -> [PASS][254]
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-mtlp-9/igt@kms_busy@basic@modeset.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-9/igt@kms_busy@basic@modeset.html
    - bat-adls-6:         [ABORT][255] ([i915#10875]) -> [PASS][256]
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-adls-6/igt@kms_busy@basic@modeset.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adls-6/igt@kms_busy@basic@modeset.html
    - bat-adlp-6:         [ABORT][257] ([i915#10875]) -> [PASS][258]
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-adlp-6/igt@kms_busy@basic@modeset.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-6/igt@kms_busy@basic@modeset.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - bat-arls-2:         [ABORT][259] ([i915#10875]) -> [PASS][260]
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-arls-2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-adln-1:         [DMESG-WARN][261] -> [PASS][262]
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-adln-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adln-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - {bat-arls-4}:       [ABORT][263] ([i915#10875]) -> [PASS][264]
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-arls-4/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-4/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-arls-1:         [ABORT][265] ([i915#10875]) -> [PASS][266]
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-arls-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-arls-3:         [ABORT][267] ([i915#10875]) -> [PASS][268]
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-arls-3/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp1:
    - fi-apl-guc:         [INCOMPLETE][269] -> [PASS][270]
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-edp1:
    - bat-jsl-3:          [INCOMPLETE][271] ([i915#10876]) -> [PASS][272]
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
    - bat-jsl-1:          [INCOMPLETE][273] ([i915#10876]) -> [PASS][274]
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-jsl-1/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-jsl-1/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1:
    - fi-tgl-1115g4:      [INCOMPLETE][275] -> [PASS][276]
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2:
    - fi-glk-j4005:       [INCOMPLETE][277] -> [PASS][278]
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html

  * igt@kms_flip@basic-flip-vs-dpms@c-dp1:
    - fi-cfl-8109u:       [INCOMPLETE][279] -> [PASS][280]
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html

  * igt@kms_flip@basic-flip-vs-dpms@d-edp1:
    - bat-mtlp-8:         [DMESG-WARN][281] -> [PASS][282]
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [Intel XE#484]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/484
  [i915#10056]: https://gitlab.freedesktop.org/drm/intel/issues/10056
  [i915#10196]: https://gitlab.freedesktop.org/drm/intel/issues/10196
  [i915#10207]: https://gitlab.freedesktop.org/drm/intel/issues/10207
  [i915#10208]: https://gitlab.freedesktop.org/drm/intel/issues/10208
  [i915#10209]: https://gitlab.freedesktop.org/drm/intel/issues/10209
  [i915#10212]: https://gitlab.freedesktop.org/drm/intel/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/intel/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/intel/issues/10214
  [i915#10216]: https://gitlab.freedesktop.org/drm/intel/issues/10216
  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#10470]: https://gitlab.freedesktop.org/drm/intel/issues/10470
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#10843]: https://gitlab.freedesktop.org/drm/intel/issues/10843
  [i915#10846]: https://gitlab.freedesktop.org/drm/intel/issues/10846
  [i915#10875]: https://gitlab.freedesktop.org/drm/intel/issues/10875
  [i915#10876]: https://gitlab.freedesktop.org/drm/intel/issues/10876
  [i915#10877]: https://gitlab.freedesktop.org/drm/intel/issues/10877
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4093]: https://gitlab.freedesktop.org/drm/intel/issues/4093
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4550]: https://gitlab.freedesktop.org/drm/intel/issues/4550
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#9159]: https://gitlab.freedesktop.org/drm/intel/issues/9159
  [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9792]: https://gitlab.freedesktop.org/drm/intel/issues/9792
  [i915#9812]: https://gitlab.freedesktop.org/drm/intel/issues/9812
  [i915#9886]: https://gitlab.freedesktop.org/drm/intel/issues/9886


Build changes
-------------

  * Linux: CI_DRM_14609 -> Patchwork_132625v3

  CI-20190529: 20190529
  CI_DRM_14609: 1f816172a689b95011a1c1cfe952ac6ec32d3ca3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7813: 66841b7d9024447be4f4f5449aaf4f021e6323e5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_132625v3: 1f816172a689b95011a1c1cfe952ac6ec32d3ca3 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/index.html

--===============7372194475505615335==
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
<tr><td><b>Series:</b></td><td>drm/i915: Convert intel_runtime_pm_get_noresume towards raw wakeref (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132625/">https://patchwork.freedesktop.org/series/132625/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14609 -&gt; Patchwork_132625v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/index.html</p>
<h2>Participating hosts (39 -&gt; 35)</h2>
<p>Additional (1): bat-dg2-11 <br />
  Missing    (5): fi-kbl-7567u bat-dg1-7 fi-bsw-n3050 bat-adlm-1 fi-elk-e7500 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132625v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-kbl-x1275/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>)</li>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-kbl-guc/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-pnv-d510/igt@gem_lmem_swapping@basic.html">SKIP</a> +21 other tests skip</li>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-jsl-3/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-9/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adln-1/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-cfl-8700k/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>)</li>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> +13 other tests skip</li>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-tgl-1115g4/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10213">i915#10213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>bat-arls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10213">i915#10213</a>) +3 other tests skip</li>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-2/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10213">i915#10213</a>) +3 other tests skip</li>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-kbl-guc/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adls-6/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</li>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-blb-e6850/igt@i915_pm_rpm@module-reload.html">SKIP</a> +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
<li>bat-dg2-14:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-14/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-rplp-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-2/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10209">i915#10209</a>)</li>
<li>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adln-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-8/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
<li>bat-arls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10209">i915#10209</a>)</li>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10209">i915#10209</a>)</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adls-6/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +7 other tests skip</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-fast:</p>
<ul>
<li>bat-dg2-13:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-13/igt@kms_chamelium_hpd@dp-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/484">Intel XE#484</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>bat-dg2-13:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-13/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/484">Intel XE#484</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4550">i915#4550</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</li>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-dg2-14:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-14/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 other test skip</li>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-rplp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 other test skip</li>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adls-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</li>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9197">i915#9197</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9197">i915#9197</a>) +16 other tests skip</li>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-kbl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
<li>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adln-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
<li>bat-dg2-14:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-14/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-rplp-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9886">i915#9886</a>)</li>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-2/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9886">i915#9886</a>)</li>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adls-6/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
<li>bat-arls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9886">i915#9886</a>)</li>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-6/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-9/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>) +3 other tests skip</li>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +5 other tests skip</li>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10846">i915#10846</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adln-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
<li>bat-dg2-14:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-14/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-rplp-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10207">i915#10207</a>)</li>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-jsl-3/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10207">i915#10207</a>)</li>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-8/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adls-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
<li>bat-arls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10207">i915#10207</a>)</li>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-9/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</li>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</li>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4093">i915#4093</a>) +3 other tests skip</li>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
<li>bat-dg2-14:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-14/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4342">i915#4342</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +5 other tests skip</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4342">i915#4342</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-apl-guc/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> +13 other tests skip</li>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4369">i915#4369</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10843">i915#10843</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> +35 other tests skip</li>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10470">i915#10470</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> +7 other tests skip</li>
<li>bat-dg2-14:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-14/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-tgl-1115g4/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9812">i915#9812</a>)</li>
<li>bat-arls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9812">i915#9812</a>)</li>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9812">i915#9812</a>)</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9812">i915#9812</a>)</li>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-9/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9812">i915#9812</a>)</li>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adls-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-ivb-3770/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +17 other tests skip</li>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-ilk-650/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-move:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-cfl-guc/igt@kms_psr@psr-cursor-plane-move.html">SKIP</a> +10 other tests skip</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@kms_psr@psr-cursor-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt:</p>
<ul>
<li>bat-arls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +3 other tests skip</li>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +3 other tests skip</li>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adls-6/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt@edp-1:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-2/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10196">i915#10196</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9688">i915#9688</a>)</li>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9688">i915#9688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-glk-j4005/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-9/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +3 other tests skip</li>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +3 other tests skip</li>
<li>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-cfl-8700k/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> +6 other tests skip</li>
<li>bat-dg2-14:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-14/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +3 other tests skip</li>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-rplp-1/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +3 other tests skip</li>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +3 other tests skip</li>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +3 other tests skip</li>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +3 other tests skip</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +3 other tests skip</li>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-tgl-1115g4/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
<li>bat-dg2-14:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-14/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-jsl-3/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10208">i915#10208</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>)</li>
<li>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adln-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>)</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adls-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-tgl-1115g4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
<li>bat-arls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10208">i915#10208</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>)</li>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10208">i915#10208</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>)</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9197">i915#9197</a>)</li>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
<li>bat-dg2-14:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-14/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9197">i915#9197</a>)</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10470">i915#10470</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
<li>bat-dg2-14:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-14/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10196">i915#10196</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-2/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10196">i915#10196</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10212">i915#10212</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +1 other test skip</li>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-9/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adls-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a>) +2 other tests skip</li>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
<li>bat-arls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10212">i915#10212</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10212">i915#10212</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>bat-arls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10196">i915#10196</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-11/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
<li>bat-dg2-14:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-14/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-rplp-1/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-2/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10214">i915#10214</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
<li>bat-arls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10214">i915#10214</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10214">i915#10214</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-2/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
<li>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adln-1/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a>) +2 other tests skip</li>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-8/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
<li>bat-arls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/fi-kbl-x1275/igt@core_auth@basic-auth.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-kbl-x1275/igt@core_auth@basic-auth.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-process:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-dg2-9/igt@gem_close_race@basic-process.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-9/igt@gem_close_race@basic-process.html">PASS</a></li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-adlp-11/igt@gem_close_race@basic-process.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-11/igt@gem_close_race@basic-process.html">PASS</a></li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-mtlp-6/igt@gem_close_race@basic-process.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-6/igt@gem_close_race@basic-process.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/fi-rkl-11600/igt@gem_ctx_create@basic.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-rkl-11600/igt@gem_ctx_create@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-dg2-13/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-13/igt@i915_module_load@load.html">PASS</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-dg2-8/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10877">i915#10877</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-dg2-8/igt@i915_module_load@load.html">PASS</a></li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/fi-kbl-guc/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-kbl-guc/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/fi-bsw-nick/igt@kms_busy@basic@flip.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-bsw-nick/igt@kms_busy@basic@flip.html">PASS</a></li>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-mtlp-9/igt@kms_busy@basic@flip.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-9/igt@kms_busy@basic@flip.html">PASS</a></li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/fi-pnv-d510/igt@kms_busy@basic@flip.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-pnv-d510/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-adlp-9/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-9/igt@kms_busy@basic@modeset.html">PASS</a></li>
<li>{bat-rpls-4}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-rpls-4/igt@kms_busy@basic@modeset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-rpls-4/igt@kms_busy@basic@modeset.html">PASS</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-rplp-1/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-rplp-1/igt@kms_busy@basic@modeset.html">PASS</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/fi-cfl-guc/igt@kms_busy@basic@modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10056">i915#10056</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-cfl-guc/igt@kms_busy@basic@modeset.html">PASS</a></li>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-mtlp-9/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-9/igt@kms_busy@basic@modeset.html">PASS</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-adls-6/igt@kms_busy@basic@modeset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adls-6/igt@kms_busy@basic@modeset.html">PASS</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-adlp-6/igt@kms_busy@basic@modeset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adlp-6/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-arls-2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a></li>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-adln-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-adln-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a></li>
<li>{bat-arls-4}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-arls-4/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-4/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a></li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-arls-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a></li>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-arls-3/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-arls-3/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp1:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-edp1:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10876">i915#10876</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">PASS</a></li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-jsl-1/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10876">i915#10876</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-jsl-1/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-dp1:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-edp1:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14609/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v3/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14609 -&gt; Patchwork_132625v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14609: 1f816172a689b95011a1c1cfe952ac6ec32d3ca3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7813: 66841b7d9024447be4f4f5449aaf4f021e6323e5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_132625v3: 1f816172a689b95011a1c1cfe952ac6ec32d3ca3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7372194475505615335==--
