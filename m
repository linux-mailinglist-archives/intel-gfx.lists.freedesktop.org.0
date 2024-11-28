Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE6E9DB66D
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 12:21:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E124D10E356;
	Thu, 28 Nov 2024 11:21:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98FEE10E337;
 Thu, 28 Nov 2024 11:21:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915=3A_Fix_memory_le?=
 =?utf-8?q?ak_by_correcting_cache_object_name_in_error_handler_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jiasheng Jiang" <jiashengjiangcool@outlook.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Nov 2024 11:21:38 -0000
Message-ID: <173279289861.4072800.13122969002635510947@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241127201042.29620-1-jiashengjiangcool@gmail.com>
In-Reply-To: <20241127201042.29620-1-jiashengjiangcool@gmail.com>
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

Series: drm/i915: Fix memory leak by correcting cache object name in error handler (rev3)
URL   : https://patchwork.freedesktop.org/series/133610/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15756 -> Patchwork_133610v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_133610v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_133610v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/index.html

Participating hosts (45 -> 45)
------------------------------

  Additional (1): bat-adls-6 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_133610v3:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15756/bat-mtlp-8/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/bat-mtlp-8/igt@i915_selftest@live.html

  
Known issues
------------

  Here are the changes found in Patchwork_133610v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-adls-6:         NOTRUN -> [SKIP][3] ([i915#9318])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/bat-adls-6/igt@debugfs_test@basic-hwmon.html

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [PASS][4] -> [INCOMPLETE][5] ([i915#12904]) +1 other test incomplete
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15756/bat-apl-1/igt@dmabuf@all-tests.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-adls-6:         NOTRUN -> [SKIP][6] ([i915#4613]) +3 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/bat-adls-6/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_tiled_pread_basic:
    - bat-adls-6:         NOTRUN -> [SKIP][7] ([i915#3282])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/bat-adls-6/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-11:         [PASS][8] -> [FAIL][9] ([i915#12903])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15756/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
    - bat-dg1-7:          [PASS][10] -> [FAIL][11] ([i915#12903])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15756/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][12] -> [ABORT][13] ([i915#12061]) +1 other test abort
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15756/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-8:         [PASS][14] -> [ABORT][15] ([i915#12061])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15756/bat-mtlp-8/igt@i915_selftest@live@workarounds.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/bat-mtlp-8/igt@i915_selftest@live@workarounds.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-adls-6:         NOTRUN -> [SKIP][16] ([i915#4103]) +1 other test skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/bat-adls-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-adls-6:         NOTRUN -> [SKIP][17] ([i915#3555] / [i915#3840])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/bat-adls-6/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-adls-6:         NOTRUN -> [SKIP][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/bat-adls-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-dg2-11:         [PASS][19] -> [SKIP][20] ([i915#9197])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15756/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-adls-6:         NOTRUN -> [SKIP][21] ([i915#5354])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/bat-adls-6/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - bat-adls-6:         NOTRUN -> [SKIP][22] ([i915#1072] / [i915#9732]) +3 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/bat-adls-6/igt@kms_psr@psr-primary-mmap-gtt.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-adls-6:         NOTRUN -> [SKIP][23] ([i915#3555])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/bat-adls-6/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-read:
    - bat-adls-6:         NOTRUN -> [SKIP][24] ([i915#3291]) +2 other tests skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/bat-adls-6/igt@prime_vgem@basic-fence-read.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - bat-rpls-4:         [FAIL][25] ([i915#12903]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15756/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [ABORT][27] ([i915#12061]) -> [PASS][28] +1 other test pass
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15756/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
    - {bat-mtlp-9}:       [ABORT][29] ([i915#12061]) -> [PASS][30] +1 other test pass
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15756/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732


Build changes
-------------

  * Linux: CI_DRM_15756 -> Patchwork_133610v3

  CI-20190529: 20190529
  CI_DRM_15756: 7b9b831c594fba86da4bfb31c0b89ffb4da6c079 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8128: 8128
  Patchwork_133610v3: 7b9b831c594fba86da4bfb31c0b89ffb4da6c079 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v3/index.html
