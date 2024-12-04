Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D419E39B6
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 13:18:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FD3710E20F;
	Wed,  4 Dec 2024 12:18:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E248310E20F;
 Wed,  4 Dec 2024 12:18:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_conve?=
 =?utf-8?q?rt_intel=5Fdisplay=5Fdriver=2E=5Bch=5D_to_struct_intel=5Fdisplay?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 04 Dec 2024 12:18:45 -0000
Message-ID: <173331472592.2454775.3906889735799170951@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241204102150.2223455-1-jani.nikula@intel.com>
In-Reply-To: <20241204102150.2223455-1-jani.nikula@intel.com>
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

Series: drm/i915/display: convert intel_display_driver.[ch] to struct intel_display
URL   : https://patchwork.freedesktop.org/series/142101/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15785 -> Patchwork_142101v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142101v1/index.html

Participating hosts (44 -> 43)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_142101v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_module_load@load:
    - bat-twl-1:          [DMESG-WARN][1] ([i915#1982]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/bat-twl-1/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142101v1/bat-twl-1/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-arls-5:         [DMESG-WARN][3] ([i915#4423]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/bat-arls-5/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142101v1/bat-arls-5/igt@i915_pm_rpm@module-reload.html
    - bat-dg1-7:          [FAIL][5] ([i915#12903]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142101v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
    - bat-rpls-4:         [FAIL][7] ([i915#12903]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142101v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [ABORT][9] ([i915#12061]) -> [PASS][10] +1 other test pass
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/bat-mtlp-8/igt@i915_selftest@live.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142101v1/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-twl-1:          [ABORT][11] ([i915#12435] / [i915#12919]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/bat-twl-1/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142101v1/bat-twl-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@requests:
    - bat-twl-1:          [ABORT][13] ([i915#12919]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/bat-twl-1/igt@i915_selftest@live@requests.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142101v1/bat-twl-1/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [ABORT][15] ([i915#12061]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142101v1/bat-arls-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - {bat-mtlp-9}:       [FAIL][17] ([i915#13093]) -> [PASS][18] +1 other test pass
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142101v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - fi-kbl-7567u:       [DMESG-WARN][19] ([i915#12926]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/fi-kbl-7567u/igt@kms_pipe_crc_basic@hang-read-crc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142101v1/fi-kbl-7567u/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1:
    - fi-kbl-7567u:       [DMESG-WARN][21] ([i915#12920]) -> [PASS][22] +2 other tests pass
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/fi-kbl-7567u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142101v1/fi-kbl-7567u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [SKIP][23] ([i915#9197]) -> [PASS][24] +3 other tests pass
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15785/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142101v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
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
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15785 -> Patchwork_142101v1

  CI-20190529: 20190529
  CI_DRM_15785: bbf9bd81de0b459ec7e75c52bd1738963fd14067 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8137: 8137
  Patchwork_142101v1: bbf9bd81de0b459ec7e75c52bd1738963fd14067 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142101v1/index.html
