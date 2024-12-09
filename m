Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB089E98C5
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 15:28:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DDF710E754;
	Mon,  9 Dec 2024 14:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15A6B10E754;
 Mon,  9 Dec 2024 14:28:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_DP_DSC_min/max_src_bpc_fi?=
 =?utf-8?q?xes_=28rev10=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 09 Dec 2024 14:28:14 -0000
Message-ID: <173375449407.490008.15124599650814556056@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
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

Series: DP DSC min/max src bpc fixes (rev10)
URL   : https://patchwork.freedesktop.org/series/125571/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15785 -> Patchwork_125571v10
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v10/index.html

Participating hosts (44 -> 43)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_125571v10 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][1] -> [ABORT][2] ([i915#12061]) +1 other test abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v10/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  * igt@kms_flip@basic-flip-vs-modeset@c-dp1:
    - fi-kbl-7567u:       [PASS][3] -> [DMESG-WARN][4] ([i915#12926]) +1 other test dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v10/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - bat-twl-1:          [DMESG-WARN][5] ([i915#1982]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/bat-twl-1/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v10/bat-twl-1/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-arls-5:         [DMESG-WARN][7] ([i915#4423]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/bat-arls-5/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v10/bat-arls-5/igt@i915_pm_rpm@module-reload.html
    - bat-rpls-4:         [FAIL][9] ([i915#12903]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v10/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [ABORT][11] ([i915#12061]) -> [PASS][12] +1 other test pass
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/bat-mtlp-8/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v10/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-twl-1:          [ABORT][13] ([i915#12435] / [i915#12919]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/bat-twl-1/igt@i915_selftest@live.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v10/bat-twl-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@requests:
    - bat-twl-1:          [ABORT][15] ([i915#12919]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/bat-twl-1/igt@i915_selftest@live@requests.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v10/bat-twl-1/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [ABORT][17] ([i915#12061]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v10/bat-arls-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - {bat-mtlp-9}:       [FAIL][19] ([i915#13093]) -> [PASS][20] +1 other test pass
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v10/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - fi-kbl-7567u:       [DMESG-WARN][21] ([i915#12926]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/fi-kbl-7567u/igt@kms_pipe_crc_basic@hang-read-crc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v10/fi-kbl-7567u/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1:
    - fi-kbl-7567u:       [DMESG-WARN][23] ([i915#12920]) -> [PASS][24] +2 other tests pass
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/fi-kbl-7567u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v10/fi-kbl-7567u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
  [i915#12920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12920
  [i915#12926]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12926
  [i915#13093]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13093
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423


Build changes
-------------

  * Linux: CI_DRM_15785 -> Patchwork_125571v10

  CI-20190529: 20190529
  CI_DRM_15785: bbf9bd81de0b459ec7e75c52bd1738963fd14067 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8137: 8137
  Patchwork_125571v10: bbf9bd81de0b459ec7e75c52bd1738963fd14067 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v10/index.html
