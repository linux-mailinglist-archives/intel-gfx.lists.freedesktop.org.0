Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD449DB83B
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 14:06:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A2C710E479;
	Thu, 28 Nov 2024 13:06:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B421410E13B;
 Thu, 28 Nov 2024 13:06:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915=3A_Fix_memory_le?=
 =?utf-8?q?ak_by_correcting_cache_object_name_in_error_handler_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jiasheng Jiang" <jiashengjiangcool@outlook.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Nov 2024 13:06:11 -0000
Message-ID: <173279917173.4072800.7182722129355354867@b555e5b46a47>
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

Series: drm/i915: Fix memory leak by correcting cache object name in error handler (rev4)
URL   : https://patchwork.freedesktop.org/series/133610/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15757 -> Patchwork_133610v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v4/index.html

Participating hosts (44 -> 43)
------------------------------

  Additional (1): bat-adlm-1 
  Missing    (2): fi-snb-2520m bat-jsl-3 

Known issues
------------

  Here are the changes found in Patchwork_133610v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-adlm-1:         NOTRUN -> [SKIP][1] ([i915#3826] / [i915#9900])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v4/bat-adlm-1/igt@debugfs_test@basic-hwmon.html

  * igt@fbdev@info:
    - bat-adlm-1:         NOTRUN -> [SKIP][2] ([i915#1849] / [i915#2582] / [i915#9900])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v4/bat-adlm-1/igt@fbdev@info.html

  * igt@fbdev@read:
    - bat-adlm-1:         NOTRUN -> [SKIP][3] ([i915#2582] / [i915#9900]) +3 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v4/bat-adlm-1/igt@fbdev@read.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-adlm-1:         NOTRUN -> [SKIP][4] ([i915#4613] / [i915#9900]) +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v4/bat-adlm-1/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_tiled_pread_basic:
    - bat-adlm-1:         NOTRUN -> [SKIP][5] ([i915#3282] / [i915#9900])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v4/bat-adlm-1/igt@gem_tiled_pread_basic.html

  * igt@i915_module_load@load:
    - bat-twl-1:          [PASS][6] -> [DMESG-WARN][7] ([i915#1982])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15757/bat-twl-1/igt@i915_module_load@load.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v4/bat-twl-1/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-11:         [PASS][8] -> [FAIL][9] ([i915#12903])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15757/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v4/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
    - bat-dg1-7:          [PASS][10] -> [FAIL][11] ([i915#12903])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15757/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v4/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@i915_pm_rps@basic-api:
    - bat-adlm-1:         NOTRUN -> [SKIP][12] ([i915#6621] / [i915#9900])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v4/bat-adlm-1/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live:
    - bat-apl-1:          [PASS][13] -> [DMESG-FAIL][14] ([i915#12435]) +1 other test dmesg-fail
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15757/bat-apl-1/igt@i915_selftest@live.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v4/bat-apl-1/igt@i915_selftest@live.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - bat-adlm-1:         NOTRUN -> [SKIP][15] ([i915#9900]) +17 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v4/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - bat-adlm-1:         NOTRUN -> [SKIP][16] ([i915#3637] / [i915#9900]) +3 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v4/bat-adlm-1/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-adlm-1:         NOTRUN -> [SKIP][17] ([i915#1849] / [i915#4342] / [i915#9900])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v4/bat-adlm-1/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-adlm-1:         NOTRUN -> [SKIP][18] ([i915#5354] / [i915#9900])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v4/bat-adlm-1/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - bat-adlm-1:         NOTRUN -> [SKIP][19] ([i915#1072] / [i915#9732] / [i915#9900]) +3 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v4/bat-adlm-1/igt@kms_psr@psr-sprite-plane-onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-adlm-1:         NOTRUN -> [SKIP][20] ([i915#3555] / [i915#9900])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v4/bat-adlm-1/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-adlm-1:         NOTRUN -> [SKIP][21] ([i915#3708] / [i915#9900]) +3 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v4/bat-adlm-1/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - bat-arls-5:         [DMESG-WARN][22] -> [PASS][23] +2 other tests pass
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15757/bat-arls-5/igt@i915_module_load@reload.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v4/bat-arls-5/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - bat-arls-5:         [DMESG-WARN][24] ([i915#4423]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15757/bat-arls-5/igt@i915_pm_rpm@module-reload.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v4/bat-arls-5/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [ABORT][26] ([i915#12061]) -> [PASS][27] +1 other test pass
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15757/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v4/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3826
  [i915#4342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9900]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9900


Build changes
-------------

  * Linux: CI_DRM_15757 -> Patchwork_133610v4

  CI-20190529: 20190529
  CI_DRM_15757: f3f406165a3d5f0fcb60be2060b7920ac385dc22 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8128: 8128
  Patchwork_133610v4: f3f406165a3d5f0fcb60be2060b7920ac385dc22 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133610v4/index.html
