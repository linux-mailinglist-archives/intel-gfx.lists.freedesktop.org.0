Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D531E9D8673
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2024 14:31:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB1F510E659;
	Mon, 25 Nov 2024 13:31:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AF2510E28F;
 Mon, 25 Nov 2024 13:31:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/ddi=3A_clarify_i?=
 =?utf-8?q?ntel=5Fddi=5Fconnector=5Fget=5Fhw=5Fstate=28=29_for_DP_MST?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Nov 2024 13:31:06 -0000
Message-ID: <173254146652.2830354.556775084917022077@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241125120959.2366419-1-jani.nikula@intel.com>
In-Reply-To: <20241125120959.2366419-1-jani.nikula@intel.com>
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

Series: drm/i915/ddi: clarify intel_ddi_connector_get_hw_state() for DP MST
URL   : https://patchwork.freedesktop.org/series/141749/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15738 -> Patchwork_141749v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_141749v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_141749v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_141749v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - bat-apl-1:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  
Known issues
------------

  Here are the changes found in Patchwork_141749v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [PASS][3] -> [INCOMPLETE][4] ([i915#12904]) +1 other test incomplete
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-apl-1/igt@dmabuf@all-tests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@i915_pm_rpm@module-reload:
    - bat-jsl-3:          [PASS][5] -> [INCOMPLETE][6] ([i915#12434])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-jsl-3/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-jsl-3/igt@i915_pm_rpm@module-reload.html
    - fi-cfl-guc:         [PASS][7] -> [FAIL][8] ([i915#12903])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][9] -> [ABORT][10] ([i915#12061]) +1 other test abort
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-mtlp-8/igt@i915_selftest@live.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-adlp-9:         [PASS][11] -> [ABORT][12] ([i915#9413]) +1 other test abort
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-adlp-9/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-adlp-9/igt@i915_selftest@live.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-dg2-11:         [PASS][13] -> [SKIP][14] ([i915#9197])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - bat-adls-6:         [FAIL][15] ([i915#12903]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-adls-6/igt@i915_pm_rpm@module-reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-adls-6/igt@i915_pm_rpm@module-reload.html
    - bat-rpls-4:         [FAIL][17] ([i915#12903]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [ABORT][19] ([i915#12061]) -> [PASS][20] +1 other test pass
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-6:         [ABORT][21] ([i915#12061]) -> [PASS][22] +1 other test pass
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12434
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15738 -> Patchwork_141749v1

  CI-20190529: 20190529
  CI_DRM_15738: b21f1413ea1860e80fd278112e820e6dadfc9df9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8124: 8124
  Patchwork_141749v1: b21f1413ea1860e80fd278112e820e6dadfc9df9 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/index.html
