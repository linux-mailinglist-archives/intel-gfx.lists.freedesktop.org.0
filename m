Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0299EEDFF
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 16:52:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5D8A10EE1D;
	Thu, 12 Dec 2024 15:52:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A051810EE1D;
 Thu, 12 Dec 2024 15:52:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_Consider_joiner_calculati?=
 =?utf-8?q?on_for_panel_fitting_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nemesa Garg" <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2024 15:52:46 -0000
Message-ID: <173401876665.1625899.1805339213628507520@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241212143329.938202-1-nemesa.garg@intel.com>
In-Reply-To: <20241212143329.938202-1-nemesa.garg@intel.com>
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

Series: Consider joiner calculation for panel fitting (rev6)
URL   : https://patchwork.freedesktop.org/series/136561/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15831 -> Patchwork_136561v6
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_136561v6 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_136561v6, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v6/index.html

Participating hosts (47 -> 45)
------------------------------

  Missing    (2): bat-adlp-6 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_136561v6:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-dp1:
    - bat-apl-1:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/bat-apl-1/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v6/bat-apl-1/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_136561v6 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - fi-pnv-d510:        NOTRUN -> [SKIP][3] +3 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v6/fi-pnv-d510/igt@debugfs_test@basic-hwmon.html

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [PASS][4] -> [INCOMPLETE][5] ([i915#12904]) +1 other test incomplete
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/bat-apl-1/igt@dmabuf@all-tests.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v6/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        NOTRUN -> [ABORT][6] ([i915#13169])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v6/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live:
    - bat-twl-1:          [PASS][7] -> [ABORT][8] ([i915#12435] / [i915#12919])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/bat-twl-1/igt@i915_selftest@live.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v6/bat-twl-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@requests:
    - bat-twl-1:          [PASS][9] -> [ABORT][10] ([i915#12919])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/bat-twl-1/igt@i915_selftest@live@requests.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v6/bat-twl-1/igt@i915_selftest@live@requests.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - bat-apl-1:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/bat-apl-1/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v6/bat-apl-1/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - fi-pnv-d510:        [ABORT][13] ([i915#13203]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/fi-pnv-d510/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v6/fi-pnv-d510/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg1-7:          [FAIL][15] ([i915#12903]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v6/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
    - bat-rpls-4:         [FAIL][17] ([i915#12903]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v6/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - fi-hsw-4770:        [DMESG-WARN][19] ([i915#12806]) -> [PASS][20] +1 other test pass
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/fi-hsw-4770/igt@i915_selftest@live.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v6/fi-hsw-4770/igt@i915_selftest@live.html
    - bat-arlh-3:         [INCOMPLETE][21] ([i915#12435] / [i915#13194]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/bat-arlh-3/igt@i915_selftest@live.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v6/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@execlists:
    - bat-arlh-3:         [INCOMPLETE][23] -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/bat-arlh-3/igt@i915_selftest@live@execlists.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v6/bat-arlh-3/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@mman:
    - bat-jsl-3:          [INCOMPLETE][25] ([i915#13241]) -> [PASS][26] +1 other test pass
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/bat-jsl-3/igt@i915_selftest@live@mman.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v6/bat-jsl-3/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [ABORT][27] ([i915#12061]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v6/bat-arls-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - bat-apl-1:          [DMESG-WARN][29] -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/bat-apl-1/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v6/bat-apl-1/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#12806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12806
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
  [i915#13169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169
  [i915#13194]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13194
  [i915#13203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203
  [i915#13241]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13241
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982


Build changes
-------------

  * Linux: CI_DRM_15831 -> Patchwork_136561v6

  CI-20190529: 20190529
  CI_DRM_15831: f574af90d83d2d7bd4c99cdb79764dea5bf8b20c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8150: 7812065f4aebab1629b570bd78ef71e09480b359 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_136561v6: f574af90d83d2d7bd4c99cdb79764dea5bf8b20c @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v6/index.html
