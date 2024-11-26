Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 866BB9D9108
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2024 05:32:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B6F910E09F;
	Tue, 26 Nov 2024 04:32:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E374810E09F;
 Tue, 26 Nov 2024 04:31:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/ddi=3A_clarify_i?=
 =?utf-8?q?ntel=5Fddi=5Fconnector=5Fget=5Fhw=5Fstate=28=29_for_DP_MST?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2024 04:31:58 -0000
Message-ID: <173259551894.3169336.14092812221379015844@b555e5b46a47>
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
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15738 -> Patchwork_141749v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_141749v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [PASS][1] -> [INCOMPLETE][2] ([i915#12904]) +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-apl-1/igt@dmabuf@all-tests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@i915_pm_rpm@module-reload:
    - bat-jsl-3:          [PASS][3] -> [INCOMPLETE][4] ([i915#12434])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-jsl-3/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-jsl-3/igt@i915_pm_rpm@module-reload.html
    - fi-cfl-guc:         [PASS][5] -> [FAIL][6] ([i915#12903])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][7] -> [ABORT][8] ([i915#12061]) +1 other test abort
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-mtlp-8/igt@i915_selftest@live.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-adlp-9:         [PASS][9] -> [ABORT][10] ([i915#9413]) +1 other test abort
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-adlp-9/igt@i915_selftest@live.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-adlp-9/igt@i915_selftest@live.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - bat-apl-1:          [PASS][11] -> [DMESG-WARN][12] ([i915#12918])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

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
  [i915#12918]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12918
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
