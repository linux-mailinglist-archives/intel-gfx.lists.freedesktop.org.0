Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF519FB656
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2024 22:44:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5DDC10E5B1;
	Mon, 23 Dec 2024 21:43:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 173B110E5C6;
 Mon, 23 Dec 2024 21:43:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/cmtg=3A_Disable_?=
 =?utf-8?q?the_CMTG?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Dec 2024 21:43:37 -0000
Message-ID: <173499021708.2223910.3780417223971651365@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241223211014.90405-1-gustavo.sousa@intel.com>
In-Reply-To: <20241223211014.90405-1-gustavo.sousa@intel.com>
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

Series: drm/i915/cmtg: Disable the CMTG
URL   : https://patchwork.freedesktop.org/series/142947/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15889 -> Patchwork_142947v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_142947v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_142947v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/index.html

Participating hosts (41 -> 40)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_142947v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-dg2-13:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-dg2-13/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-dg2-13/igt@i915_module_load@load.html
    - bat-dg2-11:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-dg2-11/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-dg2-11/igt@i915_module_load@load.html
    - bat-dg2-14:         [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-dg2-14/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-dg2-14/igt@i915_module_load@load.html
    - bat-dg2-8:          [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-dg2-8/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-dg2-8/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-rpls-4:         [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@kms_busy@basic:
    - bat-twl-2:          [PASS][11] -> [ABORT][12] +1 other test abort
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-twl-2/igt@kms_busy@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-twl-2/igt@kms_busy@basic.html

  * igt@kms_busy@basic@flip:
    - bat-mtlp-8:         [PASS][13] -> [ABORT][14] +1 other test abort
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-mtlp-8/igt@kms_busy@basic@flip.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-mtlp-8/igt@kms_busy@basic@flip.html
    - bat-arlh-3:         [PASS][15] -> [ABORT][16] +1 other test abort
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-arlh-3/igt@kms_busy@basic@flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-arlh-3/igt@kms_busy@basic@flip.html
    - bat-adlp-9:         [PASS][17] -> [ABORT][18] +1 other test abort
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-adlp-9/igt@kms_busy@basic@flip.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-adlp-9/igt@kms_busy@basic@flip.html
    - bat-twl-1:          [PASS][19] -> [ABORT][20] +1 other test abort
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-twl-1/igt@kms_busy@basic@flip.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-twl-1/igt@kms_busy@basic@flip.html
    - bat-arls-5:         [PASS][21] -> [ABORT][22] +1 other test abort
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-arls-5/igt@kms_busy@basic@flip.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-arls-5/igt@kms_busy@basic@flip.html
    - bat-rplp-1:         [PASS][23] -> [ABORT][24] +1 other test abort
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-rplp-1/igt@kms_busy@basic@flip.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-rplp-1/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - bat-twl-2:          [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-twl-2/igt@kms_busy@basic@modeset.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-twl-2/igt@kms_busy@basic@modeset.html
    - bat-mtlp-8:         [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-mtlp-8/igt@kms_busy@basic@modeset.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-mtlp-8/igt@kms_busy@basic@modeset.html
    - bat-arlh-3:         [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-arlh-3/igt@kms_busy@basic@modeset.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-arlh-3/igt@kms_busy@basic@modeset.html
    - bat-adlp-9:         [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-adlp-9/igt@kms_busy@basic@modeset.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-adlp-9/igt@kms_busy@basic@modeset.html
    - bat-twl-1:          [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-twl-1/igt@kms_busy@basic@modeset.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-twl-1/igt@kms_busy@basic@modeset.html
    - bat-arls-5:         [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-arls-5/igt@kms_busy@basic@modeset.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-arls-5/igt@kms_busy@basic@modeset.html
    - bat-rplp-1:         [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-rplp-1/igt@kms_busy@basic@modeset.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-rplp-1/igt@kms_busy@basic@modeset.html

  * igt@kms_force_connector_basic@force-connector-state:
    - bat-mtlp-6:         [PASS][39] -> [ABORT][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_busy@basic@flip:
    - {bat-mtlp-9}:       [PASS][41] -> [ABORT][42] +1 other test abort
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-mtlp-9/igt@kms_busy@basic@flip.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-mtlp-9/igt@kms_busy@basic@flip.html
    - {bat-arls-6}:       [PASS][43] -> [ABORT][44] +1 other test abort
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-arls-6/igt@kms_busy@basic@flip.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-arls-6/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - {bat-mtlp-9}:       [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-mtlp-9/igt@kms_busy@basic@modeset.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-mtlp-9/igt@kms_busy@basic@modeset.html
    - {bat-arls-6}:       [PASS][47] -> [DMESG-WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-arls-6/igt@kms_busy@basic@modeset.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-arls-6/igt@kms_busy@basic@modeset.html

  
Known issues
------------

  Here are the changes found in Patchwork_142947v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - fi-pnv-d510:        [PASS][49] -> [ABORT][50] ([i915#13203])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/fi-pnv-d510/igt@i915_module_load@load.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/fi-pnv-d510/igt@i915_module_load@load.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#13203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203


Build changes
-------------

  * Linux: CI_DRM_15889 -> Patchwork_142947v1

  CI-20190529: 20190529
  CI_DRM_15889: 8fd79761c1b6984d01b45a4bc8eb8ad81f6546e4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8172: 9112581619aa198fa03041d5c7e18e02f42ac00f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142947v1: 8fd79761c1b6984d01b45a4bc8eb8ad81f6546e4 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/index.html
