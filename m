Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA461A01ED3
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 06:30:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A348E10E581;
	Mon,  6 Jan 2025 05:30:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D880210E581;
 Mon,  6 Jan 2025 05:30:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_SSC_enablement_in_port_cl?=
 =?utf-8?q?ock_programming?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 06 Jan 2025 05:30:39 -0000
Message-ID: <173614143987.7565.15633157886958527863@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250106040821.251114-1-suraj.kandpal@intel.com>
In-Reply-To: <20250106040821.251114-1-suraj.kandpal@intel.com>
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

Series: SSC enablement in port clock programming
URL   : https://patchwork.freedesktop.org/series/143127/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15904 -> Patchwork_143127v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_143127v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_143127v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143127v1/index.html

Participating hosts (38 -> 38)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_143127v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload:
    - bat-arls-5:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15904/bat-arls-5/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143127v1/bat-arls-5/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-11:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15904/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143127v1/bat-dg2-11/igt@i915_pm_rpm@module-reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_143127v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - fi-pnv-d510:        NOTRUN -> [ABORT][5] ([i915#13203])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143127v1/fi-pnv-d510/igt@i915_module_load@load.html

  * igt@i915_module_load@reload:
    - fi-kbl-7567u:       [PASS][6] -> [DMESG-WARN][7] ([i915#11621] / [i915#180] / [i915#1982]) +1 other test dmesg-warn
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15904/fi-kbl-7567u/igt@i915_module_load@reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143127v1/fi-kbl-7567u/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - bat-adls-6:         [PASS][8] -> [FAIL][9] ([i915#13401])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15904/bat-adls-6/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143127v1/bat-adls-6/igt@i915_pm_rpm@module-reload.html
    - bat-dg1-7:          [PASS][10] -> [FAIL][11] ([i915#13401])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15904/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143127v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7567u:       [PASS][12] -> [DMESG-WARN][13] ([i915#11621]) +81 other tests dmesg-warn
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15904/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143127v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [PASS][14] -> [DMESG-FAIL][15] ([i915#13393]) +1 other test dmesg-fail
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15904/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143127v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][16] -> [SKIP][17] ([i915#9197]) +3 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15904/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143127v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-7567u:       [PASS][18] -> [DMESG-WARN][19] ([i915#11621] / [i915#180]) +51 other tests dmesg-warn
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15904/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143127v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [DMESG-FAIL][20] ([i915#13393]) -> [PASS][21] +1 other test pass
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15904/bat-mtlp-8/igt@i915_selftest@live.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143127v1/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - {bat-mtlp-9}:       [DMESG-FAIL][22] ([i915#13393]) -> [PASS][23] +1 other test pass
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15904/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143127v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#11621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621
  [i915#13203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203
  [i915#13393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393
  [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15904 -> Patchwork_143127v1

  CI-20190529: 20190529
  CI_DRM_15904: 856baaf960db044e0ce5e3f5d04d35a7b9879837 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8174: d2004b0623dbccd08502525849b4eef881aa199e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_143127v1: 856baaf960db044e0ce5e3f5d04d35a7b9879837 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143127v1/index.html
