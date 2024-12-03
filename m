Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FA19E1760
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 10:26:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D03B510E9A4;
	Tue,  3 Dec 2024 09:26:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56CE210E9A4;
 Tue,  3 Dec 2024 09:26:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_series_starting_with_=5B1?=
 =?utf-8?q?/6=5D_drm/i915/wm=3A_Initialize_max=5Flatency_variable_to_appropr?=
 =?utf-8?q?iate_value?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 03 Dec 2024 09:26:21 -0000
Message-ID: <173321798134.1964850.16759787165286165202@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241203084706.2126189-1-suraj.kandpal@intel.com>
In-Reply-To: <20241203084706.2126189-1-suraj.kandpal@intel.com>
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

Series: series starting with [1/6] drm/i915/wm: Initialize max_latency variable to appropriate value
URL   : https://patchwork.freedesktop.org/series/142033/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15775 -> Patchwork_142033v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142033v1/index.html

Participating hosts (42 -> 41)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_142033v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-rpls-4:         [PASS][1] -> [FAIL][2] ([i915#12903])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15775/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142033v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
    - fi-tgl-1115g4:      [PASS][3] -> [FAIL][4] ([i915#12903])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15775/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142033v1/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html

  * igt@kms_flip@basic-plain-flip@a-dp1:
    - fi-kbl-7567u:       [PASS][5] -> [DMESG-WARN][6] ([i915#12920]) +1 other test dmesg-warn
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15775/fi-kbl-7567u/igt@kms_flip@basic-plain-flip@a-dp1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142033v1/fi-kbl-7567u/igt@kms_flip@basic-plain-flip@a-dp1.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - fi-pnv-d510:        NOTRUN -> [SKIP][7] +36 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142033v1/fi-pnv-d510/igt@kms_psr@psr-primary-mmap-gtt.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - fi-pnv-d510:        [ABORT][8] ([i915#13203]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15775/fi-pnv-d510/igt@i915_module_load@load.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142033v1/fi-pnv-d510/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg1-7:          [FAIL][10] ([i915#12903]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15775/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142033v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [ABORT][12] ([i915#12061]) -> [PASS][13] +1 other test pass
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15775/bat-mtlp-8/igt@i915_selftest@live.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142033v1/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-adlp-6:         [ABORT][14] ([i915#9413]) -> [PASS][15] +1 other test pass
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15775/bat-adlp-6/igt@i915_selftest@live.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142033v1/bat-adlp-6/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [ABORT][16] ([i915#12061]) -> [PASS][17] +1 other test pass
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15775/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142033v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-dg2-11:         [SKIP][18] ([i915#9197]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15775/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142033v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12920
  [i915#13203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15775 -> Patchwork_142033v1

  CI-20190529: 20190529
  CI_DRM_15775: 4de82d50b8de6a278c1483a7f76ae830c89d1824 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8134: 027fbf68a00630d7bb8ae200c620296e2bad971d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142033v1: 4de82d50b8de6a278c1483a7f76ae830c89d1824 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142033v1/index.html
