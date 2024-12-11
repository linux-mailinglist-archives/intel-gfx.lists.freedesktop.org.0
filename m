Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EF99ED155
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 17:25:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDEB510EBA3;
	Wed, 11 Dec 2024 16:25:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74C2B10EB92;
 Wed, 11 Dec 2024 16:25:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/mst=3A_use_intel?=
 =?utf-8?q?=5Fdp=5Fcompute=5Fconfig=5Flimits=28=29_for_DP_MST?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2024 16:25:33 -0000
Message-ID: <173393433347.1259377.4618173335939862871@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241211144310.701895-1-jani.nikula@intel.com>
In-Reply-To: <20241211144310.701895-1-jani.nikula@intel.com>
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

Series: drm/i915/mst: use intel_dp_compute_config_limits() for DP MST
URL   : https://patchwork.freedesktop.org/series/142422/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15821 -> Patchwork_142422v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142422v1/index.html

Participating hosts (46 -> 45)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_142422v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests:
    - fi-pnv-d510:        NOTRUN -> [INCOMPLETE][1] ([i915#12904]) +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142422v1/fi-pnv-d510/igt@dmabuf@all-tests.html
    - bat-apl-1:          [PASS][2] -> [INCOMPLETE][3] ([i915#12904]) +1 other test incomplete
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15821/bat-apl-1/igt@dmabuf@all-tests.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142422v1/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@i915_selftest@live:
    - bat-jsl-3:          [PASS][4] -> [INCOMPLETE][5] ([i915#13241])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15821/bat-jsl-3/igt@i915_selftest@live.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142422v1/bat-jsl-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [PASS][6] -> [ABORT][7] ([i915#12061]) +1 other test abort
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15821/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142422v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - fi-pnv-d510:        NOTRUN -> [SKIP][8] +36 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142422v1/fi-pnv-d510/igt@kms_psr@psr-primary-mmap-gtt.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - fi-pnv-d510:        [ABORT][9] ([i915#13203]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15821/fi-pnv-d510/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142422v1/fi-pnv-d510/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-rpls-4:         [FAIL][11] ([i915#12903]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15821/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142422v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@workarounds:
    - {bat-mtlp-9}:       [ABORT][13] ([i915#12061]) -> [PASS][14] +1 other test pass
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15821/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142422v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-apl-1:          [DMESG-WARN][15] ([i915#12921]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15821/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142422v1/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-1:
    - bat-apl-1:          [DMESG-WARN][17] -> [PASS][18] +2 other tests pass
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15821/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142422v1/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#12921]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12921
  [i915#13203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203
  [i915#13241]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13241


Build changes
-------------

  * Linux: CI_DRM_15821 -> Patchwork_142422v1

  CI-20190529: 20190529
  CI_DRM_15821: 64679a558442b0191dff88abe841d13ee7e0b229 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8148: 5362e7ac965c3768c60848e266294a4c6172241c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142422v1: 64679a558442b0191dff88abe841d13ee7e0b229 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142422v1/index.html
