Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E01C9D4D1A
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2024 13:48:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F49310E91F;
	Thu, 21 Nov 2024 12:48:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA9DA10E905;
 Thu, 21 Nov 2024 12:48:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_use_hw_support_for_min/in?=
 =?utf-8?q?terim_ddb_allocation_for_async_flip_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Nov 2024 12:48:31 -0000
Message-ID: <173219331191.1149889.18192412615938618171@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241121112726.510220-1-vinod.govindapillai@intel.com>
In-Reply-To: <20241121112726.510220-1-vinod.govindapillai@intel.com>
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

Series: use hw support for min/interim ddb allocation for async flip (rev2)
URL   : https://patchwork.freedesktop.org/series/140926/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15725 -> Patchwork_140926v2
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_140926v2 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_140926v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/index.html

Participating hosts (46 -> 45)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_140926v2:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live:
    - bat-arls-5:         [ABORT][1] ([i915#12829]) -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-arls-5/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/bat-arls-5/igt@i915_selftest@live.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live:
    - {bat-arls-6}:       [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-arls-6/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/bat-arls-6/igt@i915_selftest@live.html

  
Known issues
------------

  Here are the changes found in Patchwork_140926v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-11:         [PASS][5] -> [FAIL][6] ([i915#12903])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/bat-dg2-11/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-twl-2:          [PASS][7] -> [ABORT][8] ([i915#12919]) +1 other test abort
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-twl-2/igt@i915_selftest@live@gt_mocs.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/bat-twl-2/igt@i915_selftest@live@gt_mocs.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [INCOMPLETE][9] ([i915#12904]) -> [PASS][10] +1 other test pass
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-apl-1/igt@dmabuf@all-tests.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@i915_selftest@live:
    - {bat-mtlp-9}:       [ABORT][11] ([i915#12829]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-mtlp-9/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/bat-mtlp-9/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - {bat-mtlp-9}:       [ABORT][13] ([i915#12915]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [SKIP][15] ([i915#9197]) -> [PASS][16] +3 other tests pass
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Warnings ####

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-dg2-9:          [SKIP][17] ([i915#4212] / [i915#5190]) -> [SKIP][18] ([i915#5190])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-mtlp-6:         [SKIP][19] ([i915#4212] / [i915#5190] / [i915#9792]) -> [SKIP][20] ([i915#5190] / [i915#9792])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-dg2-11:         [SKIP][21] ([i915#4212] / [i915#5190]) -> [SKIP][22] ([i915#5190])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-dg2-14:         [SKIP][23] ([i915#4212] / [i915#5190]) -> [SKIP][24] ([i915#5190])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg2-14/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/bat-dg2-14/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-mtlp-8:         [SKIP][25] ([i915#4212] / [i915#5190]) -> [SKIP][26] ([i915#5190])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-dg2-8:          [SKIP][27] ([i915#4212] / [i915#5190]) -> [SKIP][28] ([i915#5190])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg2-8:          [SKIP][29] ([i915#4212] / [i915#4215] / [i915#5190]) -> [SKIP][30] ([i915#4215] / [i915#5190])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg1-7:          [SKIP][31] ([i915#4212] / [i915#4215]) -> [SKIP][32] ([i915#4215])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg2-9:          [SKIP][33] ([i915#4212] / [i915#4215] / [i915#5190]) -> [SKIP][34] ([i915#4215] / [i915#5190])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg1-6:          [SKIP][35] ([i915#12311] / [i915#4212] / [i915#4215]) -> [SKIP][36] ([i915#12311] / [i915#4215])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg2-11:         [SKIP][37] ([i915#4212] / [i915#4215] / [i915#5190]) -> [SKIP][38] ([i915#4215] / [i915#5190])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/bat-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg2-14:         [SKIP][39] ([i915#4212] / [i915#4215] / [i915#5190]) -> [SKIP][40] ([i915#4215] / [i915#5190])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg2-14/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/bat-dg2-14/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311
  [i915#12829]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12829
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#12915]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12915
  [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9792]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792


Build changes
-------------

  * Linux: CI_DRM_15725 -> Patchwork_140926v2

  CI-20190529: 20190529
  CI_DRM_15725: e46649e7764a9f6868ccbcba7b8b23b413303380 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8118: 17707095f1e5d3c30f463b43022f01c0160579b6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_140926v2: e46649e7764a9f6868ccbcba7b8b23b413303380 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/index.html
