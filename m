Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2ABE9D4CA9
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2024 13:18:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34CBE10E3F3;
	Thu, 21 Nov 2024 12:18:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F65110E3F3;
 Thu, 21 Nov 2024 12:18:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915=3A_add_GEM=5FWAR?=
 =?utf-8?q?N=5FON_to_remap=5Fio=5Fsg_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Karas" <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Nov 2024 12:18:56 -0000
Message-ID: <173219153660.1108311.12524906816271524532@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <fzn3jb4cdylc7fj4og2hgy73onelzurxmmsrzqix6yswms4ite@d74hat7krnm6>
In-Reply-To: <fzn3jb4cdylc7fj4og2hgy73onelzurxmmsrzqix6yswms4ite@d74hat7krnm6>
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

Series: drm/i915: add GEM_WARN_ON to remap_io_sg (rev2)
URL   : https://patchwork.freedesktop.org/series/140486/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15725 -> Patchwork_140486v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_140486v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_140486v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/index.html

Participating hosts (46 -> 44)
------------------------------

  Missing    (2): fi-glk-j4005 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_140486v2:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-arlh-3:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-arlh-3/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-arlh-3/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live:
    - bat-arlh-2:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-arlh-2/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-arlh-2/igt@i915_selftest@live.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp1:
    - fi-kbl-7567u:       [PASS][5] -> [DMESG-WARN][6] +1 other test dmesg-warn
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-2:
    - fi-cfl-8109u:       [PASS][7] -> [DMESG-WARN][8] +2 other tests dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-2.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live:
    - {bat-mtlp-9}:       [ABORT][9] ([i915#12829]) -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-mtlp-9/igt@i915_selftest@live.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-mtlp-9/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - {bat-mtlp-9}:       [ABORT][11] ([i915#12915]) -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_140486v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-adls-6:         [PASS][13] -> [FAIL][14] ([i915#12903])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-adls-6/igt@i915_pm_rpm@module-reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-adls-6/igt@i915_pm_rpm@module-reload.html
    - bat-dg1-7:          [PASS][15] -> [FAIL][16] ([i915#12903])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][17] -> [ABORT][18] ([i915#12061])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-mtlp-8/igt@i915_selftest@live.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-twl-1:          [PASS][19] -> [ABORT][20] ([i915#12919]) +1 other test abort
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-twl-1/igt@i915_selftest@live.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-twl-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-2:         [PASS][21] -> [ABORT][22] ([i915#12061])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-arlh-2/igt@i915_selftest@live@workarounds.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-arlh-2/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-8:         [PASS][23] -> [ABORT][24] ([i915#12061] / [i915#12915])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-mtlp-8/igt@i915_selftest@live@workarounds.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-mtlp-8/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [INCOMPLETE][25] ([i915#12904]) -> [PASS][26] +1 other test pass
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-apl-1/igt@dmabuf@all-tests.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@i915_pm_rpm@module-reload:
    - bat-rpls-4:         [FAIL][27] ([i915#12903]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-arls-5:         [ABORT][29] ([i915#12829]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-arls-5/igt@i915_selftest@live.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-arls-5/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [ABORT][31] ([i915#12061]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-arls-5/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-dg2-9:          [SKIP][33] ([i915#4212] / [i915#5190]) -> [SKIP][34] ([i915#5190])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-mtlp-6:         [SKIP][35] ([i915#4212] / [i915#5190] / [i915#9792]) -> [SKIP][36] ([i915#5190] / [i915#9792])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-dg2-11:         [SKIP][37] ([i915#4212] / [i915#5190]) -> [SKIP][38] ([i915#5190])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-dg2-14:         [SKIP][39] ([i915#4212] / [i915#5190]) -> [SKIP][40] ([i915#5190])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg2-14/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-dg2-14/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-mtlp-8:         [SKIP][41] ([i915#4212] / [i915#5190]) -> [SKIP][42] ([i915#5190])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-dg2-8:          [SKIP][43] ([i915#4212] / [i915#5190]) -> [SKIP][44] ([i915#5190])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg2-8:          [SKIP][45] ([i915#4212] / [i915#4215] / [i915#5190]) -> [SKIP][46] ([i915#4215] / [i915#5190])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg1-7:          [SKIP][47] ([i915#4212] / [i915#4215]) -> [SKIP][48] ([i915#4215])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg2-9:          [SKIP][49] ([i915#4212] / [i915#4215] / [i915#5190]) -> [SKIP][50] ([i915#4215] / [i915#5190])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg1-6:          [SKIP][51] ([i915#12311] / [i915#4212] / [i915#4215]) -> [SKIP][52] ([i915#12311] / [i915#4215])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg2-11:         [SKIP][53] ([i915#4212] / [i915#4215] / [i915#5190]) -> [SKIP][54] ([i915#4215] / [i915#5190])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg2-14:         [SKIP][55] ([i915#4212] / [i915#4215] / [i915#5190]) -> [SKIP][56] ([i915#4215] / [i915#5190])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/bat-dg2-14/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/bat-dg2-14/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  
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
  [i915#9792]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792


Build changes
-------------

  * Linux: CI_DRM_15725 -> Patchwork_140486v2

  CI-20190529: 20190529
  CI_DRM_15725: e46649e7764a9f6868ccbcba7b8b23b413303380 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8118: 17707095f1e5d3c30f463b43022f01c0160579b6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_140486v2: e46649e7764a9f6868ccbcba7b8b23b413303380 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v2/index.html
