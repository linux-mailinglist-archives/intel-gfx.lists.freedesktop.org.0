Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1FD9FE966
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2024 18:25:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F35C10E390;
	Mon, 30 Dec 2024 17:25:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8205C10E390;
 Mon, 30 Dec 2024 17:25:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/display=3A_handl?=
 =?utf-8?q?e_hdmi_connector_init_failures=2C_and_no_HDMI/DP_cases_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Dec 2024 17:25:33 -0000
Message-ID: <173557953352.980287.13291049217404697119@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <cover.1735568047.git.jani.nikula@intel.com>
In-Reply-To: <cover.1735568047.git.jani.nikula@intel.com>
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

Series: drm/i915/display: handle hdmi connector init failures, and no HDMI/DP cases (rev6)
URL   : https://patchwork.freedesktop.org/series/142119/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15892 -> Patchwork_142119v6
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_142119v6 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_142119v6, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v6/index.html

Participating hosts (41 -> 39)
------------------------------

  Missing    (2): bat-twl-1 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_142119v6:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@module-reload:
    - bat-adls-6:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-adls-6/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v6/bat-adls-6/igt@i915_pm_rpm@module-reload.html

  * igt@kms_flip@basic-flip-vs-dpms@a-dp1:
    - fi-cfl-8109u:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v6/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_142119v6 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests:
    - fi-pnv-d510:        NOTRUN -> [INCOMPLETE][5] ([i915#12904]) +1 other test incomplete
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v6/fi-pnv-d510/igt@dmabuf@all-tests.html

  * igt@fbdev@info:
    - fi-bsw-nick:        NOTRUN -> [SKIP][6] ([i915#1849])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v6/fi-bsw-nick/igt@fbdev@info.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-bsw-nick:        NOTRUN -> [SKIP][7] +42 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v6/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg1-7:          [PASS][8] -> [FAIL][9] ([i915#13401])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v6/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
    - bat-rpls-4:         [PASS][10] -> [FAIL][11] ([i915#13401])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v6/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-arlh-3:         [PASS][12] -> [DMESG-FAIL][13] ([i915#12435] / [i915#13393])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-arlh-3/igt@i915_selftest@live.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v6/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][14] -> [DMESG-FAIL][15] ([i915#13393])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v6/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-arls-5:         [PASS][16] -> [DMESG-FAIL][17] ([i915#13393]) +1 other test dmesg-fail
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v6/bat-arls-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-cfl-8109u:       [PASS][18] -> [DMESG-WARN][19] ([i915#12914])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v6/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_pipe_crc_basic@nonblocking-crc:
    - fi-kbl-7567u:       [PASS][20] -> [DMESG-WARN][21] ([i915#12914]) +3 other tests dmesg-warn
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/fi-kbl-7567u/igt@kms_pipe_crc_basic@nonblocking-crc.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v6/fi-kbl-7567u/igt@kms_pipe_crc_basic@nonblocking-crc.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][22] -> [SKIP][23] ([i915#9197]) +2 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v6/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - fi-pnv-d510:        NOTRUN -> [SKIP][24] +31 other tests skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v6/fi-pnv-d510/igt@kms_psr@psr-primary-mmap-gtt.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-rpls-4:         [DMESG-WARN][25] ([i915#13400]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v6/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live:
    - bat-adlp-9:         [ABORT][27] ([i915#13399]) -> [PASS][28] +1 other test pass
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-adlp-9/igt@i915_selftest@live.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v6/bat-adlp-9/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [DMESG-FAIL][29] ([i915#13393]) -> [PASS][30] +1 other test pass
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v6/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
    - {bat-arls-6}:       [DMESG-FAIL][31] ([i915#13393]) -> [PASS][32] +1 other test pass
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v6/bat-arls-6/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [ABORT][33] ([i915#13169]) -> [SKIP][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v6/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#12914]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12914
  [i915#13169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169
  [i915#13393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393
  [i915#13399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399
  [i915#13400]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400
  [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15892 -> Patchwork_142119v6

  CI-20190529: 20190529
  CI_DRM_15892: 08bd590935a5258ffd79355c59adffd72fb2c642 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8172: 9112581619aa198fa03041d5c7e18e02f42ac00f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142119v6: 08bd590935a5258ffd79355c59adffd72fb2c642 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v6/index.html
