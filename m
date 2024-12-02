Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6267D9DFCDB
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 10:17:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0600A10E224;
	Mon,  2 Dec 2024 09:17:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11A8010E224;
 Mon,  2 Dec 2024 09:17:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_Flush_DMC_wakelock_releas?=
 =?utf-8?q?e_work_at_the_end_of_runtime_suspend_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 02 Dec 2024 09:17:16 -0000
Message-ID: <173313103606.1563316.11197721649193027392@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241129164010.29887-1-gustavo.sousa@intel.com>
In-Reply-To: <20241129164010.29887-1-gustavo.sousa@intel.com>
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

== Series Details ==

Series: Flush DMC wakelock release work at the end of runtime suspend (rev2)
URL   : https://patchwork.freedesktop.org/series/141932/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15763 -> Patchwork_141932v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141932v2/index.html

Participating hosts (46 -> 45)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_141932v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-twl-2:          NOTRUN -> [SKIP][1] ([i915#9318])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141932v2/bat-twl-2/igt@debugfs_test@basic-hwmon.html

  * igt@gem_lmem_swapping@basic:
    - bat-twl-2:          NOTRUN -> [SKIP][2] ([i915#10213] / [i915#11671]) +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141932v2/bat-twl-2/igt@gem_lmem_swapping@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-twl-2:          NOTRUN -> [SKIP][3] ([i915#11031])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141932v2/bat-twl-2/igt@gem_tiled_pread_basic.html

  * igt@i915_module_load@reload:
    - bat-arlh-3:         [PASS][4] -> [INCOMPLETE][5] ([i915#13178])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15763/bat-arlh-3/igt@i915_module_load@reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141932v2/bat-arlh-3/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - bat-rpls-4:         [PASS][6] -> [FAIL][7] ([i915#12903])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15763/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141932v2/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_pm_rps@basic-api:
    - bat-twl-2:          NOTRUN -> [SKIP][8] ([i915#10209] / [i915#11681])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141932v2/bat-twl-2/igt@i915_pm_rps@basic-api.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - bat-twl-2:          NOTRUN -> [SKIP][9] ([i915#11030] / [i915#11731]) +1 other test skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141932v2/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_dsc@dsc-basic:
    - bat-twl-2:          NOTRUN -> [SKIP][10] ([i915#9886])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141932v2/bat-twl-2/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-twl-2:          NOTRUN -> [SKIP][11] ([i915#11032])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141932v2/bat-twl-2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-twl-2:          NOTRUN -> [SKIP][12] ([i915#8809])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141932v2/bat-twl-2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-read:
    - bat-twl-2:          NOTRUN -> [SKIP][13] ([i915#10212] / [i915#3708])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141932v2/bat-twl-2/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - bat-twl-2:          NOTRUN -> [SKIP][14] ([i915#10214] / [i915#3708])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141932v2/bat-twl-2/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - bat-twl-2:          NOTRUN -> [SKIP][15] ([i915#10216] / [i915#3708])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141932v2/bat-twl-2/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [INCOMPLETE][16] ([i915#12904]) -> [PASS][17] +1 other test pass
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15763/bat-apl-1/igt@dmabuf@all-tests.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141932v2/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@kms_busy@basic@flip:
    - fi-cfl-8109u:       [DMESG-WARN][18] ([i915#12914]) -> [PASS][19] +2 other tests pass
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15763/fi-cfl-8109u/igt@kms_busy@basic@flip.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141932v2/fi-cfl-8109u/igt@kms_busy@basic@flip.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-dg2-11:         [SKIP][20] ([i915#9197]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15763/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141932v2/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  
  [i915#10209]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209
  [i915#10212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214
  [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
  [i915#11030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11030
  [i915#11031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11031
  [i915#11032]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11032
  [i915#11671]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11731]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11731
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#12914]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12914
  [i915#13178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13178
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
  [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886


Build changes
-------------

  * Linux: CI_DRM_15763 -> Patchwork_141932v2

  CI-20190529: 20190529
  CI_DRM_15763: 108f610005f88de624c1a8c4f85d5cab9f530ddb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8131: f846ef8f7ddf051c88504c607136a9b5392bdef7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_141932v2: 108f610005f88de624c1a8c4f85d5cab9f530ddb @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141932v2/index.html
