Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 038529E281B
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 17:50:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F82B10E487;
	Tue,  3 Dec 2024 16:50:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF53010E487;
 Tue,  3 Dec 2024 16:50:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/dp=5Fmst=3A_Fix_a_few?=
 =?utf-8?q?_side-band_message_handling_issues?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 03 Dec 2024 16:50:49 -0000
Message-ID: <173324464977.2079416.10103553173053470508@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241203160223.2926014-1-imre.deak@intel.com>
In-Reply-To: <20241203160223.2926014-1-imre.deak@intel.com>
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

Series: drm/dp_mst: Fix a few side-band message handling issues
URL   : https://patchwork.freedesktop.org/series/142057/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15778 -> Patchwork_142057v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_142057v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_142057v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v1/index.html

Participating hosts (42 -> 41)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_142057v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@basic-plain-flip@b-dp2:
    - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15778/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@b-dp2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v1/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@b-dp2.html

  
Known issues
------------

  Here are the changes found in Patchwork_142057v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg1-7:          [PASS][3] -> [FAIL][4] ([i915#12903])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15778/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@kms_flip@basic-plain-flip:
    - fi-cfl-8109u:       [PASS][5] -> [DMESG-WARN][6] ([i915#12914]) +1 other test dmesg-warn
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15778/fi-cfl-8109u/igt@kms_flip@basic-plain-flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v1/fi-cfl-8109u/igt@kms_flip@basic-plain-flip.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - fi-pnv-d510:        NOTRUN -> [SKIP][7] +36 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v1/fi-pnv-d510/igt@kms_psr@psr-primary-mmap-gtt.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - fi-pnv-d510:        [ABORT][8] ([i915#13203]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15778/fi-pnv-d510/igt@i915_module_load@load.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v1/fi-pnv-d510/igt@i915_module_load@load.html
    - bat-adlp-6:         [DMESG-WARN][10] ([i915#12253]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15778/bat-adlp-6/igt@i915_module_load@load.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v1/bat-adlp-6/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-guc:         [FAIL][12] ([i915#12903]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15778/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v1/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [ABORT][14] ([i915#12061]) -> [PASS][15] +1 other test pass
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15778/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-arlh-2:         [ABORT][16] ([i915#12061]) -> [PASS][17] +1 other test pass
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15778/bat-arlh-2/igt@i915_selftest@live@workarounds.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v1/bat-arlh-2/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12253]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12253
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12914]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12914
  [i915#13203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203


Build changes
-------------

  * Linux: CI_DRM_15778 -> Patchwork_142057v1

  CI-20190529: 20190529
  CI_DRM_15778: 5779fb3c12faf12589054127d60b1d36d56ba219 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8135: c6840f5e3c3b942aa79727ee4978a5b79f290b67 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142057v1: 5779fb3c12faf12589054127d60b1d36d56ba219 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v1/index.html
