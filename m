Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BD6ADCAEB
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 14:19:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CD6110E3BF;
	Tue, 17 Jun 2025 12:19:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1EED10E0F0;
 Tue, 17 Jun 2025 12:19:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7217076679229866466=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915=3A_Add_sanity_ch?=
 =?utf-8?q?eck_for_relocation_entry_pointer_in_execbuffer?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Brzezinka" <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Jun 2025 12:19:22 -0000
Message-ID: <175016276296.86598.1921573099727165636@1538d3639d33>
X-Patchwork-Hint: ignore
References: <lofb2i4actwlvfk6xbtihirrc34j3pb6xecvcl433a2xbm7zy6@akz3ko2bh2i5>
In-Reply-To: <lofb2i4actwlvfk6xbtihirrc34j3pb6xecvcl433a2xbm7zy6@akz3ko2bh2i5>
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

--===============7217076679229866466==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add sanity check for relocation entry pointer in execbuffer
URL   : https://patchwork.freedesktop.org/series/150330/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16706 -> Patchwork_150330v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_150330v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_150330v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/index.html

Participating hosts (47 -> 39)
------------------------------

  Missing    (8): bat-arlh-2 fi-ilk-650 fi-snb-2520m bat-atsm-1 bat-dg2-13 fi-blb-e6850 fi-bsw-nick fi-skl-6600u 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_150330v1:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy:
    - fi-elk-e7500:       [PASS][1] -> [DMESG-WARN][2] +17 other tests dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-elk-e7500/igt@gem_busy@busy.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-elk-e7500/igt@gem_busy@busy.html

  * igt@gem_busy@busy@all-engines:
    - fi-hsw-4770:        [PASS][3] -> [DMESG-WARN][4] +21 other tests dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-hsw-4770/igt@gem_busy@busy@all-engines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-hsw-4770/igt@gem_busy@busy@all-engines.html

  * igt@gem_close_race@basic-process:
    - bat-kbl-2:          [PASS][5] -> [DMESG-WARN][6] +43 other tests dmesg-warn
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/bat-kbl-2/igt@gem_close_race@basic-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/bat-kbl-2/igt@gem_close_race@basic-process.html

  * igt@gem_close_race@basic-threads:
    - fi-ivb-3770:        [PASS][7] -> [DMESG-WARN][8] +1 other test dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-ivb-3770/igt@gem_close_race@basic-threads.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-ivb-3770/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_fence@basic-await:
    - fi-glk-j4005:       [PASS][9] -> [DMESG-FAIL][10] +1 other test dmesg-fail
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-glk-j4005/igt@gem_exec_fence@basic-await.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-glk-j4005/igt@gem_exec_fence@basic-await.html
    - bat-apl-1:          [PASS][11] -> [DMESG-FAIL][12] +1 other test dmesg-fail
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/bat-apl-1/igt@gem_exec_fence@basic-await.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/bat-apl-1/igt@gem_exec_fence@basic-await.html
    - fi-kbl-x1275:       [PASS][13] -> [DMESG-FAIL][14] +1 other test dmesg-fail
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-kbl-x1275/igt@gem_exec_fence@basic-await.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-kbl-x1275/igt@gem_exec_fence@basic-await.html

  * igt@gem_exec_fence@basic-await@rcs0:
    - fi-cfl-guc:         [PASS][15] -> [DMESG-WARN][16] +46 other tests dmesg-warn
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-cfl-guc/igt@gem_exec_fence@basic-await@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-cfl-guc/igt@gem_exec_fence@basic-await@rcs0.html
    - bat-kbl-2:          [PASS][17] -> [DMESG-FAIL][18] +1 other test dmesg-fail
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/bat-kbl-2/igt@gem_exec_fence@basic-await@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/bat-kbl-2/igt@gem_exec_fence@basic-await@rcs0.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-glk-j4005:       [PASS][19] -> [DMESG-WARN][20] +43 other tests dmesg-warn
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-glk-j4005/igt@gem_exec_fence@basic-busy@bcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-glk-j4005/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_exec_fence@basic-wait:
    - fi-ivb-3770:        [PASS][21] -> [DMESG-FAIL][22] +19 other tests dmesg-fail
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-ivb-3770/igt@gem_exec_fence@basic-wait.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-ivb-3770/igt@gem_exec_fence@basic-wait.html

  * igt@gem_exec_fence@basic-wait@bcs0:
    - bat-apl-1:          [PASS][23] -> [DMESG-WARN][24] +43 other tests dmesg-warn
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/bat-apl-1/igt@gem_exec_fence@basic-wait@bcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/bat-apl-1/igt@gem_exec_fence@basic-wait@bcs0.html
    - fi-tgl-1115g4:      [PASS][25] -> [DMESG-WARN][26] +45 other tests dmesg-warn
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-tgl-1115g4/igt@gem_exec_fence@basic-wait@bcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-tgl-1115g4/igt@gem_exec_fence@basic-wait@bcs0.html

  * igt@gem_exec_fence@basic-wait@rcs0:
    - fi-pnv-d510:        [PASS][27] -> [DMESG-WARN][28] +15 other tests dmesg-warn
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-pnv-d510/igt@gem_exec_fence@basic-wait@rcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-pnv-d510/igt@gem_exec_fence@basic-wait@rcs0.html

  * igt@gem_exec_fence@basic-wait@vcs0:
    - fi-bsw-n3050:       [PASS][29] -> [DMESG-WARN][30] +43 other tests dmesg-warn
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-bsw-n3050/igt@gem_exec_fence@basic-wait@vcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-bsw-n3050/igt@gem_exec_fence@basic-wait@vcs0.html

  * igt@gem_exec_fence@nb-await@bcs0:
    - fi-cfl-8700k:       [PASS][31] -> [DMESG-WARN][32] +45 other tests dmesg-warn
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-cfl-8700k/igt@gem_exec_fence@nb-await@bcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-cfl-8700k/igt@gem_exec_fence@nb-await@bcs0.html

  * igt@gem_exec_parallel@engines:
    - fi-ivb-3770:        [PASS][33] -> [INCOMPLETE][34] +1 other test incomplete
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-ivb-3770/igt@gem_exec_parallel@engines.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-ivb-3770/igt@gem_exec_parallel@engines.html
    - fi-elk-e7500:       [PASS][35] -> [DMESG-FAIL][36] +17 other tests dmesg-fail
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-elk-e7500/igt@gem_exec_parallel@engines.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-elk-e7500/igt@gem_exec_parallel@engines.html

  * igt@gem_exec_parallel@engines@basic:
    - fi-kbl-7567u:       [PASS][37] -> [DMESG-WARN][38] +49 other tests dmesg-warn
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-kbl-7567u/igt@gem_exec_parallel@engines@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-kbl-7567u/igt@gem_exec_parallel@engines@basic.html
    - fi-kbl-8809g:       [PASS][39] -> [DMESG-WARN][40] +41 other tests dmesg-warn
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-kbl-8809g/igt@gem_exec_parallel@engines@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-kbl-8809g/igt@gem_exec_parallel@engines@basic.html

  * igt@gem_exec_parallel@engines@userptr:
    - fi-pnv-d510:        [PASS][41] -> [DMESG-FAIL][42] +11 other tests dmesg-fail
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html

  * igt@gem_linear_blits@basic:
    - fi-hsw-4770:        [PASS][43] -> [DMESG-FAIL][44] +23 other tests dmesg-fail
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-hsw-4770/igt@gem_linear_blits@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-hsw-4770/igt@gem_linear_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-kbl-guc:         [PASS][45] -> [DMESG-WARN][46] +42 other tests dmesg-warn
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-kbl-guc/igt@gem_tiled_blits@basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-kbl-guc/igt@gem_tiled_blits@basic.html

  * igt@gem_wait@busy@all-engines:
    - fi-kbl-x1275:       [PASS][47] -> [DMESG-WARN][48] +39 other tests dmesg-warn
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-kbl-x1275/igt@gem_wait@busy@all-engines.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-kbl-x1275/igt@gem_wait@busy@all-engines.html
    - fi-cfl-8109u:       [PASS][49] -> [DMESG-WARN][50] +47 other tests dmesg-warn
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-cfl-8109u/igt@gem_wait@busy@all-engines.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-cfl-8109u/igt@gem_wait@busy@all-engines.html

  * igt@i915_module_load@load:
    - bat-jsl-1:          [PASS][51] -> [DMESG-WARN][52] +45 other tests dmesg-warn
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/bat-jsl-1/igt@i915_module_load@load.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/bat-jsl-1/igt@i915_module_load@load.html

  * igt@kms_busy@basic@flip:
    - fi-elk-e7500:       [PASS][53] -> [TIMEOUT][54] +1 other test timeout
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-elk-e7500/igt@kms_busy@basic@flip.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-elk-e7500/igt@kms_busy@basic@flip.html
    - fi-hsw-4770:        [PASS][55] -> [TIMEOUT][56] +1 other test timeout
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-hsw-4770/igt@kms_busy@basic@flip.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-hsw-4770/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-bsw-n3050:       [PASS][57] -> [DMESG-FAIL][58] +1 other test dmesg-fail
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-pnv-d510:        [PASS][59] -> [TIMEOUT][60] +2 other tests timeout
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
Known issues
------------

  Here are the changes found in Patchwork_150330v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-wait:
    - bat-rpls-4:         [PASS][61] -> [DMESG-WARN][62] ([i915#13400]) +1 other test dmesg-warn
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/bat-rpls-4/igt@gem_exec_fence@basic-wait.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/bat-rpls-4/igt@gem_exec_fence@basic-wait.html

  * igt@i915_selftest@live:
    - bat-arlh-3:         [PASS][63] -> [DMESG-FAIL][64] ([i915#14243]) +1 other test dmesg-fail
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/bat-arlh-3/igt@i915_selftest@live.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-cfl-8109u:       [PASS][65] -> [DMESG-WARN][66] ([i915#13735]) +32 other tests dmesg-warn
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-11:         [PASS][67] -> [DMESG-FAIL][68] ([i915#12061]) +1 other test dmesg-fail
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@read-crc:
    - fi-cfl-8109u:       [PASS][69] -> [DMESG-WARN][70] ([i915#13890]) +49 other tests dmesg-warn
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-14:         [DMESG-FAIL][71] ([i915#12061]) -> [PASS][72] +1 other test pass
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13400]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400
  [i915#13735]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735
  [i915#13890]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890
  [i915#14243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243


Build changes
-------------

  * Linux: CI_DRM_16706 -> Patchwork_150330v1

  CI-20190529: 20190529
  CI_DRM_16706: dea7240e83c9e58ec755a3d68e7db10068df6b76 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8411: d5b5d2bb4f8795a98ea58376a128b74f654b7ec1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_150330v1: dea7240e83c9e58ec755a3d68e7db10068df6b76 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/index.html

--===============7217076679229866466==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add sanity check for relocation entry pointer in execbuffer</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/150330/">https://patchwork.freedesktop.org/series/150330/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16706 -&gt; Patchwork_150330v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_150330v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_150330v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/index.html</p>
<h2>Participating hosts (47 -&gt; 39)</h2>
<p>Missing    (8): bat-arlh-2 fi-ilk-650 fi-snb-2520m bat-atsm-1 bat-dg2-13 fi-blb-e6850 fi-bsw-nick fi-skl-6600u </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_150330v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_busy@busy:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-elk-e7500/igt@gem_busy@busy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-elk-e7500/igt@gem_busy@busy.html">DMESG-WARN</a> +17 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_busy@busy@all-engines:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-hsw-4770/igt@gem_busy@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-hsw-4770/igt@gem_busy@busy@all-engines.html">DMESG-WARN</a> +21 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-process:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/bat-kbl-2/igt@gem_close_race@basic-process.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/bat-kbl-2/igt@gem_close_race@basic-process.html">DMESG-WARN</a> +43 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-threads:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-ivb-3770/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-ivb-3770/igt@gem_close_race@basic-threads.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-glk-j4005/igt@gem_exec_fence@basic-await.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-glk-j4005/igt@gem_exec_fence@basic-await.html">DMESG-FAIL</a> +1 other test dmesg-fail</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/bat-apl-1/igt@gem_exec_fence@basic-await.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/bat-apl-1/igt@gem_exec_fence@basic-await.html">DMESG-FAIL</a> +1 other test dmesg-fail</li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-kbl-x1275/igt@gem_exec_fence@basic-await.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-kbl-x1275/igt@gem_exec_fence@basic-await.html">DMESG-FAIL</a> +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@rcs0:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-cfl-guc/igt@gem_exec_fence@basic-await@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-cfl-guc/igt@gem_exec_fence@basic-await@rcs0.html">DMESG-WARN</a> +46 other tests dmesg-warn</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/bat-kbl-2/igt@gem_exec_fence@basic-await@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/bat-kbl-2/igt@gem_exec_fence@basic-await@rcs0.html">DMESG-FAIL</a> +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-glk-j4005/igt@gem_exec_fence@basic-busy@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-glk-j4005/igt@gem_exec_fence@basic-busy@bcs0.html">DMESG-WARN</a> +43 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-ivb-3770/igt@gem_exec_fence@basic-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-ivb-3770/igt@gem_exec_fence@basic-wait.html">DMESG-FAIL</a> +19 other tests dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@bcs0:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/bat-apl-1/igt@gem_exec_fence@basic-wait@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/bat-apl-1/igt@gem_exec_fence@basic-wait@bcs0.html">DMESG-WARN</a> +43 other tests dmesg-warn</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-tgl-1115g4/igt@gem_exec_fence@basic-wait@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-tgl-1115g4/igt@gem_exec_fence@basic-wait@bcs0.html">DMESG-WARN</a> +45 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@rcs0:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-pnv-d510/igt@gem_exec_fence@basic-wait@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-pnv-d510/igt@gem_exec_fence@basic-wait@rcs0.html">DMESG-WARN</a> +15 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@vcs0:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-bsw-n3050/igt@gem_exec_fence@basic-wait@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-bsw-n3050/igt@gem_exec_fence@basic-wait@vcs0.html">DMESG-WARN</a> +43 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@bcs0:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-cfl-8700k/igt@gem_exec_fence@nb-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-cfl-8700k/igt@gem_exec_fence@nb-await@bcs0.html">DMESG-WARN</a> +45 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-ivb-3770/igt@gem_exec_parallel@engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-ivb-3770/igt@gem_exec_parallel@engines.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-elk-e7500/igt@gem_exec_parallel@engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-elk-e7500/igt@gem_exec_parallel@engines.html">DMESG-FAIL</a> +17 other tests dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-kbl-7567u/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-kbl-7567u/igt@gem_exec_parallel@engines@basic.html">DMESG-WARN</a> +49 other tests dmesg-warn</li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-kbl-8809g/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-kbl-8809g/igt@gem_exec_parallel@engines@basic.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a> +11 other tests dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-hsw-4770/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-hsw-4770/igt@gem_linear_blits@basic.html">DMESG-FAIL</a> +23 other tests dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-kbl-guc/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-kbl-guc/igt@gem_tiled_blits@basic.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@all-engines:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-kbl-x1275/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-kbl-x1275/igt@gem_wait@busy@all-engines.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-cfl-8109u/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-cfl-8109u/igt@gem_wait@busy@all-engines.html">DMESG-WARN</a> +47 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/bat-jsl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/bat-jsl-1/igt@i915_module_load@load.html">DMESG-WARN</a> +45 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-elk-e7500/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-elk-e7500/igt@kms_busy@basic@flip.html">TIMEOUT</a> +1 other test timeout</li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-hsw-4770/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-hsw-4770/igt@kms_busy@basic@flip.html">TIMEOUT</a> +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-FAIL</a> +1 other test dmesg-fail</li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">TIMEOUT</a> +2 other tests timeout</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_150330v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-wait:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/bat-rpls-4/igt@gem_exec_fence@basic-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/bat-rpls-4/igt@gem_exec_fence@basic-wait.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400">i915#13400</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/bat-arlh-3/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243">i915#14243</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a>) +32 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a>) +49 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16706/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150330v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16706 -&gt; Patchwork_150330v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16706: dea7240e83c9e58ec755a3d68e7db10068df6b76 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8411: d5b5d2bb4f8795a98ea58376a128b74f654b7ec1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_150330v1: dea7240e83c9e58ec755a3d68e7db10068df6b76 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7217076679229866466==--
