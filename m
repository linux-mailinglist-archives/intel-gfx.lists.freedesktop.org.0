Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F29986482
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 18:11:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 610FD10EA5E;
	Wed, 25 Sep 2024 16:11:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B130410E850;
 Wed, 25 Sep 2024 16:11:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8589733830515955859=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Introduce_DRM_device_wedged?=
 =?utf-8?q?_event_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Raag Jadav" <raag.jadav@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Sep 2024 16:11:42 -0000
Message-ID: <172728070271.1101944.2971293890857479778@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240923035826.624196-1-raag.jadav@intel.com>
In-Reply-To: <20240923035826.624196-1-raag.jadav@intel.com>
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

--===============8589733830515955859==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce DRM device wedged event (rev4)
URL   : https://patchwork.freedesktop.org/series/138069/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15443 -> Patchwork_138069v4
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_138069v4 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_138069v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/index.html

Participating hosts (37 -> 37)
------------------------------

  Additional (4): fi-hsw-4770 fi-kbl-8809g fi-ilk-650 bat-adls-6 
  Missing    (4): bat-dg1-7 fi-bsw-n3050 fi-snb-2520m fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_138069v4:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@basic-hwmon:
    - bat-adls-6:         NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adls-6/igt@debugfs_test@basic-hwmon.html

  * igt@kms_addfb_basic@too-high:
    - fi-kbl-8809g:       NOTRUN -> [FAIL][2] +2 other tests fail
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-kbl-8809g/igt@kms_addfb_basic@too-high.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-8809g:       NOTRUN -> [DMESG-FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - fi-kbl-8809g:       NOTRUN -> [DMESG-WARN][4] +1 other test dmesg-warn
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-kbl-8809g/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@runner@aborted:
    - bat-dg2-14:         NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-dg2-14/igt@runner@aborted.html
    - bat-dg2-13:         NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-dg2-13/igt@runner@aborted.html

  
#### Warnings ####

  * igt@debugfs_test@basic-hwmon:
    - bat-mtlp-8:         [SKIP][7] ([i915#9318]) -> [SKIP][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-mtlp-8/igt@debugfs_test@basic-hwmon.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-mtlp-8/igt@debugfs_test@basic-hwmon.html
    - bat-adlp-9:         [SKIP][9] ([i915#9318]) -> [SKIP][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-adlp-9/igt@debugfs_test@basic-hwmon.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adlp-9/igt@debugfs_test@basic-hwmon.html
    - bat-twl-2:          [SKIP][11] ([i915#9318]) -> [SKIP][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-twl-2/igt@debugfs_test@basic-hwmon.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-twl-2/igt@debugfs_test@basic-hwmon.html
    - bat-twl-1:          [SKIP][13] ([i915#9318]) -> [SKIP][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-twl-1/igt@debugfs_test@basic-hwmon.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-twl-1/igt@debugfs_test@basic-hwmon.html
    - bat-arls-5:         [SKIP][15] ([i915#9318]) -> [SKIP][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-5/igt@debugfs_test@basic-hwmon.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-5/igt@debugfs_test@basic-hwmon.html
    - bat-adlp-6:         [SKIP][17] ([i915#9318]) -> [SKIP][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-adlp-6/igt@debugfs_test@basic-hwmon.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adlp-6/igt@debugfs_test@basic-hwmon.html
    - bat-rplp-1:         [SKIP][19] ([i915#9318]) -> [SKIP][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-rplp-1/igt@debugfs_test@basic-hwmon.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-rplp-1/igt@debugfs_test@basic-hwmon.html
    - bat-arlh-2:         [SKIP][21] ([i915#9318]) -> [SKIP][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-2/igt@debugfs_test@basic-hwmon.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-2/igt@debugfs_test@basic-hwmon.html
    - fi-rkl-11600:       [SKIP][23] ([i915#9318]) -> [SKIP][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/fi-rkl-11600/igt@debugfs_test@basic-hwmon.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-rkl-11600/igt@debugfs_test@basic-hwmon.html
    - bat-adlp-11:        [SKIP][25] ([i915#9318]) -> [SKIP][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-adlp-11/igt@debugfs_test@basic-hwmon.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adlp-11/igt@debugfs_test@basic-hwmon.html
    - bat-rpls-4:         [SKIP][27] ([i915#9318]) -> [SKIP][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-rpls-4/igt@debugfs_test@basic-hwmon.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-rpls-4/igt@debugfs_test@basic-hwmon.html
    - bat-jsl-1:          [SKIP][29] ([i915#9318]) -> [SKIP][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-jsl-1/igt@debugfs_test@basic-hwmon.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-jsl-1/igt@debugfs_test@basic-hwmon.html
    - fi-tgl-1115g4:      [SKIP][31] ([i915#9318]) -> [SKIP][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/fi-tgl-1115g4/igt@debugfs_test@basic-hwmon.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-tgl-1115g4/igt@debugfs_test@basic-hwmon.html
    - bat-arls-1:         [SKIP][33] ([i915#9318]) -> [SKIP][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-1/igt@debugfs_test@basic-hwmon.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-1/igt@debugfs_test@basic-hwmon.html
    - bat-mtlp-6:         [SKIP][35] ([i915#9318]) -> [SKIP][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html
    - bat-arls-2:         [SKIP][37] ([i915#9318]) -> [SKIP][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-2/igt@debugfs_test@basic-hwmon.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-2/igt@debugfs_test@basic-hwmon.html

  * igt@fbdev@eof:
    - bat-arlh-2:         [SKIP][39] ([i915#11345]) -> [SKIP][40] +3 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-2/igt@fbdev@eof.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-2/igt@fbdev@eof.html

  * igt@gem_lmem_swapping@basic:
    - bat-twl-2:          [SKIP][41] ([i915#10213]) -> [SKIP][42] +3 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-twl-2/igt@gem_lmem_swapping@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-twl-2/igt@gem_lmem_swapping@basic.html
    - bat-twl-1:          [SKIP][43] ([i915#10213]) -> [SKIP][44] +3 other tests skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-twl-1/igt@gem_lmem_swapping@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-twl-1/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-arls-5:         [SKIP][45] ([i915#10213]) -> [SKIP][46] +3 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-5/igt@gem_lmem_swapping@parallel-random-engines.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-5/igt@gem_lmem_swapping@parallel-random-engines.html
    - bat-arlh-2:         [SKIP][47] ([i915#10213] / [i915#11671]) -> [SKIP][48] +3 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-2/igt@gem_lmem_swapping@parallel-random-engines.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - bat-arls-1:         [SKIP][49] ([i915#10213]) -> [SKIP][50] +3 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-1/igt@gem_lmem_swapping@random-engines.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-1/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-arls-2:         [SKIP][51] ([i915#10213]) -> [SKIP][52] +3 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-2/igt@gem_lmem_swapping@verify-random.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-2/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@basic:
    - bat-arlh-2:         [SKIP][53] ([i915#11343]) -> [SKIP][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-2/igt@gem_mmap@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-2/igt@gem_mmap@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-arlh-2:         [SKIP][55] ([i915#10197] / [i915#11725]) -> [SKIP][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-2/igt@gem_render_tiled_blits@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-2/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-arlh-2:         [SKIP][57] ([i915#10206] / [i915#11724]) -> [SKIP][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-2/igt@gem_tiled_pread_basic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-2/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-twl-2:          [SKIP][59] ([i915#10209]) -> [SKIP][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-twl-2/igt@i915_pm_rps@basic-api.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-twl-2/igt@i915_pm_rps@basic-api.html
    - bat-twl-1:          [SKIP][61] ([i915#10209]) -> [SKIP][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-twl-1/igt@i915_pm_rps@basic-api.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-twl-1/igt@i915_pm_rps@basic-api.html
    - bat-arls-5:         [SKIP][63] ([i915#10209] / [i915#11681]) -> [SKIP][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-5/igt@i915_pm_rps@basic-api.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-5/igt@i915_pm_rps@basic-api.html
    - bat-arlh-2:         [SKIP][65] ([i915#10209] / [i915#11681]) -> [SKIP][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-2/igt@i915_pm_rps@basic-api.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-2/igt@i915_pm_rps@basic-api.html
    - bat-arls-2:         [SKIP][67] ([i915#10209] / [i915#11681]) -> [SKIP][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-2/igt@i915_pm_rps@basic-api.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-2/igt@i915_pm_rps@basic-api.html
    - bat-arls-1:         [SKIP][69] ([i915#10209] / [i915#11681]) -> [SKIP][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-1/igt@i915_pm_rps@basic-api.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-1/igt@i915_pm_rps@basic-api.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - bat-twl-2:          [SKIP][71] ([i915#11030]) -> [SKIP][72] +1 other test skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-twl-1:          [SKIP][73] ([i915#11030]) -> [SKIP][74] +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-twl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-twl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@debugfs_test@basic-hwmon:
    - {bat-arlh-3}:       [SKIP][75] ([i915#9318]) -> [SKIP][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-3/igt@debugfs_test@basic-hwmon.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-3/igt@debugfs_test@basic-hwmon.html

  * igt@gem_lmem_swapping@basic:
    - {bat-arlh-3}:       [SKIP][77] ([i915#11671]) -> [SKIP][78] +3 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-3/igt@gem_lmem_swapping@basic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-3/igt@gem_lmem_swapping@basic.html

  * igt@gem_mmap@basic:
    - {bat-arlh-3}:       [SKIP][79] ([i915#11343]) -> [SKIP][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-3/igt@gem_mmap@basic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-3/igt@gem_mmap@basic.html

  * igt@gem_render_tiled_blits@basic:
    - {bat-arlh-3}:       [SKIP][81] ([i915#11725]) -> [SKIP][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-3/igt@gem_render_tiled_blits@basic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-3/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - {bat-arlh-3}:       [SKIP][83] ([i915#11724]) -> [SKIP][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-3/igt@gem_tiled_pread_basic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-3/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - {bat-arlh-3}:       [SKIP][85] ([i915#11681]) -> [SKIP][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-3/igt@i915_pm_rps@basic-api.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-3/igt@i915_pm_rps@basic-api.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15443 and Patchwork_138069v4:

### New IGT tests (14) ###

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-e-hdmi-a-1:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-f-hdmi-a-1:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-e-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-f-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-e-hdmi-a-1:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-f-hdmi-a-1:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-e-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.38] s

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-f-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.36] s

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-e-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.37] s

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-f-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.38] s

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-e-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.30] s

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-f-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_pipe_crc_basic@read-crc@pipe-e-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_pipe_crc_basic@read-crc@pipe-f-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  

Known issues
------------

  Here are the changes found in Patchwork_138069v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-8809g:       NOTRUN -> [DMESG-WARN][87] ([i915#10462])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html

  * igt@fbdev@info:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][88] ([i915#1849])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-kbl-8809g/igt@fbdev@info.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][89] ([i915#2190])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-guc:         [PASS][90] -> [SKIP][91] ([i915#2190])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/fi-kbl-guc/igt@gem_huc_copy@huc-copy.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-kbl-guc/igt@gem_huc_copy@huc-copy.html
    - fi-cfl-guc:         [PASS][92] -> [SKIP][93] ([i915#2190])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/fi-cfl-guc/igt@gem_huc_copy@huc-copy.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-cfl-guc/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][94] ([i915#4613]) +3 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-adls-6:         NOTRUN -> [SKIP][95] ([i915#4613]) +3 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adls-6/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_tiled_pread_basic:
    - bat-adls-6:         NOTRUN -> [SKIP][96] ([i915#3282])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adls-6/igt@gem_tiled_pread_basic.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][97] ([i915#5190])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-adls-6:         NOTRUN -> [SKIP][98] ([i915#4103]) +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adls-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-adls-6:         NOTRUN -> [SKIP][99] ([i915#3555] / [i915#3840])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adls-6/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-adls-6:         NOTRUN -> [SKIP][100]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adls-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-8809g:       NOTRUN -> [FAIL][101] ([IGT#3])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-kbl-8809g/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][102] +60 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:
    - fi-hsw-4770:        NOTRUN -> [SKIP][103] +14 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-adls-6:         NOTRUN -> [SKIP][104] ([i915#5354])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adls-6/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-ilk-650:         NOTRUN -> [SKIP][105] +23 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-ilk-650/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - bat-adls-6:         NOTRUN -> [SKIP][106] ([i915#1072] / [i915#9732]) +3 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adls-6/igt@kms_psr@psr-primary-mmap-gtt.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - fi-hsw-4770:        NOTRUN -> [SKIP][107] ([i915#1072]) +3 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-hsw-4770/igt@kms_psr@psr-sprite-plane-onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-adls-6:         NOTRUN -> [SKIP][108] ([i915#3555])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adls-6/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-read:
    - bat-adls-6:         NOTRUN -> [SKIP][109] ([i915#3291]) +2 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adls-6/igt@prime_vgem@basic-fence-read.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-arls-1:         [DMESG-FAIL][110] ([i915#10262] / [i915#10341]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-1/igt@i915_selftest@live.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-1/igt@i915_selftest@live.html
    - bat-twl-1:          [INCOMPLETE][112] ([i915#9413]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-twl-1/igt@i915_selftest@live.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-twl-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@evict:
    - bat-arls-1:         [DMESG-WARN][114] ([i915#10341]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-1/igt@i915_selftest@live@evict.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-1/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@execlists:
    - bat-arls-1:         [DMESG-FAIL][116] ([i915#10262]) -> [PASS][117] +14 other tests pass
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-1/igt@i915_selftest@live@execlists.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-1/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-twl-2:          [INCOMPLETE][118] ([i915#9413]) -> [PASS][119] +1 other test pass
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-twl-2/igt@i915_selftest@live@gt_lrc.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-twl-2/igt@i915_selftest@live@gt_lrc.html
    - bat-twl-1:          [INCOMPLETE][120] ([i915#10886] / [i915#9413]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-twl-1/igt@i915_selftest@live@gt_lrc.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-twl-1/igt@i915_selftest@live@gt_lrc.html

  
#### Warnings ####

  * igt@gem_mmap@basic:
    - bat-arls-2:         [SKIP][122] ([i915#11343] / [i915#4083]) -> [SKIP][123] ([i915#4083])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-2/igt@gem_mmap@basic.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-2/igt@gem_mmap@basic.html
    - bat-arls-1:         [SKIP][124] ([i915#11343] / [i915#4083]) -> [SKIP][125] ([i915#4083])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-1/igt@gem_mmap@basic.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-1/igt@gem_mmap@basic.html
    - bat-arls-5:         [SKIP][126] ([i915#11343] / [i915#4083]) -> [SKIP][127] ([i915#4083])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-5/igt@gem_mmap@basic.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-5/igt@gem_mmap@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-arls-2:         [SKIP][128] ([i915#10197] / [i915#10211] / [i915#4079]) -> [SKIP][129] ([i915#4079])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-2/igt@gem_render_tiled_blits@basic.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-2/igt@gem_render_tiled_blits@basic.html
    - bat-arls-5:         [SKIP][130] ([i915#10197] / [i915#10211] / [i915#4079]) -> [SKIP][131] ([i915#4079])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-5/igt@gem_render_tiled_blits@basic.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-5/igt@gem_render_tiled_blits@basic.html
    - bat-arls-1:         [SKIP][132] ([i915#10197] / [i915#10211] / [i915#4079]) -> [SKIP][133] ([i915#4079])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-1/igt@gem_render_tiled_blits@basic.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-1/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-arls-5:         [SKIP][134] ([i915#10206] / [i915#4079]) -> [SKIP][135] ([i915#4079])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-5/igt@gem_tiled_pread_basic.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-5/igt@gem_tiled_pread_basic.html
    - bat-arls-1:         [SKIP][136] ([i915#10206] / [i915#4079]) -> [SKIP][137] ([i915#4079])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-1/igt@gem_tiled_pread_basic.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-1/igt@gem_tiled_pread_basic.html
    - bat-arls-2:         [SKIP][138] ([i915#10206] / [i915#4079]) -> [SKIP][139] ([i915#4079])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-2/igt@gem_tiled_pread_basic.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-2/igt@gem_tiled_pread_basic.html

  * igt@i915_module_load@reload:
    - bat-arls-5:         [DMESG-WARN][140] ([i915#11637]) -> [DMESG-WARN][141] ([i915#11637] / [i915#1982])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-5/igt@i915_module_load@reload.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-5/igt@i915_module_load@reload.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg2-9:          [SKIP][142] ([i915#11681] / [i915#6621]) -> [SKIP][143] ([i915#6621])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-dg2-9/igt@i915_pm_rps@basic-api.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-dg2-9/igt@i915_pm_rps@basic-api.html
    - bat-dg2-11:         [SKIP][144] ([i915#11681] / [i915#6621]) -> [SKIP][145] ([i915#6621])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-dg2-11/igt@i915_pm_rps@basic-api.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-dg2-11/igt@i915_pm_rps@basic-api.html
    - bat-mtlp-8:         [SKIP][146] ([i915#11681] / [i915#6621]) -> [SKIP][147] ([i915#6621])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-mtlp-8/igt@i915_pm_rps@basic-api.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-mtlp-8/igt@i915_pm_rps@basic-api.html
    - bat-mtlp-6:         [SKIP][148] ([i915#11681] / [i915#6621]) -> [SKIP][149] ([i915#6621])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-mtlp-6/igt@i915_pm_rps@basic-api.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-mtlp-6/igt@i915_pm_rps@basic-api.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-arls-5:         [SKIP][150] ([i915#10202] / [i915#11346]) -> [SKIP][151] ([i915#11346]) +1 other test skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-arls-2:         [SKIP][152] ([i915#10202] / [i915#11346]) -> [SKIP][153] ([i915#11346]) +1 other test skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-arls-1:         [SKIP][154] ([i915#10202] / [i915#11346]) -> [SKIP][155] ([i915#11346]) +1 other test skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_psr@psr-cursor-plane-move:
    - bat-mtlp-6:         [SKIP][156] ([i915#1072] / [i915#9673] / [i915#9732] / [i915#9792]) -> [SKIP][157] ([i915#1072] / [i915#9732] / [i915#9792]) +3 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-mtlp-6/igt@kms_psr@psr-cursor-plane-move.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-mtlp-6/igt@kms_psr@psr-cursor-plane-move.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - bat-adlp-9:         [SKIP][158] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][159] ([i915#1072] / [i915#9732]) +3 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-adlp-9/igt@kms_psr@psr-sprite-plane-onoff.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adlp-9/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-rplp-1:         [SKIP][160] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][161] ([i915#1072] / [i915#9732]) +3 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-rplp-1/igt@kms_psr@psr-sprite-plane-onoff.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-rplp-1/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-dg2-9:          [SKIP][162] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][163] ([i915#1072] / [i915#9732]) +3 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-dg2-9/igt@kms_psr@psr-sprite-plane-onoff.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-dg2-9/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-adlp-11:        [SKIP][164] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][165] ([i915#1072] / [i915#9732]) +3 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-adlp-11/igt@kms_psr@psr-sprite-plane-onoff.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adlp-11/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-adlm-1:         [SKIP][166] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][167] ([i915#1072] / [i915#9732]) +3 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-adlm-1/igt@kms_psr@psr-sprite-plane-onoff.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adlm-1/igt@kms_psr@psr-sprite-plane-onoff.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [i915#10197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197
  [i915#10202]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10202
  [i915#10206]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206
  [i915#10209]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209
  [i915#10211]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211
  [i915#10213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213
  [i915#10262]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262
  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#10462]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10462
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10886
  [i915#11030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11030
  [i915#11343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343
  [i915#11345]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345
  [i915#11346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346
  [i915#11637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637
  [i915#11671]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11724]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11724
  [i915#11725]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413
  [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9792]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792


Build changes
-------------

  * Linux: CI_DRM_15443 -> Patchwork_138069v4

  CI-20190529: 20190529
  CI_DRM_15443: abfe8cf977e1abd1f414b2a90d223cd4dd2f1f47 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8031: 27ba1f4756f12a3694dce6d456aed947f22a8e34 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_138069v4: abfe8cf977e1abd1f414b2a90d223cd4dd2f1f47 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/index.html

--===============8589733830515955859==
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
<tr><td><b>Series:</b></td><td>Introduce DRM device wedged event (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/138069/">https://patchwork.freedesktop.org/series/138069/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15443 -&gt; Patchwork_138069v4</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_138069v4 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_138069v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/index.html</p>
<h2>Participating hosts (37 -&gt; 37)</h2>
<p>Additional (4): fi-hsw-4770 fi-kbl-8809g fi-ilk-650 bat-adls-6 <br />
  Missing    (4): bat-dg1-7 fi-bsw-n3050 fi-snb-2520m fi-pnv-d510 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_138069v4:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adls-6/igt@debugfs_test@basic-hwmon.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-high:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-kbl-8809g/igt@kms_addfb_basic@too-high.html">FAIL</a> +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-kbl-8809g/igt@kms_force_connector_basic@prune-stale-modes.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>bat-dg2-14:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-dg2-14/igt@runner@aborted.html">FAIL</a></li>
<li>bat-dg2-13:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-dg2-13/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-mtlp-8/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-mtlp-8/igt@debugfs_test@basic-hwmon.html">SKIP</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-adlp-9/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adlp-9/igt@debugfs_test@basic-hwmon.html">SKIP</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-twl-2/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-twl-2/igt@debugfs_test@basic-hwmon.html">SKIP</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-twl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-twl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-5/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-5/igt@debugfs_test@basic-hwmon.html">SKIP</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-adlp-6/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adlp-6/igt@debugfs_test@basic-hwmon.html">SKIP</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-rplp-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-rplp-1/igt@debugfs_test@basic-hwmon.html">SKIP</a></li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-2/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-2/igt@debugfs_test@basic-hwmon.html">SKIP</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/fi-rkl-11600/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-rkl-11600/igt@debugfs_test@basic-hwmon.html">SKIP</a></li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-adlp-11/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adlp-11/igt@debugfs_test@basic-hwmon.html">SKIP</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-rpls-4/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-rpls-4/igt@debugfs_test@basic-hwmon.html">SKIP</a></li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-jsl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-jsl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/fi-tgl-1115g4/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-tgl-1115g4/igt@debugfs_test@basic-hwmon.html">SKIP</a></li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-1/igt@debugfs_test@basic-hwmon.html">SKIP</a></li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html">SKIP</a></li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-2/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-2/igt@debugfs_test@basic-hwmon.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-2/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345">i915#11345</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-2/igt@fbdev@eof.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-twl-2/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-twl-2/igt@gem_lmem_swapping@basic.html">SKIP</a> +3 other tests skip</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-twl-1/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-twl-1/igt@gem_lmem_swapping@basic.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-5/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-5/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> +3 other tests skip</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671">i915#11671</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-1/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-1/igt@gem_lmem_swapping@random-engines.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-2/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-2/igt@gem_lmem_swapping@verify-random.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-2/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343">i915#11343</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-2/igt@gem_mmap@basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-2/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197">i915#10197</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725">i915#11725</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-2/igt@gem_render_tiled_blits@basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-2/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206">i915#10206</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11724">i915#11724</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-2/igt@gem_tiled_pread_basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-twl-2/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209">i915#10209</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-twl-2/igt@i915_pm_rps@basic-api.html">SKIP</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-twl-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209">i915#10209</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-twl-1/igt@i915_pm_rps@basic-api.html">SKIP</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-5/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209">i915#10209</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-5/igt@i915_pm_rps@basic-api.html">SKIP</a></li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-2/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209">i915#10209</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-2/igt@i915_pm_rps@basic-api.html">SKIP</a></li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-2/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209">i915#10209</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-2/igt@i915_pm_rps@basic-api.html">SKIP</a></li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209">i915#10209</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-1/igt@i915_pm_rps@basic-api.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11030">i915#11030</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-twl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11030">i915#11030</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-twl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>{bat-arlh-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-3/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-3/igt@debugfs_test@basic-hwmon.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>{bat-arlh-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-3/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671">i915#11671</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-3/igt@gem_lmem_swapping@basic.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>{bat-arlh-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-3/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343">i915#11343</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-3/igt@gem_mmap@basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>{bat-arlh-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-3/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725">i915#11725</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-3/igt@gem_render_tiled_blits@basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>{bat-arlh-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-3/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11724">i915#11724</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-3/igt@gem_tiled_pread_basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>{bat-arlh-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arlh-3/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arlh-3/igt@i915_pm_rps@basic-api.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15443 and Patchwork_138069v4:</p>
<h3>New IGT tests (14)</h3>
<ul>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-e-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-f-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-e-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-f-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-e-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-f-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-e-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.38] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-f-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.36] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-e-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.37] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-f-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.38] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-e-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.30] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-f-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-e-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-f-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_138069v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10462">i915#10462</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-kbl-8809g/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/fi-kbl-guc/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-kbl-guc/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/fi-cfl-guc/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-cfl-guc/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adls-6/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adls-6/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adls-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adls-6/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adls-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-kbl-8809g/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html">SKIP</a> +60 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html">SKIP</a> +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adls-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-ilk-650/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adls-6/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/fi-hsw-4770/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adls-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adls-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262">i915#10262</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-1/igt@i915_selftest@live.html">PASS</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-twl-1/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-twl-1/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-1/igt@i915_selftest@live@evict.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-1/igt@i915_selftest@live@evict.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-1/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262">i915#10262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-1/igt@i915_selftest@live@execlists.html">PASS</a> +14 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-twl-2/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-twl-2/igt@i915_selftest@live@gt_lrc.html">PASS</a> +1 other test pass</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-twl-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10886">i915#10886</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-twl-1/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-2/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343">i915#11343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-2/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-1/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343">i915#11343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-1/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-5/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343">i915#11343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-5/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-2/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197">i915#10197</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211">i915#10211</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-2/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-5/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197">i915#10197</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211">i915#10211</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-5/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-1/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197">i915#10197</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211">i915#10211</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-1/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-5/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206">i915#10206</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-5/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-1/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206">i915#10206</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-1/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-2/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206">i915#10206</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-2/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-5/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637">i915#11637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-5/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637">i915#11637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-dg2-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-dg2-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-dg2-11/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-dg2-11/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-mtlp-8/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-mtlp-8/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-mtlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-mtlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10202">i915#10202</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) +1 other test skip</li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10202">i915#10202</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) +1 other test skip</li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-arls-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10202">i915#10202</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-arls-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-move:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-mtlp-6/igt@kms_psr@psr-cursor-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792">i915#9792</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-mtlp-6/igt@kms_psr@psr-cursor-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792">i915#9792</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-adlp-9/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adlp-9/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-rplp-1/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-rplp-1/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-dg2-9/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-dg2-9/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-adlp-11/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adlp-11/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15443/bat-adlm-1/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138069v4/bat-adlm-1/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15443 -&gt; Patchwork_138069v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15443: abfe8cf977e1abd1f414b2a90d223cd4dd2f1f47 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8031: 27ba1f4756f12a3694dce6d456aed947f22a8e34 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_138069v4: abfe8cf977e1abd1f414b2a90d223cd4dd2f1f47 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8589733830515955859==--
