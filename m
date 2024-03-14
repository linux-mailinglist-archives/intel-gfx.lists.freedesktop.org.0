Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF78A87B679
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 03:41:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8248F10F699;
	Thu, 14 Mar 2024 02:40:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 151B410F699;
 Thu, 14 Mar 2024 02:40:58 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6061777876130175916=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/gt=3A_Report_full_?=
 =?utf-8?q?vm_address_range?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Mar 2024 02:40:58 -0000
Message-ID: <171038405808.750287.13445101051588913335@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240313193907.95205-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240313193907.95205-1-andi.shyti@linux.intel.com>
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

--===============6061777876130175916==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Report full vm address range
URL   : https://patchwork.freedesktop.org/series/131095/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14428 -> Patchwork_131095v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_131095v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_131095v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/index.html

Participating hosts (35 -> 32)
------------------------------

  Additional (1): fi-glk-j4005 
  Missing    (4): bat-kbl-2 bat-dg1-7 bat-arls-2 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_131095v1:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_softpin@allocator-basic:
    - bat-dg2-14:         [PASS][1] -> [FAIL][2] +3 other tests fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-dg2-14/igt@gem_softpin@allocator-basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-dg2-14/igt@gem_softpin@allocator-basic.html

  * igt@gem_softpin@allocator-basic-reserve:
    - bat-atsm-1:         [PASS][3] -> [FAIL][4] +2 other tests fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-atsm-1/igt@gem_softpin@allocator-basic-reserve.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-atsm-1/igt@gem_softpin@allocator-basic-reserve.html
    - bat-dg2-9:          [PASS][5] -> [FAIL][6] +2 other tests fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-dg2-9/igt@gem_softpin@allocator-basic-reserve.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-dg2-9/igt@gem_softpin@allocator-basic-reserve.html
    - bat-dg2-8:          [PASS][7] -> [FAIL][8] +2 other tests fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-dg2-8/igt@gem_softpin@allocator-basic-reserve.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-dg2-8/igt@gem_softpin@allocator-basic-reserve.html

  * igt@i915_selftest@live@gtt:
    - bat-atsm-1:         [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-atsm-1/igt@i915_selftest@live@gtt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-atsm-1/igt@i915_selftest@live@gtt.html
    - fi-cfl-guc:         [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/fi-cfl-guc/igt@i915_selftest@live@gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-cfl-guc/igt@i915_selftest@live@gtt.html
    - bat-jsl-3:          [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-jsl-3/igt@i915_selftest@live@gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-jsl-3/igt@i915_selftest@live@gtt.html
    - fi-kbl-x1275:       [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/fi-kbl-x1275/igt@i915_selftest@live@gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-kbl-x1275/igt@i915_selftest@live@gtt.html
    - fi-cfl-8109u:       NOTRUN -> [DMESG-FAIL][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-cfl-8109u/igt@i915_selftest@live@gtt.html
    - bat-adln-1:         [PASS][18] -> [DMESG-FAIL][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-adln-1/igt@i915_selftest@live@gtt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-adln-1/igt@i915_selftest@live@gtt.html
    - bat-dg2-8:          [PASS][20] -> [DMESG-FAIL][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-dg2-8/igt@i915_selftest@live@gtt.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-dg2-8/igt@i915_selftest@live@gtt.html
    - fi-kbl-guc:         [PASS][22] -> [DMESG-FAIL][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/fi-kbl-guc/igt@i915_selftest@live@gtt.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-kbl-guc/igt@i915_selftest@live@gtt.html
    - bat-adls-6:         [PASS][24] -> [DMESG-FAIL][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-adls-6/igt@i915_selftest@live@gtt.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-adls-6/igt@i915_selftest@live@gtt.html
    - bat-adlm-1:         [PASS][26] -> [DMESG-FAIL][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-adlm-1/igt@i915_selftest@live@gtt.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-adlm-1/igt@i915_selftest@live@gtt.html
    - bat-jsl-1:          NOTRUN -> [DMESG-FAIL][28]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-jsl-1/igt@i915_selftest@live@gtt.html
    - fi-tgl-1115g4:      [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/fi-tgl-1115g4/igt@i915_selftest@live@gtt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-tgl-1115g4/igt@i915_selftest@live@gtt.html
    - bat-arls-1:         [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-arls-1/igt@i915_selftest@live@gtt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-arls-1/igt@i915_selftest@live@gtt.html
    - bat-adlp-6:         [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-adlp-6/igt@i915_selftest@live@gtt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-adlp-6/igt@i915_selftest@live@gtt.html
    - bat-mtlp-6:         [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-mtlp-6/igt@i915_selftest@live@gtt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-mtlp-6/igt@i915_selftest@live@gtt.html
    - bat-rpls-3:         [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-rpls-3/igt@i915_selftest@live@gtt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-rpls-3/igt@i915_selftest@live@gtt.html
    - fi-glk-j4005:       NOTRUN -> [DMESG-FAIL][39]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-glk-j4005/igt@i915_selftest@live@gtt.html
    - bat-adlp-9:         [PASS][40] -> [DMESG-FAIL][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-adlp-9/igt@i915_selftest@live@gtt.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-adlp-9/igt@i915_selftest@live@gtt.html
    - fi-kbl-7567u:       [PASS][42] -> [DMESG-FAIL][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/fi-kbl-7567u/igt@i915_selftest@live@gtt.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-kbl-7567u/igt@i915_selftest@live@gtt.html
    - fi-cfl-8700k:       [PASS][44] -> [DMESG-FAIL][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/fi-cfl-8700k/igt@i915_selftest@live@gtt.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-cfl-8700k/igt@i915_selftest@live@gtt.html
    - bat-dg2-14:         [PASS][46] -> [DMESG-FAIL][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-dg2-14/igt@i915_selftest@live@gtt.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-dg2-14/igt@i915_selftest@live@gtt.html
    - fi-bsw-nick:        [PASS][48] -> [DMESG-FAIL][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/fi-bsw-nick/igt@i915_selftest@live@gtt.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-bsw-nick/igt@i915_selftest@live@gtt.html
    - bat-rplp-1:         [PASS][50] -> [DMESG-FAIL][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-rplp-1/igt@i915_selftest@live@gtt.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-rplp-1/igt@i915_selftest@live@gtt.html
    - fi-rkl-11600:       [PASS][52] -> [DMESG-FAIL][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/fi-rkl-11600/igt@i915_selftest@live@gtt.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-rkl-11600/igt@i915_selftest@live@gtt.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg2-8:          [PASS][54] -> [ABORT][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-dg2-8/igt@i915_selftest@live@hangcheck.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-dg2-8/igt@i915_selftest@live@hangcheck.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@module-reload:
    - {bat-mtlp-9}:       [PASS][56] -> [CRASH][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gtt:
    - {bat-mtlp-9}:       [PASS][58] -> [DMESG-FAIL][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-mtlp-9/igt@i915_selftest@live@gtt.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-mtlp-9/igt@i915_selftest@live@gtt.html
    - {bat-arls-4}:       [PASS][60] -> [DMESG-FAIL][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-arls-4/igt@i915_selftest@live@gtt.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-arls-4/igt@i915_selftest@live@gtt.html

  
Known issues
------------

  Here are the changes found in Patchwork_131095v1 that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - bat-jsl-1:          [FAIL][62] ([i915#8293]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-jsl-1/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-jsl-1/boot.html
    - fi-cfl-8109u:       [FAIL][64] ([i915#8293]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/fi-cfl-8109u/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-jsl-1:          NOTRUN -> [SKIP][66] ([i915#9318])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-jsl-1/igt@debugfs_test@basic-hwmon.html

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][67] ([i915#2190])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html
    - bat-jsl-1:          NOTRUN -> [SKIP][68] ([i915#2190])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-jsl-1/igt@gem_huc_copy@huc-copy.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][69] ([i915#2190])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][70] ([i915#4613]) +3 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-glk-j4005/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][71] ([i915#4613]) +3 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html
    - bat-jsl-1:          NOTRUN -> [SKIP][72] ([i915#4613]) +3 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_selftest@live@migrate:
    - bat-dg2-9:          [PASS][73] -> [ABORT][74] ([i915#10366])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-dg2-9/igt@i915_selftest@live@migrate.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-dg2-9/igt@i915_selftest@live@migrate.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][75] +10 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-jsl-1:          NOTRUN -> [SKIP][76] ([i915#4103]) +1 other test skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-jsl-1:          NOTRUN -> [SKIP][77] ([i915#3555] / [i915#9886])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-jsl-1/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-jsl-1:          NOTRUN -> [SKIP][78]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pm_backlight@basic-brightness:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][79] +11 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-jsl-1:          NOTRUN -> [SKIP][80] ([i915#3555])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@kms_pm_rpm@basic-rte:
    - {bat-mtlp-9}:       [DMESG-WARN][81] -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-mtlp-9/igt@kms_pm_rpm@basic-rte.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-mtlp-9/igt@kms_pm_rpm@basic-rte.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9886]: https://gitlab.freedesktop.org/drm/intel/issues/9886


Build changes
-------------

  * Linux: CI_DRM_14428 -> Patchwork_131095v1

  CI-20190529: 20190529
  CI_DRM_14428: 790a1d4e546a1d7f1cc5316c77f21379a4083250 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7760: 7760
  Patchwork_131095v1: 790a1d4e546a1d7f1cc5316c77f21379a4083250 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1d0007feff06 drm/i915/gt: Report full vm address range

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/index.html

--===============6061777876130175916==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Report full vm address range</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131095/">https://patchwork.freedesktop.org/series/131095/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14428 -&gt; Patchwork_131095v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_131095v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_131095v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/index.html</p>
<h2>Participating hosts (35 -&gt; 32)</h2>
<p>Additional (1): fi-glk-j4005 <br />
  Missing    (4): bat-kbl-2 bat-dg1-7 bat-arls-2 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_131095v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_softpin@allocator-basic:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-dg2-14/igt@gem_softpin@allocator-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-dg2-14/igt@gem_softpin@allocator-basic.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic-reserve:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-atsm-1/igt@gem_softpin@allocator-basic-reserve.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-atsm-1/igt@gem_softpin@allocator-basic-reserve.html">FAIL</a> +2 other tests fail</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-dg2-9/igt@gem_softpin@allocator-basic-reserve.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-dg2-9/igt@gem_softpin@allocator-basic-reserve.html">FAIL</a> +2 other tests fail</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-dg2-8/igt@gem_softpin@allocator-basic-reserve.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-dg2-8/igt@gem_softpin@allocator-basic-reserve.html">FAIL</a> +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-atsm-1/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-atsm-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/fi-cfl-guc/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-cfl-guc/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-jsl-3/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-jsl-3/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/fi-kbl-x1275/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-kbl-x1275/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-cfl-8109u/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-adln-1/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-adln-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-dg2-8/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-dg2-8/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/fi-kbl-guc/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-kbl-guc/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-adls-6/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-adls-6/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-adlm-1/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-adlm-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-jsl-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/fi-tgl-1115g4/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-tgl-1115g4/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-arls-1/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-arls-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-adlp-6/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-adlp-6/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-mtlp-6/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-mtlp-6/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-rpls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-rpls-3/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-rpls-3/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-glk-j4005/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-adlp-9/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-adlp-9/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/fi-kbl-7567u/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-kbl-7567u/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/fi-cfl-8700k/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-cfl-8700k/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-dg2-14/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-dg2-14/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/fi-bsw-nick/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-bsw-nick/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-rplp-1/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-rplp-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/fi-rkl-11600/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-rkl-11600/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-dg2-8/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-dg2-8/igt@i915_selftest@live@hangcheck.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html">CRASH</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-mtlp-9/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-mtlp-9/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>{bat-arls-4}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-arls-4/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-arls-4/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131095v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-jsl-1/boot.html">PASS</a></li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-cfl-8109u/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-jsl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-jsl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-dg2-9/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-dg2-9/igt@i915_selftest@live@migrate.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-jsl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9886">i915#9886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pm_rpm@basic-rte:<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14428/bat-mtlp-9/igt@kms_pm_rpm@basic-rte.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v1/bat-mtlp-9/igt@kms_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14428 -&gt; Patchwork_131095v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14428: 790a1d4e546a1d7f1cc5316c77f21379a4083250 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7760: 7760<br />
  Patchwork_131095v1: 790a1d4e546a1d7f1cc5316c77f21379a4083250 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1d0007feff06 drm/i915/gt: Report full vm address range</p>

</body>
</html>

--===============6061777876130175916==--
